import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';


part 'move_folder.freezed.dart';
part 'move_folder.g.dart';

/// Task for moving a folder and its entire subtree to a new parent folder.
@freezed
class MoveFolderTask with _$MoveFolderTask {
const MoveFolderTask._();

const factory MoveFolderTask({
/// ID of the folder to be moved
required String folderId,

/// ID of the target parent folder where the folder will be moved
required String targetParentFolderId,

/// Optional new name for the folder after moving
/// If null, the original name is preserved
String? newName,
}) = _MoveFolderTask;

factory MoveFolderTask.fromJson(Map<String, dynamic> json) =>
_$MoveFolderTaskFromJson(json);

/// Result of the folder move operation

/// Executes the folder move operation
///
/// [fs] - Filesystem repository for performing operations
/// [cancel] - Optional cancellation token
Future<Result> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
// Validate that source folder exists and is actually a folder
final sourceFolder = await fs.getEntry(folderId);
if (sourceFolder == null) {
throw ArgumentError('Source folder with id $folderId not found');
}

if (sourceFolder is! FsFolder) {
throw ArgumentError('Source entry with id $folderId is not a folder');
}

// Validate that target parent folder exists and is a folder
final targetParent = await fs.getEntry(targetParentFolderId);
if (targetParent == null) {
throw ArgumentError('Target parent folder with id $targetParentFolderId not found');
}

if (targetParent is! FsFolder) {
throw ArgumentError('Target parent with id $targetParentFolderId is not a folder');
}

// Check if moving folder into itself or its descendants
if (_isMovingIntoDescendant(sourceFolder, targetParent, fs)) {
throw ArgumentError('Cannot move folder into itself or its descendants');
}

// Check for name conflicts in target folder
final finalName = newName ?? sourceFolder.name;
final conflictCheck = await fs.getChildByName(targetParentFolderId, finalName);
if (conflictCheck != null) {
throw ArgumentError('Target folder already contains an entry named "$finalName"');
}

cancel?.throwIfCancellationRequested();

// Perform the actual move operation via repository
final moveResult = await fs.moveFolder(
sourceFolderId: folderId,
targetParentFolderId: targetParentFolderId,
newName: newName,
);

return Result(
movedFolder: moveResult.movedFolder,
movedEntryCount: moveResult.movedEntryCount,
errors: moveResult.errors,
);
}

/// Helper method to check if moving folder into itself or descendants
bool _isMovingIntoDescendant(
FsFolder source,
FsFolder target,
FsRepository fs,
) {
// Simple path-based check - if target path starts with source path,
// it means target is a descendant of source
return target.path.startsWith('${source.path}/') || target.id == source.id;
}
}

/// Abstract repository interface for filesystem operations
/// This is injected into the task to keep it platform-agnostic
abstract class FsRepository {
Future<FsEntry?> getEntry(String id);
Future<FsEntry?> getChildByName(String parentFolderId, String name);
Future<MoveFolderResult> moveFolder({
required String sourceFolderId,
required String targetParentFolderId,
String? newName,
});
}

/// Repository-specific result type for folder move operations
class MoveFolderResult {
final FsFolder movedFolder;
final int movedEntryCount;
final List<String> errors;

MoveFolderResult({
required this.movedFolder,
required this.movedEntryCount,
this.errors = const [],
});
}

/// Simple cancellation token for async operations
class CancellationToken {
bool _isCancelled = false;

bool get isCancelled => _isCancelled;

void cancel() {
_isCancelled = true;
}

void throwIfCancellationRequested() {
if (_isCancelled) {
throw StateError('Operation cancelled');
}
}
}
@freezed
class Result with _$Result {
const factory Result({
/// The updated folder entry with new path
required FsFolder movedFolder,

/// Number of entries that were moved (including the folder itself and all children)
required int movedEntryCount,

/// Any errors encountered during the move operation
@Default(<String>[]) List<String> errors,
}) = _Result;

factory Result.fromJson(Map<String, dynamic> json) =>
_$ResultFromJson(json);
}
