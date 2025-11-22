import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';

part 'deduplicate.freezed.dart';
part 'deduplicate.g.dart';

/// Represents a group of duplicate files that share the same content hash.
@freezed
class DuplicateGroup with _$DuplicateGroup {
const factory DuplicateGroup({
/// The content hash that identifies this duplicate group
required String contentHash,

/// The size in bytes of the files in this group
required int sizeBytes,

/// List of file entries that are duplicates of each other
@Default(<String>[]) List<String> fileIds,

/// Optional metadata about when this duplicate was detected
DateTime? detectedAt,
}) = _DuplicateGroup;

factory DuplicateGroup.fromJson(Map<String, dynamic> json) =>
_$DuplicateGroupFromJson(json);
}

/// Task for detecting and optionally removing duplicate files in the filesystem.
@freezed
class DeduplicateTask with _$DeduplicateTask {
const DeduplicateTask._();

const factory DeduplicateTask({
/// The scope of the deduplication operation
required String scopeFolderId,

/// Matching criteria for detecting duplicates
@Default(DuplicateMatchingCriteria.hash)
DuplicateMatchingCriteria matchingCriteria,

/// Whether to automatically remove duplicates or just report them
@Default(false) bool removeDuplicates,

/// Which files to keep when removing duplicates (keep first, newest, etc.)
@Default(KeepFileStrategy.keepFirst)
KeepFileStrategy keepStrategy,

/// Minimum file size to consider for deduplication (bytes)
@Default(0) int minFileSize,

/// File kinds to include in deduplication (empty means all)
@Default(<FileKind>[]) List<FileKind> includedKinds,
}) = _DeduplicateTask;

factory DeduplicateTask.fromJson(Map<String, dynamic> json) =>
_$DeduplicateTaskFromJson(json);

/// Executes the deduplication task
Future<DeduplicateResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
// Validate scope folder exists and is actually a folder
final scopeFolder = await fs.getEntry(scopeFolderId);
if (scopeFolder == null) {
throw ArgumentError('Scope folder with id $scopeFolderId not found');
}
if (scopeFolder is! FsFolder) {
throw ArgumentError('Scope entry must be a folder, found ${scopeFolder.kind}');
}

// Collect all files in scope that match criteria
final candidateFiles = await _collectCandidateFiles(fs, scopeFolder);

// Group files by matching criteria
final duplicateGroups = await _findDuplicateGroups(fs, candidateFiles, cancel);

// Remove duplicates if requested
final removalResults = removeDuplicates
? await _removeDuplicates(fs, duplicateGroups, cancel)
: <String, String>{};

return DeduplicateResult(
scannedFiles: candidateFiles.length,
duplicateGroups: duplicateGroups,
removedFiles: removalResults,
totalReclaimedBytes: removalResults.isNotEmpty
? duplicateGroups.fold<int>(0, (sum, group) => sum + (group.sizeBytes * (group.fileIds.length - 1)))
: 0,
);
}

/// Collects files that match the deduplication criteria
Future<List<FsFile>> _collectCandidateFiles(
FsRepository fs,
FsFolder scopeFolder,
) async {
final allFiles = <FsFile>[];

// Recursively traverse folder tree
await _traverseFolder(fs, scopeFolder, (entry) {
if (entry is FsFile &&
entry.base.sizeBytes != null &&
entry.base.sizeBytes! >= minFileSize &&
(includedKinds.isEmpty || includedKinds.contains(entry.base.kind))) {
allFiles.add(entry);
}
});

return allFiles;
}

/// Recursively traverses a folder and its subfolders
Future<void> _traverseFolder(
FsRepository fs,
FsFolder folder,
void Function(FsEntry) processEntry,
) async {
for (final childRef in folder.data.children) {
final child = await fs.getEntry(childRef.id);
if (child != null) {
processEntry(child);
if (child is FsFolder) {
await _traverseFolder(fs, child, processEntry);
}
}
}
}

/// Finds groups of duplicate files based on matching criteria
Future<List<DuplicateGroup>> _findDuplicateGroups(
FsRepository fs,
List<FsFile> files,
CancellationToken? cancel,
) async {
final groupsByKey = <String, DuplicateGroup>{};

for (final file in files) {
cancel?.throwIfCancellationRequested();

final groupKey = await _getGroupKey(fs, file);
if (groupKey != null) {
groupsByKey.update(
groupKey,
(group) => group.copyWith(fileIds: [...group.fileIds, file.id]),
ifAbsent: () => DuplicateGroup(
contentHash: matchingCriteria == DuplicateMatchingCriteria.hash ? groupKey : '',
sizeBytes: file.base.sizeBytes ?? 0,
fileIds: [file.id],
detectedAt: DateTime.now(),
),
);
}
}

// Return only groups with actual duplicates (2+ files)
return groupsByKey.values
.where((group) => group.fileIds.length > 1)
.toList();
}

