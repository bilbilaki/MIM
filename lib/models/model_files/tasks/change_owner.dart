import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';


part 'change_owner.freezed.dart';
part 'change_owner.g.dart';

/// Task to change owner/group fields of filesystem entries.
@freezed
class ChangeOwnerTask with _$ChangeOwnerTask {
const factory ChangeOwnerTask({
/// IDs of entries to modify
required List<String> entryIds,

/// New owner user ID (null to keep current)
String? ownerUserId,

/// New owner group ID (null to keep current)
String? ownerGroupId,
}) = _ChangeOwnerTask;

factory ChangeOwnerTask.fromJson(Map<String, dynamic> json) =>
_$ChangeOwnerTaskFromJson(json);
}

/// Result of changing ownership for multiple entries.
@freezed
class ChangeOwnerResult with _$ChangeOwnerResult {
const factory ChangeOwnerResult({
/// List of results for each entry processed
required List<ChangeOwnerEntryResult> results,

/// Total count of successfully updated entries
@Default(0) int successCount,

/// Total count of entries that failed to update
@Default(0) int failureCount,
}) = _ChangeOwnerResult;

factory ChangeOwnerResult.fromJson(Map<String, dynamic> json) =>
_$ChangeOwnerResultFromJson(json);
}

/// Individual result for a single entry ownership change.
@freezed
class ChangeOwnerEntryResult with _$ChangeOwnerEntryResult {
const factory ChangeOwnerEntryResult({
/// ID of the entry that was processed
required String entryId,

/// Whether the ownership change was successful
required bool success,

/// Error message if the operation failed
String? error,

/// The updated entry (if successful)
FsEntry? updatedEntry,
}) = _ChangeOwnerEntryResult;

factory ChangeOwnerEntryResult.fromJson(Map<String, dynamic> json) =>
_$ChangeOwnerEntryResultFromJson(json);
}
