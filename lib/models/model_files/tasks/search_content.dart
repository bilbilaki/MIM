import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';

part 'search_content.freezed.dart';
part 'search_content.g.dart';

/// Represents a single content match within a file
@freezed
class ContentMatch with _$ContentMatch {
const factory ContentMatch({
/// The file ID where the match was found
required String fileId,

/// The matched text snippet
required String snippet,

/// Character offset of the match within the file
required int offset,

/// Line number where the match occurs (if applicable)
int? lineNumber,

/// Additional match metadata (score, context, etc.)
@Default(<String, dynamic>{}) Map<String, dynamic> metadata,
}) = _ContentMatch;

factory ContentMatch.fromJson(Map<String, dynamic> json) =>
_$ContentMatchFromJson(json);
}

/// Result of a content search operation
@freezed
class SearchContentResult with _$SearchContentResult {
const factory SearchContentResult({
/// List of content matches found
@Default(<ContentMatch>[]) List<ContentMatch> matches,

/// Total number of matches found
@Default(0) int totalMatches,

/// Number of files that contained matches
@Default(0) int filesWithMatches,

/// Search execution duration in milliseconds
int? durationMs,
}) = _SearchContentResult;

factory SearchContentResult.fromJson(Map<String, dynamic> json) =>
_$SearchContentResultFromJson(json);
}

/// Task for searching inside file contents
@freezed
class SearchContentTask with _$SearchContentTask {
const SearchContentTask._();

const factory SearchContentTask({
/// Search query string or pattern
required String query,

/// File IDs to search within (empty = search all accessible files)
@Default(<String>[]) List<String> scopeEntryIds,

/// File kinds to include in search (empty = all kinds)
@Default(<FileKind>[]) List<FileKind> fileKinds,

/// Whether to search case sensitively
@Default(false) bool caseSensitive,

/// Maximum number of matches to return per file
@Default(100) int maxMatchesPerFile,

/// Maximum number of files to search
@Default(1000) int maxFiles,

/// Additional search parameters
@Default(<String, dynamic>{}) Map<String, dynamic> options,
}) = _SearchContentTask;

factory SearchContentTask.fromJson(Map<String, dynamic> json) =>
_$SearchContentTaskFromJson(json);

/// Executes the content search operation
///
/// [fs] - Filesystem repository for accessing file content
/// [contentService] - Service capable of searching within file contents
/// [cancel] - Optional cancellation token
Future<SearchContentResult> run(
FsRepository fs, {
required ContentSearchService contentService,
CancellationToken? cancel,
}) async {
// Validate inputs
if (query.isEmpty) {
throw ArgumentError('Search query cannot be empty');
}

final matches = <ContentMatch>[];
int filesWithMatches = 0;

// Get files to search
final filesToSearch = await _getFilesToSearch(fs, cancel);

// Search each file
for (final file in filesToSearch) {
if (cancel?.isCancelled == true) {
break;
}

try {
final fileMatches = await contentService.searchInFile(
fileId: file.id,
query: query,
caseSensitive: caseSensitive,
maxMatches: maxMatchesPerFile,
);

if (fileMatches.isNotEmpty) {
filesWithMatches++;
matches.addAll(fileMatches);
}
} catch (e) {
// Log error but continue with other files
// In production, you might want more sophisticated error handling
continue;
}

// Respect max files limit
if (matches.length >= maxFiles * maxMatchesPerFile) {
break;
}
}

return SearchContentResult(
matches: matches,
totalMatches: matches.length,
filesWithMatches: filesWithMatches,
);
}

/// Helper method to get the list of files to search
Future<List<FsFile>> _getFilesToSearch(
FsRepository fs,
CancellationToken? cancel,
) async {
if (scopeEntryIds.isNotEmpty) {
// Search within specific entries
final entries = await Future.wait(
scopeEntryIds.map((id) => fs.getEntry(id)),
);

return entries
.whereType<FsFile>()
.where((file) => _shouldIncludeFile(file))
.toList();
} else {
// Search all accessible files (implementation depends on repository)
// This is a simplified version - real implementation would need pagination
final allFiles = await fs.getFiles(
kinds: fileKinds.isNotEmpty ? fileKinds : null,
limit: maxFiles,
);

return allFiles.where(_shouldIncludeFile).toList();
}
}

/// Determines if a file should be included in the search based on filters
bool _shouldIncludeFile(FsFile file) {
if (fileKinds.isNotEmpty && !fileKinds.contains(file.kind)) {
return false;
}

// Additional filtering could be added here based on file metadata
// For example: file size, extension, etc.

return true;
}
}

/// Abstract service for searching within file contents
abstract class ContentSearchService {
Future<List<ContentMatch>> searchInFile({
required String fileId,
required String query,
bool caseSensitive = false,
int maxMatches = 100,
});
}

/// Abstract filesystem repository interface
abstract class FsRepository {
Future<FsEntry?> getEntry(String id);
Future<List<FsFile>> getFiles({
List<FileKind>? kinds,
int? limit,
});
// Other repository methods...
}

/// Simple cancellation token
class CancellationToken {
bool isCancelled = false;

void cancel() {
isCancelled = true;
}
}
