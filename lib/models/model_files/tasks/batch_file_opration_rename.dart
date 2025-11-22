import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';

part 'batch_file_opration_rename.freezed.dart';
part 'batch_file_opration_rename.g.dart';

/// Result for a single rename operation within a batch
@freezed
class BatchRenameResult with _$BatchRenameResult {
const factory BatchRenameResult({
/// Original entry ID
required String entryId,

/// Original name before rename
required String originalName,

/// New name after rename attempt
required String newName,

/// Whether the rename was successful
required bool success,

/// Error message if rename failed
String? error,

/// Updated entry if rename succeeded
FsEntry? updatedEntry,
}) = _BatchRenameResult;

factory BatchRenameResult.fromJson(Map<String, dynamic> json) =>
_$BatchRenameResultFromJson(json);
}

/// Result for the entire batch rename operation
@freezed
class BatchFileRenameResult with _$BatchFileRenameResult {
const factory BatchFileRenameResult({
/// Results for each individual rename operation
@Default(<BatchRenameResult>[]) List<BatchRenameResult> results,

/// Total number of operations attempted
@Default(0) int totalCount,

/// Number of successful renames
@Default(0) int successCount,

/// Number of failed renames
@Default(0) int failureCount,
}) = _BatchFileRenameResult;

factory BatchFileRenameResult.fromJson(Map<String, dynamic> json) =>
_$BatchFileRenameResultFromJson(json);
}

/// Instruction for renaming a single entry
@freezed
class RenameInstruction with _$RenameInstruction {
const factory RenameInstruction({
/// ID of the entry to rename
required String entryId,

/// New name for the entry
required String newName,
}) = _RenameInstruction;

factory RenameInstruction.fromJson(Map<String, dynamic> json) =>
_$RenameInstructionFromJson(json);
}

/// Task for renaming multiple filesystem entries in one batch operation
@freezed
class BatchFileRenameTask with _$BatchFileRenameTask {
const BatchFileRenameTask._();

const factory BatchFileRenameTask({
/// List of rename instructions (entry ID + new name)
required List<RenameInstruction> instructions,
}) = _BatchFileRenameTask;

factory BatchFileRenameTask.fromJson(Map<String, dynamic> json) =>
_$BatchFileRenameTaskFromJson(json);

/// Execute the batch rename operation
Future<BatchFileRenameResult> run(
Future<FsEntry?> Function(String id) getEntryById,
Future<FsEntry> Function(FsEntry entry, String newName) renameEntry,
) async {
final results = <BatchRenameResult>[];

for (final instruction in instructions) {
try {
// Get the entry to rename
final entry = await getEntryById(instruction.entryId);

if (entry == null) {
results.add(BatchRenameResult(
entryId: instruction.entryId,
originalName: '',
newName: instruction.newName,
success: false,
error: 'Entry not found',
));
continue;
}

// Validate new name
if (instruction.newName.isEmpty) {
results.add(BatchRenameResult(
entryId: instruction.entryId,
originalName: entry.name,
newName: instruction.newName,
success: false,
error: 'New name cannot be empty',
));
continue;
}

// Perform the rename
final updatedEntry = await renameEntry(entry, instruction.newName);

results.add(BatchRenameResult(
entryId: instruction.entryId,
originalName: entry.name,
newName: instruction.newName,
success: true,
updatedEntry: updatedEntry,
));

} catch (e) {
results.add(BatchRenameResult(
entryId: instruction.entryId,
originalName: '',
newName: instruction.newName,
success: false,
error: e.toString(),
));
}
}

return BatchFileRenameResult(
results: results,
totalCount: instructions.length,
successCount: results.where((r) => r.success).length,
failureCount: results.where((r) => !r.success).length,
);
}
}
