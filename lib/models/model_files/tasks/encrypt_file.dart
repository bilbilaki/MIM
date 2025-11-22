import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';
import '../../model_core/fs_file_data.dart';


part 'encrypt_file.freezed.dart';
part 'encrypt_file.g.dart';

/// Task for encrypting a file using specified encryption parameters.
@freezed
class EncryptFileTask with _$EncryptFileTask {
const EncryptFileTask._();

const factory EncryptFileTask({
/// ID of the source file to encrypt
required String sourceFileId,

/// Encryption algorithm to use (e.g., 'AES-256', 'ChaCha20')
required String algorithm,

/// Encryption key or parameters (abstract representation)
required Map<String, dynamic> encryptionParams,

/// Whether to overwrite the original file or create a new encrypted file
@Default(false) bool overwriteOriginal,

/// Optional target folder ID if creating a new file
String? targetFolderId,

/// Optional name for the encrypted file (if not overwriting)
String? encryptedFileName,

/// Conflict resolution policy when target file exists
@Default(EncryptConflictPolicy.rename) EncryptConflictPolicy conflictPolicy,
}) = _EncryptFileTask;

factory EncryptFileTask.fromJson(Map<String, dynamic> json) =>
_$EncryptFileTaskFromJson(json);
}

/// Conflict resolution policies for encryption operations
enum EncryptConflictPolicy {
/// Rename the encrypted file if target exists
rename,

/// Overwrite existing file
overwrite,

/// Skip encryption if target exists
skip,

/// Throw error if target exists
error,
}

/// Result of file encryption operation
@freezed
class EncryptFileResult with _$EncryptFileResult {
const factory EncryptFileResult({
/// ID of the encrypted file (may be same as source if overwritten)
required String encryptedFileId,

/// Path to the encrypted file
required String encryptedFilePath,

/// Whether the operation created a new file or modified existing
required bool createdNewFile,

/// Original file ID that was encrypted
required String originalFileId,

/// Encryption algorithm used
required String algorithm,

/// Any additional metadata about the encryption process
@Default(<String, dynamic>{}) Map<String, dynamic> metadata,
}) = _EncryptFileResult;

factory EncryptFileResult.fromJson(Map<String, dynamic> json) =>
_$EncryptFileResultFromJson(json);
}

/// Abstract repository interface for filesystem operations needed by encryption
abstract class FsRepository {
/// Get file entry by ID
Future<FsFile> getFile(String fileId);

/// Create new file with specified data
Future<FsFile> createFile({
required String parentFolderId,
required String name,
required FsFileData fileData,
required FsEntryBase base,
});

/// Update existing file data
Future<FsFile> updateFile(String fileId, FsFileData newData);

/// Encrypt file content using provided parameters
Future<String> encryptFileContent({
required String sourcePath,
required String targetPath,
required String algorithm,
required Map<String, dynamic> params,
});
}

extension EncryptFileTaskX on EncryptFileTask {
/// Execute the file encryption operation
Future<EncryptFileResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
cancel?.throwIfCancelled();

// Get source file
final sourceFile = await fs.getFile(sourceFileId);

// Check if file content is available
if (!sourceFile.data.isContentAvailable) {
throw StateError('File content is not available for encryption');
}

String targetFilePath;
bool willCreateNewFile;
FsFile resultFile;

if (overwriteOriginal) {
// Encrypt in-place (overwrite original)
targetFilePath = sourceFile.path;
willCreateNewFile = false;

// Create temporary path for encrypted content
final tempPath = '${sourceFile.path}.encrypted.tmp';

// Perform encryption
final encryptedPath = await fs.encryptFileContent(
sourcePath: sourceFile.data.location.maybeMap(
local: (local) => local.localPath,
orElse: () => throw UnsupportedError('Only local files supported for encryption'),
),
targetPath: tempPath,
algorithm: algorithm,
params: encryptionParams,
);

// Update file data to reflect encryption
final updatedData = sourceFile.data.copyWith(
location:  StorageLocation.local(localPath: encryptedPath),
mime: 'application/octet-stream', // Encrypted files are binary
typeMeta: const FileTypeMeta.unknown(<String, dynamic>{
'encrypted': true,
'algorithm': 'AES-256', // This would come from algorithm parameter
}),
);

resultFile = await fs.updateFile(sourceFileId, updatedData);
} else {
// Create new encrypted file
willCreateNewFile = true;
final targetFolder = targetFolderId ?? sourceFile.base.path.split('/').sublist(0, -1).join('/');
final fileName = encryptedFileName ?? '${sourceFile.name}.encrypted';

// Create base for new file
final base = FsEntryBase.create(
path: '$targetFolder/$fileName',
name: fileName,
kind: FileKind.binary, // Encrypted files are treated as binary
extension: 'enc',
sizeBytes: null, // Size may change with encryption
);

// Create temporary path for encryption
final tempPath = '${base.path}.tmp';

// Perform encryption
final encryptedPath = await fs.encryptFileContent(
sourcePath: sourceFile.data.location.maybeMap(
local: (local) => local.localPath,
orElse: () => throw UnsupportedError('Only local files supported for encryption'),
),
targetPath: tempPath,
algorithm: algorithm,
params: encryptionParams,
);

// Create file data for encrypted file
final fileData = FsFileData(
location: StorageLocation.local(localPath: encryptedPath),
mime: 'application/octet-stream',
typeMeta: const FileTypeMeta.unknown(<String, dynamic>{
'encrypted': true,
'algorithm': 'AES-256',
}),
isContentAvailable: true,
convertibleTo: const [],
);

resultFile = await fs.createFile(
parentFolderId: targetFolder,
name: fileName,
fileData: fileData,
base: base,
);

targetFilePath = resultFile.path;
}

cancel?.throwIfCancelled();

return EncryptFileResult(
encryptedFileId: resultFile.id,
encryptedFilePath: targetFilePath,
createdNewFile: willCreateNewFile,
originalFileId: sourceFileId,
algorithm: algorithm,
metadata: {
'originalSize': sourceFile.base.sizeBytes,
'encryptedAt': DateTime.now().toIso8601String(),
},
);
}
}

/// Token for cancellation support
class CancellationToken {
bool _cancelled = false;

void cancel() => _cancelled = true;
bool get isCancelled => _cancelled;

void throwIfCancelled() {
if (_cancelled) {
throw Exception('Operation cancelled');
}
}
}
