import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';


part 'copy_folder.freezed.dart';
part 'copy_folder.g.dart';

/// Result of a folder copy operation
@freezed
class CopyFolderResult with _$CopyFolderResult {
const factory CopyFolderResult({
/// The root of the newly copied folder tree
required FsFolder copiedFolder,

/// Number of files copied
required int filesCopied,

/// Number of folders copied (including the root)
required int foldersCopied,

/// Total size in bytes of all copied content
required int totalSizeBytes,

/// Any errors encountered during the copy operation
@Default(<String>[]) List<String> errors,
}) = _CopyFolderResult;

factory CopyFolderResult.fromJson(Map<String, dynamic> json) =>
_$CopyFolderResultFromJson(json);
}

/// Task for copying a folder and its entire subtree
@freezed
class CopyFolderTask with _$CopyFolderTask {
const CopyFolderTask._();

const factory CopyFolderTask({
/// ID of the source folder to copy
required String sourceFolderId,

/// ID of the target parent folder where the copy will be placed
required String targetParentFolderId,

/// Optional new name for the copied folder (if null, uses original name)
String? newName,

/// Conflict resolution policy
@Default(CopyConflictPolicy.rename) CopyConflictPolicy conflictPolicy,
}) = _CopyFolderTask;

factory CopyFolderTask.fromJson(Map<String, dynamic> json) =>
_$CopyFolderTaskFromJson(json);

/// Executes the folder copy operation
///
/// [fs] - The filesystem repository for performing operations
/// [cancel] - Optional cancellation token
///
/// Returns a [CopyFolderResult] with details of the copy operation
/// Throws [ArgumentError] if source or target folders are not found
/// Throws [StateError] if source is not a folder
Future<CopyFolderResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
// Validate source folder exists and is actually a folder
final sourceEntry = await fs.getEntry(sourceFolderId);
if (sourceEntry == null) {
throw ArgumentError('Source folder with id $sourceFolderId not found');
}

if (sourceEntry is! FsFolder) {
throw StateError('Source entry is not a folder: ${sourceEntry.kind}');
}

// Validate target parent folder exists and is a folder
final targetParent = await fs.getEntry(targetParentFolderId);
if (targetParent == null) {
throw ArgumentError(
'Target parent folder with id $targetParentFolderId not found');
}

if (targetParent is! FsFolder) {
throw StateError('Target parent is not a folder: ${targetParent.kind}');
}

// Determine final folder name
final folderName = newName ?? sourceEntry.name;

// Check for conflicts in target location
final existingChild = targetParent.data.children
    .where((child) => child.name == folderName)
    .firstOrNull;

if (existingChild != null) {
switch (conflictPolicy) {
case CopyConflictPolicy.overwrite:
// For folders, overwrite typically means merge, which is complex
// For simplicity, we'll treat this as an error for now
throw StateError(
'Cannot overwrite existing folder with same name: $folderName');
case CopyConflictPolicy.skip:
// Return empty result indicating skip
return CopyFolderResult(
copiedFolder: sourceEntry, // Return original as placeholder
filesCopied: 0,
foldersCopied: 0,
totalSizeBytes: 0,
errors: ['Skipped copy due to existing folder: $folderName'],
);
case CopyConflictPolicy.rename:
// Generate unique name by appending counter
final uniqueName = await _generateUniqueName(fs, targetParent, folderName);
return await _performCopy(fs, sourceEntry, targetParent, uniqueName, cancel);
case CopyConflictPolicy.error:
throw StateError(
'Target folder already contains entry with name: $folderName');
}
}

return await _performCopy(fs, sourceEntry, targetParent, folderName, cancel);
}

/// Performs the actual folder copy operation
Future<CopyFolderResult> _performCopy(
FsRepository fs,
FsFolder sourceFolder,
FsFolder targetParent,
String folderName,
CancellationToken? cancel,
) async {
int filesCopied = 0;
int foldersCopied = 0;
int totalSizeBytes = 0;
final errors = <String>[];

// Create the new folder in the target location
final newFolder = await fs.createFolder(
parentFolderId: targetParent.id,
name: folderName,
);

foldersCopied++;

// Copy all children recursively
for (final childRef in sourceFolder.data.children) {
if (cancel?.isCancelled == true) {
break;
}

try {
final childEntry = await fs.getEntry(childRef.id);
if (childEntry == null) {
errors.add('Child entry not found: ${childRef.id}');
continue;
}

if (childEntry is FsFile) {
// Copy file
filesCopied++;
totalSizeBytes += childEntry.base.sizeBytes ?? 0;
} else if (childEntry is FsFolder) {
// Recursively copy subfolder
final subTask = CopyFolderTask(
sourceFolderId: childEntry.id,
targetParentFolderId: newFolder.id,
conflictPolicy: conflictPolicy,
);

final subResult = await subTask.run(fs, cancel: cancel);
filesCopied += subResult.filesCopied;
foldersCopied += subResult.foldersCopied;
totalSizeBytes += subResult.totalSizeBytes;
errors.addAll(subResult.errors);
}
} catch (e) {
errors.add('Failed to copy ${childRef.name}: $e');
}
}

return CopyFolderResult(
copiedFolder: newFolder,
filesCopied: filesCopied,
foldersCopied: foldersCopied,
totalSizeBytes: totalSizeBytes,
errors: errors,
);
}

/// Generates a unique name by appending a counter
Future<String> _generateUniqueName(
FsRepository fs,
FsFolder parent,
String baseName,
) async {
var counter = 1;
var candidateName = '$baseName ($counter)';

while (parent.data.children.any((child) => child.name == candidateName)) {
counter++;
candidateName = '$baseName ($counter)';
}

return candidateName;
}
}

/// Conflict resolution policy for copy operations
enum CopyConflictPolicy {
/// Overwrite existing entries
overwrite,

/// Skip copying if conflict exists
skip,

/// Rename the copied item to avoid conflict
rename,

/// Throw an error if conflict exists
error,
}

/// Abstract filesystem repository interface for dependency injection
abstract class FsRepository {
/// Gets an entry by its ID
Future<FsEntry?> getEntry(String id);

/// Creates a new folder
Future<FsFolder> createFolder({
required String parentFolderId,
required String name,
});

/// Copies a file to a new location
Future<FsFile> copyFile({
required String sourceFileId,
required String targetFolderId,
String? newName,
});
}

/// Simple cancellation token for cooperative cancellation
class CancellationToken {
bool _cancelled = false;

bool get isCancelled => _cancelled;

void cancel() {
_cancelled = true;
}
}
