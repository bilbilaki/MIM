import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';

part 'batch_file_opration_copy.freezed.dart';
part 'batch_file_opration_copy.g.dart';

/// Result for a single copy operation within a batch
@freezed
class BatchCopyResult with _$BatchCopyResult {
const factory BatchCopyResult({
/// Original source entry ID
required String sourceId,

/// ID of the newly created copy (null if failed)
String? targetId,

/// Path of the newly created copy (null if failed)
String? targetPath,

/// Whether the copy operation succeeded
required bool success,

/// Error message if operation failed
String? error,
}) = _BatchCopyResult;

factory BatchCopyResult.fromJson(Map<String, dynamic> json) =>
_$BatchCopyResultFromJson(json);
}

/// Conflict resolution policy for copy operations
enum CopyConflictPolicy {
/// Overwrite existing files with same name
overwrite,

/// Skip copying if file with same name exists
skip,

/// Generate unique name by adding counter
rename,
}

/// Task for copying multiple files/folders in one batch operation
@freezed
class BatchFileCopyTask with _$BatchFileCopyTask {
const BatchFileCopyTask._();

const factory BatchFileCopyTask({
/// IDs of entries to copy
required List<String> sourceEntryIds,

/// ID of target folder where copies will be placed
required String targetFolderId,

/// How to handle naming conflicts
@Default(CopyConflictPolicy.rename) CopyConflictPolicy conflictPolicy,

/// Whether to copy folder contents recursively
@Default(true) bool recursive,
}) = _BatchFileCopyTask;

factory BatchFileCopyTask.fromJson(Map<String, dynamic> json) =>
_$BatchFileCopyTaskFromJson(json);

/// Executes the batch copy operation
///
/// [fs] - Filesystem repository for performing operations
/// [cancel] - Optional cancellation token
/// Returns list of results for each source entry
Future<List<BatchCopyResult>> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
final results = <BatchCopyResult>[];

for (final sourceId in sourceEntryIds) {
if (cancel?.isCancelled == true) {
break;
}

try {
// Get source entry
final sourceEntry = await fs.getEntryById(sourceId);
if (sourceEntry == null) {
results.add(BatchCopyResult(
sourceId: sourceId,
success: false,
error: 'Source entry not found',
));
continue;
}

// Get target folder
final targetFolder = await fs.getEntryById(targetFolderId);
if (targetFolder == null || targetFolder is! FsFolder) {
results.add(BatchCopyResult(
sourceId: sourceId,
success: false,
error: 'Target folder not found or not a folder',
));
continue;
}

// Perform copy operation
final copiedEntry = await fs.copyEntry(
sourceId: sourceId,
targetFolderId: targetFolderId,
conflictPolicy: conflictPolicy,
recursive: recursive,
);

results.add(BatchCopyResult(
sourceId: sourceId,
targetId: copiedEntry.id,
targetPath: copiedEntry.path,
success: true,
));
} catch (e) {
results.add(BatchCopyResult(
sourceId: sourceId,
success: false,
error: e.toString(),
));
}
}

return results;
}
}

/// Abstract filesystem repository interface for dependency injection
abstract class FsRepository {
Future<FsEntry?> getEntryById(String id);
Future<FsEntry> copyEntry({
required String sourceId,
required String targetFolderId,
CopyConflictPolicy conflictPolicy,
bool recursive,
});
}

/// Simple cancellation token for async operations
class CancellationToken {
bool _cancelled = false;

bool get isCancelled => _cancelled;

void cancel() {
_cancelled = true;
}
}
