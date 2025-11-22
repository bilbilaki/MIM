import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';

part 'remove_file.freezed.dart';
part 'remove_file.g.dart';

/// Task for removing a single file from the filesystem.
@freezed
class RemoveFileTask with _$RemoveFileTask {
const factory RemoveFileTask({
/// ID of the file to remove
required String fileId,

/// Whether to perform soft delete (mark as deleted) or hard delete (permanent removal)
@Default(false) bool hardDelete,
}) = _RemoveFileTask;

factory RemoveFileTask.fromJson(Map<String, dynamic> json) =>
_$RemoveFileTaskFromJson(json);
}

/// Result of a file removal operation
@freezed
class RemoveFileResult with _$RemoveFileResult {
const factory RemoveFileResult({
/// ID of the removed file
required String removedFileId,

/// Whether the operation was successful
required bool success,

/// Error message if the operation failed
String? error,

/// Path of the removed file (for reference)
String? filePath,
}) = _RemoveFileResult;

factory RemoveFileResult.fromJson(Map<String, dynamic> json) =>
_$RemoveFileResultFromJson(json);
}

/// Extension with execution logic for RemoveFileTask
extension RemoveFileTaskExecutor on RemoveFileTask {
/// Executes the file removal operation
///
/// [fs] - Filesystem repository for performing operations
/// [cancel] - Optional cancellation token
Future<RemoveFileResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
try {
// Validate input
if (fileId.isEmpty) {
throw ArgumentError('File ID cannot be empty');
}

// Get the file entry
final entry = await fs.getEntry(fileId);
if (entry == null) {
return RemoveFileResult(
removedFileId: fileId,
success: false,
error: 'File not found with ID: $fileId',
);
}

// Validate that it's actually a file
if (entry is! FsFile) {
return RemoveFileResult(
removedFileId: fileId,
success: false,
error: 'Entry is not a file: ${entry.kind}',
filePath: entry.path,
);
}

// Check cancellation
cancel?.throwIfCancellationRequested();

// Perform the removal based on mode
if (hardDelete) {
await fs.deleteEntry(fileId, permanent: true);
} else {
await fs.deleteEntry(fileId, permanent: false);
}

return RemoveFileResult(
removedFileId: fileId,
success: true,
filePath: entry.path,
);
} catch (e) {
return RemoveFileResult(
removedFileId: fileId,
success: false,
error: 'Failed to remove file: $e',
);
}
}
}

/// Abstract filesystem repository interface for dependency injection
abstract class FsRepository {
Future<FsEntry?> getEntry(String id);
Future<void> deleteEntry(String id, {bool permanent});
}

/// Simple cancellation token for async operations
class CancellationToken {
bool _cancelled = false;

bool get isCancelled => _cancelled;

void cancel() {
_cancelled = true;
}

void throwIfCancellationRequested() {
if (_cancelled) {
throw Exception('Operation cancelled');
}
}
}
