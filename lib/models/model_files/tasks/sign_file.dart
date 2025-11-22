import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_file.freezed.dart';
part 'sign_file.g.dart';

/// Task for cryptographically signing a file
@freezed
class SignFileTask with _$SignFileTask {
const SignFileTask._();

const factory SignFileTask({
/// The ID of the file to sign
required String fileId,

/// Signing parameters (key identifier, algorithm, etc.)
required Map<String, dynamic> signingParams,

/// Whether to create a separate signature file or embed in metadata
@Default(false) bool createSeparateSignature,

/// Optional target folder for signature file (if createSeparateSignature is true)
String? targetFolderId,

/// Optional name for signature file
String? signatureFileName,
}) = _SignFileTask;

factory SignFileTask.fromJson(Map<String, dynamic> json) =>
_$SignFileTaskFromJson(json);
}

/// Result of file signing operation
@freezed
class SignFileResult with _$SignFileResult {
const factory SignFileResult({
/// ID of the signed file (or signature file if separate)
required String signedEntryId,

/// The signing algorithm used
required String algorithm,

/// Timestamp of signing
required DateTime signedAt,

/// Digital signature data (hex encoded or base64)
String? signatureData,

/// Optional certificate or public key info
Map<String, dynamic>? certificateInfo,
}) = _SignFileResult;

factory SignFileResult.fromJson(Map<String, dynamic> json) =>
_$SignFileResultFromJson(json);
}
