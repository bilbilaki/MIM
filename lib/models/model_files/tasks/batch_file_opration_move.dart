import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';

part 'batch_file_opration_move.freezed.dart';
part 'batch_file_opration_move.g.dart';

/// The result of a batch file move operation
@freezed
class BatchFileMoveResult with _$BatchFileMoveResult {
const factory BatchFileMoveResult({
/// Number of entries successfully moved
required int movedCount,

/// Number of entries that were skipped due to conflicts
required int skippedCount,

/// Number of entries that failed to move
required int failedCount,

/// Detailed results for each source entry
required List<BatchFileMoveEntryResult> entryResults,
}) = _BatchFileMoveResult;

factory BatchFileMoveResult.fromJson(Map<String, dynamic> json) =>
_$BatchFileMoveResultFromJson(json);
}

/// Detailed result for a single entry in a batch move operation
@freezed
class BatchFileMoveEntryResult with _$BatchFileMoveEntryResult {
const factory BatchFileMoveEntryResult({
/// ID of the source entry
required String sourceId,

/// Status of the move operation for this entry
required BatchMoveStatus status,

/// ID of the moved entry (if successful)
String? movedId,

/// Error message if the move failed
String? error,
}) = _BatchFileMoveEntryResult;

factory BatchFileMoveEntryResult.fromJson(Map<String, dynamic> json) =>
_$BatchFileMoveEntryResultFromJson(json);
}

/// Status of a single entry in batch move operation
enum BatchMoveStatus {
/// Entry was successfully moved
moved,

/// Entry was skipped due to conflict
skipped,

/// Move failed due to error
failed,
}

/// Conflict resolution policy for batch move operations
enum MoveConflictPolicy {
/// Overwrite existing entries with same name
overwrite,

/// Skip entries that would cause conflicts
skip,

/// Automatically rename entries to avoid conflicts
rename,
}

/// Task for moving multiple files/folders to a destination folder
@freezed
class BatchFileMoveTask with _$BatchFileMoveTask {
const BatchFileMoveTask._();

const factory BatchFileMoveTask({
/// IDs of the entries to move
required List<String> sourceEntryIds,

/// ID of the target folder where entries will be moved
required String targetFolderId,

/// Policy for handling name conflicts
@Default(MoveConflictPolicy.rename) MoveConflictPolicy conflictPolicy,
}) = _BatchFileMoveTask;

factory BatchFileMoveTask.fromJson(Map<String, dynamic> json) =>
_$BatchFileMoveTaskFromJson(json);

/// Executes the batch move operation
///
/// [fs] - Filesystem repository for performing operations
/// [cancel] - Optional cancellation token
Future<BatchFileMoveResult> run(
Future<FsEntry> Function(String id) getEntry,
Future<FsEntry> Function(String entryId, String targetFolderId, MoveConflictPolicy policy) moveEntry, {
Future<bool> Function(String id)? cancel,
}) async {
final entryResults = <BatchFileMoveEntryResult>[];
var movedCount = 0;
var skippedCount = 0;
var failedCount = 0;

for (final sourceId in sourceEntryIds) {
if (cancel != null && await cancel(sourceId)) {
break;
}

try {
// Validate source entry exists

// Perform the move operation
final movedEntry = await moveEntry(sourceId, targetFolderId, conflictPolicy);

entryResults.add(BatchFileMoveEntryResult(
sourceId: sourceId,
status: BatchMoveStatus.moved,
movedId: movedEntry.id,
));
movedCount++;
} catch (e) {
// Check if this is a conflict that should be skipped
if (e.toString().contains('already exists') && conflictPolicy == MoveConflictPolicy.skip) {
entryResults.add(BatchFileMoveEntryResult(
sourceId: sourceId,
status: BatchMoveStatus.skipped,
error: 'Entry already exists in target location',
));
skippedCount++;
} else {
entryResults.add(BatchFileMoveEntryResult(
sourceId: sourceId,
status: BatchMoveStatus.failed,
error: e.toString(),
));
failedCount++;
}
}
}

return BatchFileMoveResult(
movedCount: movedCount,
skippedCount: skippedCount,
failedCount: failedCount,
entryResults: entryResults,
);
}
}
