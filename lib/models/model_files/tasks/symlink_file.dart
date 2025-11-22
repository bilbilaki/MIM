import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';


part 'symlink_file.freezed.dart';
part 'symlink_file.g.dart';

/// Task for creating a symbolic link/shortcut to a target file.
@freezed
class SymlinkFileTask with _$SymlinkFileTask {
const factory SymlinkFileTask({
/// ID of the target entry to link to
required String targetEntryId,

/// ID of the folder where the symlink should be created
required String targetFolderId,

/// Optional name for the symlink (defaults to target name)
String? name,
}) = _SymlinkFileTask;

factory SymlinkFileTask.fromJson(Map<String, dynamic> json) =>
_$SymlinkFileTaskFromJson(json);
}

/// Result of creating a symbolic link
@freezed
class SymlinkFileResult with _$SymlinkFileResult {
const factory SymlinkFileResult({
/// The created symlink entry
required FsEntry symlinkEntry,

/// ID of the target entry this symlink points to
required String targetEntryId,
}) = _SymlinkFileResult;

factory SymlinkFileResult.fromJson(Map<String, dynamic> json) =>
_$SymlinkFileResultFromJson(json);
}

/// Repository interface for filesystem operations needed by SymlinkFileTask
abstract class FsRepository {
/// Get an entry by its ID
Future<FsEntry> getEntry(String id);

/// Create a new symlink entry
Future<FsEntry> createSymlink({
required String targetFolderId,
required String name,
required String targetEntryId,
});
}

extension SymlinkFileTaskExtensions on SymlinkFileTask {
/// Execute the symlink creation task
Future<SymlinkFileResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
cancel?.throwIfCancellationRequested();

// Validate target entry exists
final targetEntry = await fs.getEntry(targetEntryId);

// Validate target folder exists and is actually a folder
final targetFolder = await fs.getEntry(targetFolderId);
if (targetFolder is! FsFolder) {
throw ArgumentError('Target folder must be a folder, got ${targetFolder.kind}');
}

// Use provided name or default to target name
final symlinkName = name ?? '${targetEntry.name}_link';

// Create the symlink
final symlinkEntry = await fs.createSymlink(
targetFolderId: targetFolderId,
name: symlinkName,
targetEntryId: targetEntryId,
);

return SymlinkFileResult(
symlinkEntry: symlinkEntry,
targetEntryId: targetEntryId,
);
}
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
