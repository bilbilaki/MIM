import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';

part 'batch_file_opration_extract.freezed.dart';
part 'batch_file_opration_extract.g.dart';

/// Task for extracting multiple archive files in batch.
@freezed
class BatchFileExtractTask with _$BatchFileExtractTask {
const BatchFileExtractTask._();

const factory BatchFileExtractTask({
/// IDs of archive files to extract
required List<String> archiveEntryIds,

/// Target folder ID where archives will be extracted
required String targetFolderId,

/// Whether to create subfolders for each archive
@Default(true) bool createSubfolders,

/// Conflict resolution policy
@Default(ExtractConflictPolicy.rename) ExtractConflictPolicy conflictPolicy,
}) = _BatchFileExtractTask;

factory BatchFileExtractTask.fromJson(Map<String, dynamic> json) =>
_$BatchFileExtractTaskFromJson(json);

/// Main execution method
Future<BatchFileExtractResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
final results = <ArchiveExtractResult>[];

for (final archiveId in archiveEntryIds) {
if (cancel?.isCancelled == true) {
break;
}

try {
// Get the archive entry
final archiveEntry = await fs.getEntry(archiveId);
if (archiveEntry == null) {
results.add(ArchiveExtractResult(
archiveId: archiveId,
success: false,
error: 'Archive not found',
));
continue;
}

// Validate it's actually an archive
if (archiveEntry.kind != FileKind.archive) {
results.add(ArchiveExtractResult(
archiveId: archiveId,
success: false,
error: 'Entry is not an archive file',
));
continue;
}

// Get target folder
final targetFolder = await fs.getEntry(targetFolderId);
if (targetFolder == null || targetFolder is! FsFolder) {
results.add(ArchiveExtractResult(
archiveId: archiveId,
success: false,
error: 'Target folder not found or not a folder',
));
continue;
}

// Determine extraction folder
final extractionFolderId = createSubfolders
? await _createExtractionSubfolder(fs, archiveEntry, targetFolder)
: targetFolderId;

// Extract the archive
final extractedEntries = await fs.extractArchive(
archiveId: archiveId,
targetFolderId: extractionFolderId,
conflictPolicy: conflictPolicy,
);

results.add(ArchiveExtractResult(
archiveId: archiveId,
success: true,
extractedEntries: extractedEntries,
destinationFolderId: extractionFolderId,
));
} catch (e) {
results.add(ArchiveExtractResult(
archiveId: archiveId,
success: false,
error: 'Extraction failed: $e',
));
}
}

return BatchFileExtractResult(results: results);
}

/// Creates a subfolder for archive extraction
Future<String> _createExtractionSubfolder(
FsRepository fs,
FsEntry archiveEntry,
FsFolder targetFolder,
) async {
final baseName = archiveEntry.name.replaceAll(RegExp(r'\.\w+$'), '');
final subfolder = await fs.createFolder(
parentFolderId: targetFolder.id,
name: '${baseName}_extracted',
);
return subfolder.id;
}
}

/// Conflict resolution policy for extraction
enum ExtractConflictPolicy {
skip,
overwrite,
rename,
}

/// Result for a single archive extraction
@freezed
class ArchiveExtractResult with _$ArchiveExtractResult {
const factory ArchiveExtractResult({
/// ID of the archive that was processed
required String archiveId,

/// Whether extraction was successful
required bool success,

/// List of extracted entries (if successful)
@Default([]) List<String> extractedEntries,

/// Destination folder ID where files were extracted
String? destinationFolderId,

/// Error message if extraction failed
String? error,
}) = _ArchiveExtractResult;

factory ArchiveExtractResult.fromJson(Map<String, dynamic> json) =>
_$ArchiveExtractResultFromJson(json);
}

/// Overall result for batch extraction operation
@freezed
class BatchFileExtractResult with _$BatchFileExtractResult {
  const BatchFileExtractResult._();

  const factory BatchFileExtractResult({
/// Results for each archive processed
required List<ArchiveExtractResult> results,
  }) = _BatchFileExtractResult;

  factory BatchFileExtractResult.fromJson(Map<String, dynamic> json) =>
    _$BatchFileExtractResultFromJson(json);

  /// Get count of successful extractions
  int get successCount => results.where((r) => r.success).length;

  /// Get count of failed extractions
  int get failureCount => results.where((r) => !r.success).length;

  /// Get total number of extracted entries across all archives
  int get totalExtractedEntries =>
    results.fold(0, (sum, result) => sum + result.extractedEntries.length);
}

/// Abstract filesystem repository interface for dependency injection
abstract class FsRepository {
Future<FsEntry?> getEntry(String id);
Future<FsFolder> createFolder({required String parentFolderId, required String name});
Future<List<String>> extractArchive({
required String archiveId,
required String targetFolderId,
required ExtractConflictPolicy conflictPolicy,
});
}

/// Cancellation token for cooperative task cancellation
class CancellationToken {
bool isCancelled = false;
void cancel() => isCancelled = true;
}
