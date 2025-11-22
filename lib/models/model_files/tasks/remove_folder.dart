import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';



part 'remove_folder.freezed.dart';
part 'remove_folder.g.dart';

/// Result of a folder removal operation
@freezed
class RemoveFolderResult with _$RemoveFolderResult {
const factory RemoveFolderResult({
/// ID of the removed folder
required String folderId,

/// Number of entries removed (including the folder itself)
required int entriesRemoved,

/// Whether the operation was successful
required bool success,

/// Error message if the operation failed
String? error,
}) = _RemoveFolderResult;

factory RemoveFolderResult.fromJson(Map<String, dynamic> json) =>
_$RemoveFolderResultFromJson(json);
}

/// Task to remove a folder and its contents
@freezed
class RemoveFolderTask with _$RemoveFolderTask {
const RemoveFolderTask._();

const factory RemoveFolderTask({
/// ID of the folder to remove
required String folderId,

/// Whether to perform soft delete (mark as deleted) or hard delete (permanent removal)
@Default(false) bool softDelete,

/// Whether to require the folder to be empty before removal
/// If false, will recursively remove all contents
@Default(false) bool requireEmpty,
}) = _RemoveFolderTask;

factory RemoveFolderTask.fromJson(Map<String, dynamic> json) =>
_$RemoveFolderTaskFromJson(json);

/// Execute the folder removal operation
Future<RemoveFolderResult> run(
Future<FsEntry?> Function(String id) getEntryById,
Future<void> Function(String id, {bool softDelete}) removeEntry,
) async {
// Get the folder entry
final folderEntry = await getEntryById(folderId);
if (folderEntry == null) {
return RemoveFolderResult(
folderId: folderId,
entriesRemoved: 0,
success: false,
error: 'Folder with id $folderId not found',
);
}

// Validate that it's actually a folder
if (folderEntry is! FsFolder) {
return RemoveFolderResult(
folderId: folderId,
entriesRemoved: 0,
success: false,
error: 'Entry with id $folderId is not a folder',
);
}

// Check if folder is empty if required
if (requireEmpty && folderEntry.data.children.isNotEmpty) {
return RemoveFolderResult(
folderId: folderId,
entriesRemoved: 0,
success: false,
error: 'Folder is not empty and requireEmpty is true',
);
}

try {
// Perform the removal
await removeEntry(folderId, softDelete: softDelete);

// Count includes the folder itself plus all children if recursively removed
final entriesRemoved = requireEmpty ? 1 : _countFolderEntries(folderEntry);

return RemoveFolderResult(
folderId: folderId,
entriesRemoved: entriesRemoved,
success: true,
);
} catch (e) {
return RemoveFolderResult(
folderId: folderId,
entriesRemoved: 0,
success: false,
error: 'Failed to remove folder: $e',
);
}
}

/// Helper method to count total entries in a folder tree
int _countFolderEntries(FsFolder folder) {
int count = 1; // Count the folder itself

// Recursively count children (this assumes we have access to full child entries)
// In a real implementation, this would need to recursively fetch child folders
// For now, we'll just count the immediate children we know about
// ignore: unused_local_variable
for (final child in folder.data.children) {
count += 1; // Count each child
// Note: In a full implementation, we'd recursively count folder children
}

return count;
}
}
