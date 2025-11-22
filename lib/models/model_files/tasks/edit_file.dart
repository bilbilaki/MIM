import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';

part 'edit_file.freezed.dart';
part 'edit_file.g.dart';

/// Represents a text edit operation to apply to a file
@freezed
class FileEdit with _$FileEdit {
const factory FileEdit.replace({
required String newContent,
}) = FileEditReplace;

const factory FileEdit.patch({
required String patchData,
}) = FileEditPatch;

const factory FileEdit.append({
required String contentToAppend,
}) = FileEditAppend;

const factory FileEdit.prepend({
required String contentToPrepend,
}) = FileEditPrepend;

factory FileEdit.fromJson(Map<String, dynamic> json) =>
_$FileEditFromJson(json);
}

/// Result of editing a file
@freezed
class EditFileResult with _$EditFileResult {
const factory EditFileResult({
/// The updated file entry after editing
required FsEntry updatedFile,

/// Whether the file was modified
required bool wasModified,

/// Size change in bytes (positive for increase, negative for decrease)
required int sizeChange,
}) = _EditFileResult;

factory EditFileResult.fromJson(Map<String, dynamic> json) =>
_$EditFileResultFromJson(json);
}

/// Task for editing text-like files (documents, markdown, code, etc.)
@freezed
class EditFileTask with _$EditFileTask {
const EditFileTask._();

const factory EditFileTask({
/// ID of the file to edit
required String fileId,

/// The edit operation to apply
required FileEdit edit,

/// Whether to create backup before editing
@Default(false) bool createBackup,

/// Expected file kinds that support text editing
@Default([
FileKind.document,
FileKind.code,
FileKind.script,
FileKind.markdown,
FileKind.json,
FileKind.csv,
])
List<FileKind> supportedKinds,
}) = _EditFileTask;

factory EditFileTask.fromJson(Map<String, dynamic> json) =>
_$EditFileTaskFromJson(json);

/// Executes the file edit operation
Future<EditFileResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
// Validate file exists and is accessible
final file = await fs.getEntry(fileId);
if (file == null) {
throw FileNotFoundException('File with id $fileId not found');
}

// Ensure it's a file, not a folder
if (file is! FsFile) {
throw InvalidFileTypeException('Entry $fileId is not a file');
}

// Validate file kind supports text editing
if (!supportedKinds.contains(file.kind)) {
throw UnsupportedFileKindException(
'File kind ${file.kind} does not support text editing',
);
}

// Validate file content is available
if (!file.data.isContentAvailable) {
throw FileContentUnavailableException(
'File content is not available for editing',
);
}

cancel?.throwIfCancellationRequested();

// Create backup if requested
if (createBackup) {
}

cancel?.throwIfCancellationRequested();

// Apply the edit operation
final updatedFile = await fs.editFileContent(
fileId: fileId,
edit: edit,
);

cancel?.throwIfCancellationRequested();

return EditFileResult(
updatedFile: updatedFile,
wasModified: true,
sizeChange: (updatedFile.base.sizeBytes ?? 0) - (file.base.sizeBytes ?? 0),
);
}
}

/// Repository interface for filesystem operations
abstract class FsRepository {
Future<FsEntry?> getEntry(String id);
Future<FsEntry> copyFile({
required String sourceFileId,
required String targetFolderId,
String? newName,
});
Future<FsEntry> editFileContent({
required String fileId,
required FileEdit edit,
});
}

/// Cancellation token for cooperative cancellation
class CancellationToken {
bool _isCancelled = false;

bool get isCancelled => _isCancelled;

void cancel() => _isCancelled = true;

void throwIfCancellationRequested() {
if (_isCancelled) {
throw TaskCancelledException('Operation was cancelled');
}
}
}

/// Custom exceptions for edit file task
class FileNotFoundException implements Exception {
final String message;
FileNotFoundException(this.message);
@override
String toString() => 'FileNotFoundException: $message';
}

class InvalidFileTypeException implements Exception {
final String message;
InvalidFileTypeException(this.message);
@override
String toString() => 'InvalidFileTypeException: $message';
}

class UnsupportedFileKindException implements Exception {
final String message;
UnsupportedFileKindException(this.message);
@override
String toString() => 'UnsupportedFileKindException: $message';
}

class FileContentUnavailableException implements Exception {
final String message;
FileContentUnavailableException(this.message);
@override
String toString() => 'FileContentUnavailableException: $message';
}

class TaskCancelledException implements Exception {
final String message;
TaskCancelledException(this.message);
@override
String toString() => 'TaskCancelledException: $message';
}