/// Gets the grouping key for a file based on matching criteria
Future<String?> _getGroupKey(FsRepository fs, FsFile file) async {
switch (matchingCriteria) {
case DuplicateMatchingCriteria.hash:
final hash = await fs.computeFileHash(file.id, 'sha256');
return hash;
case DuplicateMatchingCriteria.sizeAndName:
return '${file.base.sizeBytes}_${file.base.name}';
case DuplicateMatchingCriteria.sizeAndExtension:
return '${file.base.sizeBytes}_${file.base.extension}';
case DuplicateMatchingCriteria.exactMatch:
// For exact match, we need both hash and metadata to be identical
final hash = await fs.computeFileHash(file.id, 'sha256');
return '${hash}_${file.base.sizeBytes}_${file.base.name}';
}
}

/// Removes duplicate files according to the keep strategy
Future<Map<String, String>> _removeDuplicates(
FsRepository fs,
List<DuplicateGroup> groups,
CancellationToken? cancel,
) async {
final removedFiles = <String, String>{};

for (final group in groups) {
cancel?.throwIfCancellationRequested();

// Determine which file to keep
final filesToKeep = await _determineFilesToKeep(fs, group);
final filesToRemove = group.fileIds.where((id) => !filesToKeep.contains(id));

// Remove duplicates
for (final fileId in filesToRemove) {
try {
await fs.removeEntry(fileId, softDelete: true);
removedFiles[fileId] = filesToKeep.first; // Map removed -> kept
} catch (e) {
// Log error but continue with other files
print('Failed to remove duplicate file $fileId: $e');
}
}
}

return removedFiles;
}

/// Determines which files to keep based on the keep strategy
Future<Set<String>> _determineFilesToKeep(
FsRepository fs,
DuplicateGroup group,
) async {
switch (keepStrategy) {
case KeepFileStrategy.keepFirst:
return {group.fileIds.first};
case KeepFileStrategy.keepNewest:
final files = await Future.wait(group.fileIds.map(fs.getEntry));
final newest = files
.whereType<FsFile>()
.fold<FsFile?>(null, (newest, file) {
final currentTime = file.base.timestamps?.updatedAt ?? file.base.timestamps?.createdAt;
final newestTime = newest?.base.timestamps?.updatedAt ?? newest?.base.timestamps?.createdAt;
return (currentTime?.isAfter(newestTime ?? DateTime(0)) ?? false) ? file : newest;
});
return newest != null ? {newest.id} : {group.fileIds.first};
case KeepFileStrategy.keepOldest:
final files = await Future.wait(group.fileIds.map(fs.getEntry));
final oldest = files
.whereType<FsFile>()
.fold<FsFile?>(null, (oldest, file) {
final currentTime = file.base.timestamps?.createdAt;
final oldestTime = oldest?.base.timestamps?.createdAt;
return (currentTime?.isBefore(oldestTime ?? DateTime.now()) ?? false) ? file : oldest;
});
return oldest != null ? {oldest.id} : {group.fileIds.first};
case KeepFileStrategy.keepAll:
return group.fileIds.toSet();
}
}
}

/// Criteria for matching duplicate files
enum DuplicateMatchingCriteria {
hash,           // Match by content hash
sizeAndName,    // Match by size and filename
sizeAndExtension, // Match by size and file extension
exactMatch,     // Match by hash, size, and name
}

/// Strategy for which files to keep when removing duplicates
enum KeepFileStrategy {
keepFirst,      // Keep the first file encountered
keepNewest,     // Keep the most recently modified file
keepOldest,     // Keep the oldest file
keepAll,        // Don't remove any files (just report)
}

/// Result of a deduplication operation
@freezed
class DeduplicateResult with _$DeduplicateResult {
const factory DeduplicateResult({
/// Number of files scanned during deduplication
required int scannedFiles,

/// Groups of duplicate files found
@Default(<DuplicateGroup>[]) List<DuplicateGroup> duplicateGroups,

/// Mapping of removed file IDs to kept file IDs (if removal was performed)
@Default(<String, String>{}) Map<String, String> removedFiles,

/// Total bytes that would be reclaimed by removing duplicates
required int totalReclaimedBytes,

/// When the deduplication operation completed
DateTime? completedAt,
}) = _DeduplicateResult;

factory DeduplicateResult.fromJson(Map<String, dynamic> json) =>
_$DeduplicateResultFromJson(json);
}

/// Abstract filesystem repository interface for dependency injection
abstract class FsRepository {
Future<FsEntry?> getEntry(String id);
Future<String> computeFileHash(String fileId, String algorithm);
Future<void> removeEntry(String id, {bool softDelete});
// Other filesystem operations...
}

/// Cancellation token for cooperative task cancellation
class CancellationToken {
bool _isCancelled = false;

bool get isCancelled => _isCancelled;

void cancel() => _isCancelled = true;

void throwIfCancellationRequested() {
if (_isCancelled) {
throw StateError('Operation cancelled');
}
}
}
