import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';

part 'hash_check.freezed.dart';
part 'hash_check.g.dart';

/// Result of a single file hash computation/verification
@freezed
class HashCheckResult with _$HashCheckResult {
const factory HashCheckResult({
/// The file ID that was processed
required String fileId,

/// Computed hash value (hex string)
String? computedHash,

/// Expected hash value for verification (optional)
String? expectedHash,

/// Whether the computed hash matches the expected hash
bool? matches,

/// Error message if hash computation failed
String? error,

/// Algorithm used for hashing
required String algorithm,
}) = _HashCheckResult;

factory HashCheckResult.fromJson(Map<String, dynamic> json) =>
_$HashCheckResultFromJson(json);
}

/// Task for computing or verifying file hashes
@freezed
class HashCheckTask with _$HashCheckTask {
const HashCheckTask._();

const factory HashCheckTask({
/// IDs of files to hash/verify
required List<String> fileIds,

/// Hash algorithm to use (e.g., 'md5', 'sha1', 'sha256')
@Default('sha256') String algorithm,

/// Optional expected hashes for verification, keyed by file ID
@Default(<String, String>{}) Map<String, String> expectedHashes,
}) = _HashCheckTask;

factory HashCheckTask.fromJson(Map<String, dynamic> json) =>
_$HashCheckTaskFromJson(json);

/// Executes the hash computation/verification task
Future<List<HashCheckResult>> run(
Future<String> Function(String fileId, String algorithm) hashComputer, {
Future<FsEntry> Function(String id)? entryGetter,
}) async {
final results = <HashCheckResult>[];

for (final fileId in fileIds) {
try {
// Optional: validate file exists and is actually a file
if (entryGetter != null) {
final entry = await entryGetter(fileId);
if (entry is! FsFile) {
results.add(HashCheckResult(
fileId: fileId,
algorithm: algorithm,
error: 'Entry is not a file',
));
continue;
}
}

// Compute hash
final computedHash = await hashComputer(fileId, algorithm);
final expectedHash = expectedHashes[fileId];

results.add(HashCheckResult(
fileId: fileId,
computedHash: computedHash,
expectedHash: expectedHash,
matches: expectedHash != null ? computedHash == expectedHash : null,
algorithm: algorithm,
));
} catch (e) {
results.add(HashCheckResult(
fileId: fileId,
algorithm: algorithm,
error: e.toString(),
));
}
}

return results;
}
}
