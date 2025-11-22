import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';
import '../../model_core/fs_file_data.dart';



part 'decrypt_file.freezed.dart';
part 'decrypt_file.g.dart';

/// Task for decrypting an encrypted file
@freezed
class DecryptFileTask with _$DecryptFileTask {
const DecryptFileTask._();

const factory DecryptFileTask({
/// ID of the encrypted source file
required String sourceFileId,

/// Target folder ID where decrypted file will be placed
required String targetFolderId,

/// Optional new name for the decrypted file (uses original name if null)
String? newName,

/// Whether to overwrite existing file with same name in target folder
@Default(false) bool overwrite,

/// Decryption parameters (abstract representation)
@Default(<String, dynamic>{}) Map<String, dynamic> decryptionParams,
}) = _DecryptFileTask;

factory DecryptFileTask.fromJson(Map<String, dynamic> json) =>
_$DecryptFileTaskFromJson(json);
}

/// Result of decryption operation
@freezed
class DecryptFileResult with _$DecryptFileResult {
const factory DecryptFileResult({
/// ID of the newly created decrypted file
required String decryptedFileId,

/// Path to the decrypted file
required String decryptedFilePath,

/// Original encrypted file ID
required String originalFileId,

/// Size of the decrypted file in bytes
required int decryptedSizeBytes,

/// Whether the operation was successful
@Default(true) bool success,

/// Error message if operation failed
String? error,
}) = _DecryptFileResult;

factory DecryptFileResult.fromJson(Map<String, dynamic> json) =>
_$DecryptFileResultFromJson(json);
}

/// Abstract filesystem repository interface for dependency injection
abstract class FsRepository {
/// Get entry by ID
Future<FsEntry?> getEntry(String id);

/// Create new file with specified data
Future<FsEntry> createFile({
required String parentFolderId,
required String name,
required FileKind kind,
required FsFileData fileData,
});

/// Check if file exists at path
Future<bool> fileExists(String path);
}

/// Main task execution
extension DecryptFileTaskExecution on DecryptFileTask {
/// Execute the decryption task
Future<DecryptFileResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
cancel?.throwIfCancelled();

// Validate source file exists and is a file
final sourceEntry = await fs.getEntry(sourceFileId);
if (sourceEntry == null) {
throw ArgumentError('Source file not found: $sourceFileId');
}

if (sourceEntry is! FsFile) {
throw ArgumentError('Source entry is not a file: ${sourceEntry.kind}');
}

// Validate target folder exists
final targetFolder = await fs.getEntry(targetFolderId);
if (targetFolder == null) {
throw ArgumentError('Target folder not found: $targetFolderId');
}

if (targetFolder is! FsFolder) {
throw ArgumentError('Target entry is not a folder: ${targetFolder.kind}');
}

// Determine final file name
final finalName = newName ?? sourceEntry.name;

// Check for conflicts if not overwriting
if (!overwrite) {
final potentialPath = '${targetFolder.path}/$finalName';
final exists = await fs.fileExists(potentialPath);
if (exists) {
throw StateError('File already exists at target path: $potentialPath');
}
}

// Create new file data for decrypted file
final decryptedFileData = FsFileData(
location: sourceEntry.data.location,
mime: sourceEntry.data.mime,
typeMeta: sourceEntry.data.typeMeta,
isContentAvailable: true,
convertibleTo: sourceEntry.data.convertibleTo,
);

// Create the decrypted file entry
final decryptedFile = await fs.createFile(
parentFolderId: targetFolderId,
name: finalName,
kind: sourceEntry.kind,
fileData: decryptedFileData,
);

return DecryptFileResult(
decryptedFileId: decryptedFile.id,
decryptedFilePath: decryptedFile.path,
originalFileId: sourceFileId,
decryptedSizeBytes: decryptedFile.base.sizeBytes ?? 0,
success: true,
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

void throwIfCancelled() {
if (_isCancelled) {
throw StateError('Operation cancelled');
}
}
}
