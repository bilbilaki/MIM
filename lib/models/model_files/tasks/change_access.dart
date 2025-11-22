import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';


part 'change_access.freezed.dart';
part 'change_access.g.dart';

/// Task to change access rights (read/write/execute) for filesystem entries.
@freezed
class ChangeAccessTask with _$ChangeAccessTask {
const ChangeAccessTask._();

const factory ChangeAccessTask({
/// IDs of entries to modify access for
required List<String> entryIds,

/// New access configuration to apply
required EntryAccess newAccess,

/// Whether to apply changes recursively to folder contents
@Default(false) bool recursive,
}) = _ChangeAccessTask;

factory ChangeAccessTask.fromJson(Map<String, dynamic> json) =>
_$ChangeAccessTaskFromJson(json);

/// Execute the access change operation
Future<ChangeAccessResult> run(
Future<FsEntry?> Function(String id) getEntryById,
Future<void> Function(FsEntry entry, EntryAccess newAccess) updateEntryAccess,
) async {
final results = <ChangeAccessEntryResult>[];

for (final entryId in entryIds) {
try {
final entry = await getEntryById(entryId);
if (entry == null) {
results.add(ChangeAccessEntryResult(
entryId: entryId,
success: false,
error: 'Entry not found',
));
continue;
}

await updateEntryAccess(entry, newAccess);

results.add(ChangeAccessEntryResult(
entryId: entryId,
success: true,
newAccess: newAccess,
));

// Handle recursive application for folders
if (recursive && entry is FsFolder) {
final recursiveResults = await _applyRecursiveAccess(
entry,
newAccess,
getEntryById,
updateEntryAccess,
);
results.addAll(recursiveResults);
}
} catch (e) {
results.add(ChangeAccessEntryResult(
entryId: entryId,
success: false,
error: e.toString(),
));
}
}

return ChangeAccessResult(
results: results,
totalProcessed: results.length,
successfulCount: results.where((r) => r.success).length,
failedCount: results.where((r) => !r.success).length,
);
}

Future<List<ChangeAccessEntryResult>> _applyRecursiveAccess(
FsFolder folder,
EntryAccess newAccess,
Future<FsEntry?> Function(String id) getEntryById,
Future<void> Function(FsEntry entry, EntryAccess newAccess) updateEntryAccess,
) async {
final results = <ChangeAccessEntryResult>[];

for (final childRef in folder.data.children) {
try {
final child = await getEntryById(childRef.id);
if (child != null) {
await updateEntryAccess(child, newAccess);

results.add(ChangeAccessEntryResult(
entryId: childRef.id,
success: true,
newAccess: newAccess,
));

// Recursively process child folders
if (child is FsFolder) {
final childResults = await _applyRecursiveAccess(
child,
newAccess,
getEntryById,
updateEntryAccess,
);
results.addAll(childResults);
}
}
} catch (e) {
results.add(ChangeAccessEntryResult(
entryId: childRef.id,
success: false,
error: e.toString(),
));
}
}

return results;
}
}

/// Result of access change operation for a single entry
@freezed
class ChangeAccessEntryResult with _$ChangeAccessEntryResult {
const factory ChangeAccessEntryResult({
required String entryId,
required bool success,
EntryAccess? newAccess,
String? error,
}) = _ChangeAccessEntryResult;

factory ChangeAccessEntryResult.fromJson(Map<String, dynamic> json) =>
_$ChangeAccessEntryResultFromJson(json);
}

/// Overall result of the access change task
@freezed
class ChangeAccessResult with _$ChangeAccessResult {
const factory ChangeAccessResult({
required List<ChangeAccessEntryResult> results,
required int totalProcessed,
required int successfulCount,
required int failedCount,
}) = _ChangeAccessResult;

factory ChangeAccessResult.fromJson(Map<String, dynamic> json) =>
_$ChangeAccessResultFromJson(json);
}
