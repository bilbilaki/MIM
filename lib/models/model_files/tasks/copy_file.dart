import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';


part 'copy_file.freezed.dart';
part 'copy_file.g.dart';

/// Conflict resolution policy for file copy operations
enum CopyConflictPolicy {
/// Fail if target already exists
fail,

/// Overwrite existing target
overwrite,

/// Rename the copy (add suffix like "copy (1)")
rename,

/// Skip copying this file
skip,
}

/// Result of a file copy operation
@freezed
class CopyFileResult with _$CopyFileResult {
const factory CopyFileResult({
/// ID of the newly created file copy
required String copiedFileId,

/// Path where the file was copied to
required String targetPath,

/// Whether the operation was successful
required bool success,

/// Error message if operation failed
String? error,

/// Size of the copied file in bytes
int? copiedSize,
}) = _CopyFileResult;

factory CopyFileResult.fromJson(Map<String, dynamic> json) =>
_$CopyFileResultFromJson(json);
}

/// Task for copying a single file to another location
@freezed
class CopyFileTask with _$CopyFileTask {
const CopyFileTask._();

const factory CopyFileTask({
/// ID of the source file to copy
required String sourceFileId,

/// ID of the target folder where the file should be copied
required String targetFolderId,

/// Optional new name for the copied file (if different from original)
String? newName,

/// Policy for handling naming conflicts
@Default(CopyConflictPolicy.fail) CopyConflictPolicy conflictPolicy,
}) = _CopyFileTask;

factory CopyFileTask.fromJson(Map<String, dynamic> json) =>
_$CopyFileTaskFromJson(json);

/// Executes the file copy operation using the provided filesystem repository
///
/// [fs] - Filesystem repository for performing file operations
/// [cancel] - Optional cancellation token to abort the operation
///
/// Returns [CopyFileResult] with details of the copy operation
Future<CopyFileResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
// Validate inputs
if (sourceFileId.isEmpty) {
throw ArgumentError('Source file ID cannot be empty');
}
if (targetFolderId.isEmpty) {
throw ArgumentError('Target folder ID cannot be empty');
}

// Check for cancellation
cancel?.throwIfCancelled();

// Get source file
final sourceFile = await fs.getEntry(sourceFileId);
if (sourceFile == null) {
throw StateError('Source file not found: $sourceFileId');
}

// Ensure source is actually a file
if (sourceFile is! FsFile) {
throw StateError('Source entry is not a file: ${sourceFile.kind}');
}

// Get target folder
final targetFolder = await fs.getEntry(targetFolderId);
if (targetFolder == null) {
throw StateError('Target folder not found: $targetFolderId');
}

// Ensure target is actually a folder
if (targetFolder is! FsFolder) {
throw StateError('Target entry is not a folder: ${targetFolder.kind}');
}

// Determine target filename
final targetName = newName ?? sourceFile.name;
final targetPath = '${targetFolder.path}/$targetName';

// Check if target already exists
final existingEntry = await fs.getEntryByPath(targetPath);
if (existingEntry != null) {
switch (conflictPolicy) {
case CopyConflictPolicy.fail:
throw StateError('Target file already exists: $targetPath');
case CopyConflictPolicy.skip:
return CopyFileResult(
copiedFileId: existingEntry.id,
targetPath: targetPath,
success: false,
error: 'File already exists, skipping',
);
case CopyConflictPolicy.overwrite:
// Continue with overwrite
break;
case CopyConflictPolicy.rename:
// Generate unique name and retry with new name
final uniqueName = await _generateUniqueName(fs, targetFolder, sourceFile.name);
final renamedTask = CopyFileTask(
sourceFileId: sourceFileId,
targetFolderId: targetFolderId,
newName: uniqueName,
conflictPolicy: CopyConflictPolicy.fail, // Avoid infinite recursion
);
return renamedTask.run(fs, cancel: cancel);
}
}

// Check for cancellation again before starting copy
cancel?.throwIfCancelled();

// Perform the actual copy operation
try {
final copiedFile = await fs.copyFile(
sourceFileId: sourceFileId,
targetFolderId: targetFolderId,
newName: newName,
overwrite: conflictPolicy == CopyConflictPolicy.overwrite,
);

return CopyFileResult(
copiedFileId: copiedFile.id,
targetPath: copiedFile.path,
success: true,
copiedSize: copiedFile.base.sizeBytes,
);
} catch (e) {
return CopyFileResult(
copiedFileId: '',
targetPath: targetPath,
success: false,
error: e.toString(),
);
}
}

/// Generates a unique filename in the target folder
Future<String> _generateUniqueName(
FsRepository fs,
FsFolder targetFolder,
String baseName,
) async {
final extension = baseName.contains('.') ? '.${baseName.split('.').last}' : '';
final nameWithoutExt = extension.isNotEmpty
? baseName.substring(0, baseName.length - extension.length)
: baseName;

for (var i = 1; i < 1000; i++) {
final candidateName = i == 1
? '$nameWithoutExt - copy$extension'
: '$nameWithoutExt - copy ($i)$extension';

final candidatePath = '${targetFolder.path}/$candidateName';
final existing = await fs.getEntryByPath(candidatePath);

if (existing == null) {
return candidateName;
}
}

throw StateError('Could not generate unique filename for: $baseName');
}
}

/// Abstract filesystem repository interface for dependency injection
abstract class FsRepository {
Future<FsEntry?> getEntry(String id);
Future<FsEntry?> getEntryByPath(String path);
Future<FsFile> copyFile({
required String sourceFileId,
required String targetFolderId,
String? newName,
bool overwrite = false,
});
}

/// Cancellation token for aborting async operations
abstract class CancellationToken {
bool get isCancelled;
void throwIfCancelled();
}
