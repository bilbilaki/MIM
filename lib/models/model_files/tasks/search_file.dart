import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';

part 'search_file.freezed.dart';
part 'search_file.g.dart';

/// Task for searching files by metadata (name, path, tags, kind, etc.)
@freezed
class SearchFileTask with _$SearchFileTask {
const SearchFileTask._();

const factory SearchFileTask({
/// Search query string for matching against names, paths, and tags
required String query,

/// Optional file kinds to filter by
@Default(<FileKind>[]) List<FileKind> kinds,

/// Optional file extensions to filter by
@Default(<String>[]) List<String> extensions,

/// Optional size range in bytes (min, max)
@Default(<int?>[null, null]) List<int?> sizeRange,

/// Optional tags to filter by
@Default(<String>[]) List<String> tags,

/// Optional status filter
EntryStatus? status,

/// Whether to search recursively from root folders
@Default(true) bool recursive,

/// Maximum number of results to return
@Default(100) int maxResults,
}) = _SearchFileTask;

factory SearchFileTask.fromJson(Map<String, dynamic> json) =>
_$SearchFileTaskFromJson(json);

/// Executes the search operation
Future<SearchFileResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
// Validate inputs
if (query.trim().isEmpty) {
throw ArgumentError('Search query cannot be empty');
}

if (sizeRange.length != 2) {
throw ArgumentError('Size range must contain exactly 2 elements [min, max]');
}

final results = <String>[]; // List of matching entry IDs
var searchCount = 0;

// Perform the search using the filesystem repository
await fs.searchEntries(
query: query,
kinds: kinds.isNotEmpty ? kinds : null,
extensions: extensions.isNotEmpty ? extensions : null,
minSize: sizeRange[0],
maxSize: sizeRange[1],
tags: tags.isNotEmpty ? tags : null,
status: status,
recursive: recursive,
onMatch: (entryId) {
if (cancel?.isCancelled == true) {
return false; // Stop searching if cancelled
}

searchCount++;
if (results.length < maxResults) {
results.add(entryId);
}
return results.length < maxResults; // Continue if we have room for more results
},
);

return SearchFileResult(
matches: results,
totalSearched: searchCount,
query: query,
);
}
}

/// Result of a file search operation
@freezed
class SearchFileResult with _$SearchFileResult {
const factory SearchFileResult({
/// List of matching entry IDs
required List<String> matches,

/// Total number of entries that were searched
required int totalSearched,

/// The original search query
required String query,

/// Optional error message if the search was partially or fully unsuccessful
String? error,
}) = _SearchFileResult;

factory SearchFileResult.fromJson(Map<String, dynamic> json) =>
_$SearchFileResultFromJson(json);
}

/// Abstract filesystem repository for search operations
abstract class FsRepository {
/// Searches for entries matching the given criteria
/// Calls [onMatch] for each matching entry until it returns false or all entries are searched
Future<void> searchEntries({
required String query,
List<FileKind>? kinds,
List<String>? extensions,
int? minSize,
int? maxSize,
List<String>? tags,
EntryStatus? status,
bool recursive = true,
required bool Function(String entryId) onMatch,
});
}

/// Token for cancelling asynchronous operations
class CancellationToken {
bool _isCancelled = false;

bool get isCancelled => _isCancelled;

void cancel() {
_isCancelled = true;
}
}
