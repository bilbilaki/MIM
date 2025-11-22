import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';


part 'rename_folder.freezed.dart';
part 'rename_folder.g.dart';

/// Task for renaming a folder in the filesystem.
@freezed
class RenameFolderTask with _$RenameFolderTask {
const RenameFolderTask._();

const factory RenameFolderTask({
/// ID of the folder to rename
required String folderId,

/// New name for the folder
required String newName,
}) = _RenameFolderTask;

factory RenameFolderTask.fromJson(Map<String, dynamic> json) =>
_$RenameFolderTaskFromJson(json);

/// Executes the folder rename operation
Future<RenameFolderResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
// Validate inputs
if (newName.isEmpty) {
throw ArgumentError('Folder name cannot be empty');
}

if (newName.contains('/') || newName.contains('\\')) {
throw ArgumentError('Folder name cannot contain path separators');
}

// Get the folder to rename
final folder = await fs.getEntry(folderId);
if (folder == null) {
throw StateError('Folder with id $folderId not found');
}

// Ensure it's actually a folder
if (folder is! FsFolder) {
throw StateError('Entry with id $folderId is not a folder');
}

// Ensure folder status allows modification
if (folder.base.status != EntryStatus.normal) {
throw StateError('Cannot rename folder with status ${folder.base.status}');
}

// Check access permissions
if (folder.base.access?.writable == false) {
throw StateError('No write permission for folder ${folder.base.name}');
}

// Perform the rename operation via repository
final updatedFolder = await fs.renameEntry(
entryId: folderId,
newName: newName,
cancel: cancel,
);

return RenameFolderResult(
oldFolder: folder,
newFolder: updatedFolder as FsFolder,
);
}
}

/// Result of a folder rename operation
@freezed
class RenameFolderResult with _$RenameFolderResult {
const factory RenameFolderResult({
/// The original folder before renaming
required FsFolder oldFolder,

/// The folder after successful renaming
required FsFolder newFolder,
}) = _RenameFolderResult;

factory RenameFolderResult.fromJson(Map<String, dynamic> json) =>
_$RenameFolderResultFromJson(json);
}

/// Abstract repository interface for filesystem operations
abstract class FsRepository {
/// Gets an entry by its ID
Future<FsEntry?> getEntry(String id);

/// Renames an entry (file or folder)
Future<FsEntry> renameEntry({
required String entryId,
required String newName,
CancellationToken? cancel,
});
}

/// Token for cancelling asynchronous operations
class CancellationToken {
final bool _cancelled = false;

bool get isCancelled => _cancelled;
}
