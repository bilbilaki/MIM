import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';

part 'batch_file_opration_archive.freezed.dart';
part 'batch_file_opration_archive.g.dart';

/// Result of a single archive operation within a batch
@freezed
class BatchArchiveOperationResult with _$BatchArchiveOperationResult {
const factory BatchArchiveOperationResult({
/// The source entry IDs that were archived
required List<String> sourceEntryIds,

/// The ID of the created archive file, null if operation failed
String? archiveId,

/// Whether the operation succeeded
required bool success,

/// Error message if operation failed
String? error,

/// Size of the created archive in bytes
int? archiveSizeBytes,
}) = _BatchArchiveOperationResult;

factory BatchArchiveOperationResult.fromJson(Map<String, dynamic> json) =>
_$BatchArchiveOperationResultFromJson(json);
}

/// Result of the entire batch archive operation
@freezed
class BatchFileArchiveResult with _$BatchFileArchiveResult {
const factory BatchFileArchiveResult({
/// Results for each individual archive operation
required List<BatchArchiveOperationResult> operationResults,

/// Total number of operations that succeeded
@Default(0) int successCount,

/// Total number of operations that failed
@Default(0) int failureCount,

/// Total size of all created archives in bytes
@Default(0) int totalArchiveSizeBytes,
}) = _BatchFileArchiveResult;

factory BatchFileArchiveResult.fromJson(Map<String, dynamic> json) =>
_$BatchFileArchiveResultFromJson(json);
}

/// Configuration for a single archive operation within a batch
@freezed
class ArchiveOperationConfig with _$ArchiveOperationConfig {
const factory ArchiveOperationConfig({
/// IDs of entries to archive together
required List<String> sourceEntryIds,

/// Target folder ID where archive will be created
required String targetFolderId,

/// Name for the archive file (without extension)
required String archiveName,

/// Archive format (zip, tar, etc.)
@Default('zip') String format,

/// Whether to include folder structure in archive
@Default(true) bool preserveStructure,

/// Compression level (0-9, where 0 = no compression)
@Default(6) int compressionLevel,
}) = _ArchiveOperationConfig;

factory ArchiveOperationConfig.fromJson(Map<String, dynamic> json) =>
_$ArchiveOperationConfigFromJson(json);
}

/// Task to archive multiple groups of files/folders in batch operations
class BatchFileArchiveTask {
const BatchFileArchiveTask({
required this.operations,
this.conflictPolicy = ArchiveConflictPolicy.rename,
});

/// List of archive operations to perform
final List<ArchiveOperationConfig> operations;

/// How to handle conflicts when archive name already exists
final ArchiveConflictPolicy conflictPolicy;

/// Execute the batch archive operation
Future<BatchFileArchiveResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
final results = <BatchArchiveOperationResult>[];
int successCount = 0;
int failureCount = 0;
int totalArchiveSize = 0;

for (final operation in operations) {
if (cancel?.isCancelled ?? false) {
break;
}

try {
// Validate source entries exist and are readable

// Validate target folder exists and is writable
final targetFolder = await _validateTargetFolder(fs, operation.targetFolderId);

// Generate final archive name with conflict resolution
final archiveFileName = await _resolveArchiveName(
fs,
targetFolder,
operation.archiveName,
operation.format,
);

// Create archive entry
final archiveEntry = await _createArchiveEntry(
fs,
targetFolder,
archiveFileName,
operation.format,
);

// Add entries to archive (delegated to repository)
await fs.addToArchive(
archiveId: archiveEntry.id,
sourceEntryIds: operation.sourceEntryIds,
preserveStructure: operation.preserveStructure,
compressionLevel: operation.compressionLevel,
);

// Get final archive size
final updatedArchive = await fs.getEntry(archiveEntry.id) as FsFile;
final archiveSize = (updatedArchive.sizeBytes ?? 0).toInt();

final result = BatchArchiveOperationResult(
sourceEntryIds: operation.sourceEntryIds,
archiveId: archiveEntry.id,
success: true,
archiveSizeBytes: archiveSize,
);

results.add(result);
successCount++;
totalArchiveSize += archiveSize;

} catch (e) {
final result = BatchArchiveOperationResult(
sourceEntryIds: operation.sourceEntryIds,
success: false,
error: e.toString(),
);
results.add(result);
failureCount++;
}
}

return BatchFileArchiveResult(
operationResults: results,
successCount: successCount,
failureCount: failureCount,
totalArchiveSizeBytes: totalArchiveSize,
);
}

