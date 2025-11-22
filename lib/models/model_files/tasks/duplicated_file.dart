import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';


part 'duplicated_file.freezed.dart';
part 'duplicated_file.g.dart';

/// Represents a group of files that are duplicates of each other.
/// This is a data model for grouping duplicate files by content hash.
@freezed
class DuplicatedFileGroup with _$DuplicatedFileGroup {
const DuplicatedFileGroup._();

const factory DuplicatedFileGroup({
/// Content hash that identifies this duplicate group
required String contentHash,

/// Size in bytes (all files should have same size)
required int sizeBytes,

/// List of file entries that are duplicates
@Default(<FsEntry>[]) List<FsEntry> duplicates,

/// Optional metadata about when this duplicate group was detected
DateTime? detectedAt,
}) = _DuplicatedFileGroup;

factory DuplicatedFileGroup.fromJson(Map<String, dynamic> json) =>
_$DuplicatedFileGroupFromJson(json);

/// Convenience getters
int get count => duplicates.length;

/// Get the primary/original file (first in list by default)
FsEntry? get primaryFile => duplicates.isNotEmpty ? duplicates.first : null;

/// Check if a specific file ID is in this duplicate group
bool containsFile(String fileId) =>
duplicates.any((file) => file.id == fileId);

/// Get all file IDs in this duplicate group
List<String> get fileIds => duplicates.map((file) => file.id).toList();
}

/// Task for detecting and managing duplicate files
@freezed
class DuplicatedFileTask with _$DuplicatedFileTask {
const DuplicatedFileTask._();

const factory DuplicatedFileTask({
/// Scope of search for duplicates (folder ID or null for entire storage)
required String? scopeFolderId,

/// Minimum file size to consider for duplicate detection (bytes)
@Default(0) int minSizeBytes,

/// Hash algorithm to use for content comparison
@Default('sha256') String hashAlgorithm,

/// Whether to include file metadata in comparison
@Default(false) bool compareMetadata,

/// Action to take on duplicates: 'group', 'mark', 'delete', 'move'
@Default('group') String action,
}) = _DuplicatedFileTask;

factory DuplicatedFileTask.fromJson(Map<String, dynamic> json) =>
_$DuplicatedFileTaskFromJson(json);

/// Main execution method
Future<DuplicatedFileResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
// Validate inputs
if (scopeFolderId != null) {
final scopeFolder = await fs.getEntry(scopeFolderId!);
if (scopeFolder == null || !scopeFolder.isFolder) {
throw ArgumentError('Scope folder not found or not a folder');
}
}

// Collect candidate files for duplicate detection
final candidates = await _collectCandidateFiles(fs);

// Group by size first (quick filter)
final sizeGroups = _groupBySize(candidates);

// Then group by content hash for same-sized files
final duplicateGroups = <DuplicatedFileGroup>[];

for (final sizeGroup in sizeGroups.values) {
if (sizeGroup.length > 1) {
final hashGroups = await _groupByContentHash(fs, sizeGroup, cancel);
duplicateGroups.addAll(hashGroups.values.where((group) => group.count > 1));
}
}

// Apply requested action
final results = await _applyAction(fs, duplicateGroups, cancel);

return DuplicatedFileResult(
duplicateGroups: duplicateGroups,
totalFilesScanned: candidates.length,
totalDuplicateGroups: duplicateGroups.length,
totalDuplicateFiles: duplicateGroups.fold(0, (sum, group) => sum + group.count),
actionResults: results,
);
}

Future<List<FsEntry>> _collectCandidateFiles(FsRepository fs) async {
final entries = scopeFolderId != null
? await fs.getChildrenRecursive(scopeFolderId!)
: await fs.getAllEntries();

return entries
.where((entry) => entry.isFile && entry.sizeBytes != null)
.where((file) => file.sizeBytes! >= minSizeBytes)
.toList();
}

Map<int, List<FsEntry>> _groupBySize(List<FsEntry> files) {
final groups = <int, List<FsEntry>>{};
for (final file in files) {
groups.putIfAbsent(file.sizeBytes!, () => []).add(file);
}
return groups;
}

