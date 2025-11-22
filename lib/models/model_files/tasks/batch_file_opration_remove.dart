import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';

part 'batch_file_opration_remove.freezed.dart';
part 'batch_file_opration_remove.g.dart';

/// Task for removing (deleting) multiple filesystem entries in batch.
@freezed
class BatchFileRemoveTask with _$BatchFileRemoveTask {
const BatchFileRemoveTask._();

const factory BatchFileRemoveTask({
/// IDs of entries to remove
required List<String> entryIds,

/// Removal mode: soft delete (mark as deleted) vs hard delete (permanent)
@Default(RemoveMode.soft) RemoveMode mode,

/// Whether to skip validation and force removal
@Default(false) bool force,
}) = _BatchFileRemoveTask;

factory BatchFileRemoveTask.fromJson(Map<String, dynamic> json) =>
_$BatchFileRemoveTaskFromJson(json);
}

/// Removal mode for batch delete operations
enum RemoveMode {
/// Soft delete - mark entries as deleted but keep data
soft,

/// Hard delete - permanently remove entries and data
hard,
}

/// Result of batch file removal operation
@freezed
class BatchFileRemoveResult with _$BatchFileRemoveResult {
const factory BatchFileRemoveResult({
/// Total number of entries processed
required int totalCount,

/// Number of entries successfully removed
required int removedCount,

/// Number of entries that failed to remove
required int failedCount,

/// Detailed results for each entry
required List<RemoveEntryResult> entries,

/// Summary message
String? summary,
}) = _BatchFileRemoveResult;

factory BatchFileRemoveResult.fromJson(Map<String, dynamic> json) =>
_$BatchFileRemoveResultFromJson(json);
}

/// Individual entry removal result
@freezed
class RemoveEntryResult with _$RemoveEntryResult {
const factory RemoveEntryResult({
/// ID of the entry that was processed
required String entryId,

/// Whether removal was successful
required bool success,

/// Error message if removal failed
String? error,

/// The entry that was removed (for soft delete, this is the updated entry)
FsEntry? removedEntry,
}) = _RemoveEntryResult;

factory RemoveEntryResult.fromJson(Map<String, dynamic> json) =>
_$RemoveEntryResultFromJson(json);
}