/// Validate source entries and return them
// ignore: unused_element
Future<List<FsEntry>> _validateAndGetSources(
FsRepository fs,
List<String> sourceEntryIds,
) async {
final entries = <FsEntry>[];

for (final id in sourceEntryIds) {
final entry = await fs.getEntry(id);
if (entry == null) {
throw Exception('Source entry not found: $id');
}
if (entry.status == EntryStatus.deleted) {
throw Exception('Source entry is deleted: $id');
}
if (entry.base.access?.readable != true) {
throw Exception('Source entry not readable: $id');
}
entries.add(entry);
}

return entries;
}

/// Validate target folder exists and is writable
Future<FsFolder> _validateTargetFolder(
FsRepository fs,
String targetFolderId,
) async {
final folder = await fs.getEntry(targetFolderId);

if (folder == null) {
throw Exception('Target folder not found: $targetFolderId');
}

if (folder is! FsFolder) {
throw Exception('Target is not a folder: $targetFolderId');
}

if (folder.base.access?.writable != true) {
throw Exception('Target folder not writable: $targetFolderId');
}

return folder;
}

/// Resolve archive name with conflict policy
Future<String> _resolveArchiveName(
FsRepository fs,
FsFolder targetFolder,
String baseName,
String format,
) async {
final extension = _getArchiveExtension(format);
var candidateName = '$baseName.$extension';

// Check if name already exists in target folder
final existing = await fs.findChildByName(targetFolder.id, candidateName);

if (existing != null) {
switch (conflictPolicy) {
case ArchiveConflictPolicy.overwrite:
// Allow overwrite - name stays the same
break;
case ArchiveConflictPolicy.rename:
candidateName = await _generateUniqueName(fs, targetFolder.id, baseName, extension);
break;
case ArchiveConflictPolicy.skip:
throw Exception('Archive already exists and conflict policy is skip: $candidateName');
}
}

return candidateName;
}

/// Generate unique name by appending counter
Future<String> _generateUniqueName(
FsRepository fs,
String folderId,
String baseName,
String extension,
) async {
var counter = 1;
var candidateName = '$baseName.$extension';

while (true) {
final existing = await fs.findChildByName(folderId, candidateName);
if (existing == null) {
return candidateName;
}
counter++;
candidateName = '$baseName ($counter).$extension';
}
}

/// Create the archive entry in the filesystem
Future<FsFile> _createArchiveEntry(
FsRepository fs,
FsFolder targetFolder,
String archiveName,
String format,
) async {
return await fs.createFile(
targetFolderId: targetFolder.id,
name: archiveName,
kind: FileKind.archive,
extension: _getArchiveExtension(format),
);
}

/// Get file extension for archive format
String _getArchiveExtension(String format) {
switch (format.toLowerCase()) {
case 'zip':
return 'zip';
case 'tar':
return 'tar';
case 'gzip':
return 'gz';
case '7z':
return '7z';
case 'rar':
return 'rar';
default:
return format;
}
}
}

/// Policy for handling archive name conflicts
enum ArchiveConflictPolicy {
overwrite,
rename,
skip,
}

/// Abstract repository interface for filesystem operations
abstract class FsRepository {
Future<FsEntry?> getEntry(String id);
Future<FsEntry?> findChildByName(String folderId, String name);
Future<FsFile> createFile({
required String targetFolderId,
required String name,
required FileKind kind,
String? extension,
});
Future<void> addToArchive({
required String archiveId,
required List<String> sourceEntryIds,
bool preserveStructure,
int compressionLevel,
});
}

/// Token for cancelling async operations
class CancellationToken {
bool isCancelled = false;
void cancel() => isCancelled = true;
}