Future<Map<String, DuplicatedFileGroup>> _groupByContentHash(
FsRepository fs,
List<FsEntry> files,
CancellationToken? cancel,
) async {
final groups = <String, DuplicatedFileGroup>{};

for (final file in files) {
cancel?.throwIfCancellationRequested();

final hash = await fs.computeFileHash(file.id, hashAlgorithm);
groups.update(
hash,
(group) => group.copyWith(duplicates: [...group.duplicates, file]),
ifAbsent: () => DuplicatedFileGroup(
contentHash: hash,
sizeBytes: file.sizeBytes!,
duplicates: [file],
detectedAt: DateTime.now(),
),
);
}

return groups;
}

Future<Map<String, dynamic>> _applyAction(
FsRepository fs,
List<DuplicatedFileGroup> groups,
CancellationToken? cancel,
) async {
final results = <String, dynamic>{};

switch (action) {
case 'mark':
// Mark duplicate files with metadata tags
for (final group in groups) {
for (final file in group.duplicates) {
await fs.updateEntryMeta(
file.id,
(meta) => meta.copyWith(
tags: [...meta.tags, 'duplicate'],
custom: {
...meta.custom,
'duplicate_group_hash': group.contentHash,
'duplicate_count': group.count,
},
),
);
}
}
results['marked_files'] = groups.fold(0, (sum, group) => sum + group.count);
break;

case 'delete':
// Delete all but primary file in each group
int deletedCount = 0;
for (final group in groups) {
// Keep first file, delete others
final toDelete = group.duplicates.skip(1).toList();
for (final file in toDelete) {
await fs.removeEntry(file.id, softDelete: false);
deletedCount++;
}
}
results['deleted_files'] = deletedCount;
break;

case 'move':
// Move duplicates to a dedicated folder
final duplicatesFolder = await fs.createFolder(
parentId: scopeFolderId ?? '/',
name: 'Duplicates_${DateTime.now().millisecondsSinceEpoch}',
);

int movedCount = 0;
for (final group in groups) {
// Keep first file, move others
final toMove = group.duplicates.skip(1).toList();
for (final file in toMove) {
await fs.moveEntry(file.id, duplicatesFolder.id);
movedCount++;
}
}
results['moved_files'] = movedCount;
results['duplicates_folder_id'] = duplicatesFolder.id;
break;

case 'group':
default:
// Just return the groups without taking action
results['action'] = 'grouped_only';
break;
}

return results;
}
}

/// Result of duplicate file detection task
@freezed
class DuplicatedFileResult with _$DuplicatedFileResult {
	const DuplicatedFileResult._();
const factory DuplicatedFileResult({
/// Groups of duplicate files found
required List<DuplicatedFileGroup> duplicateGroups,

/// Total number of files scanned
required int totalFilesScanned,

/// Number of duplicate groups found
required int totalDuplicateGroups,

/// Total number of files that are duplicates (including originals)
required int totalDuplicateFiles,

/// Results of any actions taken
@Default(<String, dynamic>{}) Map<String, dynamic> actionResults,

/// Any errors encountered during processing
@Default(<String>[]) List<String> errors,
}) = _DuplicatedFileResult;

factory DuplicatedFileResult.fromJson(Map<String, dynamic> json) =>
_$DuplicatedFileResultFromJson(json);

/// Estimated storage that could be freed by deduplication
int get potentialSavingsBytes {
return duplicateGroups.fold(0, (sum, group) {
return sum + (group.sizeBytes * (group.count - 1));
});
}
}

/// Abstract repository interface for filesystem operations
abstract class FsRepository {
Future<FsEntry?> getEntry(String id);
Future<List<FsEntry>> getChildrenRecursive(String folderId);
Future<List<FsEntry>> getAllEntries();
Future<String> computeFileHash(String fileId, String algorithm);
Future<FsEntry> updateEntryMeta(String entryId, EntryMeta Function(EntryMeta) update);
Future<void> removeEntry(String entryId, {bool softDelete});
Future<void> moveEntry(String entryId, String targetFolderId);
Future<FsEntry> createFolder({required String parentId, required String name});
}

/// Token for cancelling async operations
class CancellationToken {
bool _isCancelled = false;

void cancel() => _isCancelled = true;
bool get isCancelled => _isCancelled;
void throwIfCancellationRequested() {
if (_isCancelled) {
throw StateError('Operation cancelled');
}
}
}
