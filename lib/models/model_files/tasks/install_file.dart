import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';


part 'install_file.freezed.dart';
part 'install_file.g.dart';

/// Result of an installation operation
@freezed
class InstallFileResult with _$InstallFileResult {
const factory InstallFileResult({
/// Whether the installation was successful
required bool success,

/// ID of the installed entry (if applicable)
String? installedEntryId,

/// Installation status message
String? message,

/// Error code if installation failed
String? errorCode,

/// Additional installation metadata
Map<String, dynamic>? metadata,
}) = _InstallFileResult;

factory InstallFileResult.fromJson(Map<String, dynamic> json) =>
_$InstallFileResultFromJson(json);
}

/// Task for installing installable files (APK, packages, etc.)
@freezed
class InstallFileTask with _$InstallFileTask {
const InstallFileTask._();

const factory InstallFileTask({
/// ID of the source file to install
required String sourceFileId,

/// Target platform/environment parameters
required Map<String, dynamic> platformParams,

/// Installation options
@Default(<String, dynamic>{}) Map<String, dynamic> options,
}) = _InstallFileTask;

factory InstallFileTask.fromJson(Map<String, dynamic> json) =>
_$InstallFileTaskFromJson(json);

/// Execute the installation task
Future<InstallFileResult> run(
Future<InstallFileResult> Function(
String sourceFileId,
Map<String, dynamic> platformParams,
Map<String, dynamic> options,
) installerService, {
Future<FsEntry?> Function(String id)? entryLoader,
}) async {
// Validate that the source file exists and is installable
if (entryLoader != null) {
final sourceEntry = await entryLoader(sourceFileId);
if (sourceEntry == null) {
return InstallFileResult(
success: false,
message: 'Source file not found',
errorCode: 'FILE_NOT_FOUND',
);
}

if (sourceEntry is! FsFile) {
return InstallFileResult(
success: false,
message: 'Source is not a file',
errorCode: 'NOT_A_FILE',
);
}

// Check if file kind is installable
final installableKinds = {
FileKind.apk,
FileKind.certificate,
// Add more installable kinds as needed
};

if (!installableKinds.contains(sourceEntry.kind)) {
return InstallFileResult(
success: false,
message: 'File type ${sourceEntry.kind} is not installable',
errorCode: 'UNSUPPORTED_FILE_TYPE',
);
}
}

try {
// Delegate actual installation to the provided service
return await installerService(sourceFileId, platformParams, options);
} catch (e) {
return InstallFileResult(
success: false,
message: 'Installation failed: $e',
errorCode: 'INSTALLATION_ERROR',
);
}
}
}
