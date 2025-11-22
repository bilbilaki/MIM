import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';


part 'move_file.freezed.dart';
part 'move_file.g.dart';

/// Task for moving a single file to another folder.
@freezed
class MoveFileTask with _$MoveFileTask {
const MoveFileTask._();

const factory MoveFileTask({
/// ID of the file to move
required String fileId,

/// ID of the target folder where the file will be moved
required String targetFolderId,

/// Optional new name for the file after moving
/// If null, the original name is preserved
String? newName,

/// Conflict resolution policy
@Default(MoveConflictPolicy.rename) MoveConflictPolicy conflictPolicy,
}) = _MoveFileTask;

factory MoveFileTask.fromJson(Map<String, dynamic> json) =>
_$MoveFileTaskFromJson(json);

/// Executes the file move operation
///
/// [fs] - Filesystem repository for performing operations
/// [cancel] - Optional cancellation token
///
/// Returns the updated file entry after moving
///
/// Throws [StateError] if source file doesn't exist or is not a file
/// Throws [StateError] if target folder doesn't exist or is not a folder
/// Throws [StateError] if conflict occurs and policy is 'error'
Future<FsFile> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
// Validate source file exists and is a file
final sourceEntry = await fs.getEntry(fileId);
if (sourceEntry == null) {
throw StateError('Source file with id $fileId not found');
}

final sourceFile = sourceEntry.maybeMap(
file: (file) => file,
orElse: () => throw StateError('Source entry $fileId is not a file'),
);

// Validate target folder exists and is a folder
final targetFolderEntry = await fs.getEntry(targetFolderId);
if (targetFolderEntry == null) {
throw StateError('Target folder with id $targetFolderId not found');
}

final targetFolder = targetFolderEntry.maybeMap(
folder: (folder) => folder,
orElse: () => throw StateError('Target entry $targetFolderId is not a folder'),
);

// Determine final file name
final finalName = newName ?? sourceFile.name;

// Check for conflicts in target folder
final existingEntry = await fs.findEntryByPath(
'${targetFolder.path}/$finalName',
);

if (existingEntry != null) {
switch (conflictPolicy) {
case MoveConflictPolicy.overwrite:
// Overwrite existing file - handled by repository
break;
case MoveConflictPolicy.rename:
// Repository will handle automatic renaming
break;
case MoveConflictPolicy.skip:
// Return original file unchanged
return sourceFile;
case MoveConflictPolicy.error:
throw StateError(
'File "$finalName" already exists in target folder',
);
}
}

// Perform the move operation through repository
final movedFile = await fs.moveFile(
sourceFileId: fileId,
targetFolderId: targetFolderId,
newName: newName,
conflictPolicy: conflictPolicy,
cancel: cancel,
);

return movedFile;
}
}

/// Conflict resolution policy for move operations
enum MoveConflictPolicy {
/// Overwrite the existing file
overwrite,

/// Automatically rename the moved file
rename,

/// Skip moving if conflict exists
skip,

/// Throw an error if conflict exists
error,
}

/// Abstract filesystem repository interface for dependency injection
abstract class FsRepository {
/// Get an entry by ID
Future<FsEntry?> getEntry(String id);

/// Find an entry by path
Future<FsEntry?> findEntryByPath(String path);

/// Move a file to another folder
Future<FsFile> moveFile({
required String sourceFileId,
required String targetFolderId,
String? newName,
required MoveConflictPolicy conflictPolicy,
CancellationToken? cancel,
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
