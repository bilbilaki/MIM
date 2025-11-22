import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';

part 'index_files.freezed.dart';
part 'index_files.g.dart';

/// Result of indexing operation
@freezed
class IndexFilesResult with _$IndexFilesResult {
const factory IndexFilesResult({
/// Number of entries indexed
required int entriesIndexed,

/// Number of folders processed
required int foldersProcessed,

/// Number of files processed
required int filesProcessed,

/// Total size of indexed content in bytes
required int totalSizeBytes,

/// Index version or timestamp
required DateTime indexTimestamp,

/// List of encountered errors during indexing
@Default(<String>[]) List<String> errors,

/// Whether content indexing was performed
@Default(false) bool contentIndexed,
}) = _IndexFilesResult;

factory IndexFilesResult.fromJson(Map<String, dynamic> json) =>
_$IndexFilesResultFromJson(json);
}

/// Options for indexing behavior
@freezed
class IndexingOptions with _$IndexingOptions {
const factory IndexingOptions({
/// Whether to index file contents (text extraction)
@Default(false) bool indexContent,

/// Maximum file size for content indexing in bytes
@Default(10485760) int maxContentSizeBytes,

/// File kinds to exclude from indexing
@Default(<FileKind>[]) List<FileKind> excludedKinds,

/// Whether to generate thumbnails during indexing
@Default(false) bool generateThumbnails,

/// Whether to compute file hashes during indexing
@Default(false) bool computeHashes,
}) = _IndexingOptions;

factory IndexingOptions.fromJson(Map<String, dynamic> json) =>
_$IndexingOptionsFromJson(json);
}

/// Task for indexing filesystem entries for fast search
@freezed
class IndexFilesTask with _$IndexFilesTask {
const IndexFilesTask._();

const factory IndexFilesTask({
/// Root folder ID to start indexing from (null for entire storage)
required String? rootFolderId,

/// Indexing behavior options
@Default(const IndexingOptions()) IndexingOptions options,
}) = _IndexFilesTask;

factory IndexFilesTask.fromJson(Map<String, dynamic> json) =>
_$IndexFilesTaskFromJson(json);

/// Execute the indexing operation
Future<IndexFilesResult> run(
FsRepository fs, {
CancellationToken? cancel,
}) async {
// Validate inputs
if (rootFolderId != null) {
final rootEntry = await fs.getEntry(rootFolderId!);
if (rootEntry == null) {
throw ArgumentError('Root folder with id $rootFolderId not found');
}
if (rootEntry is! FsFolder) {
throw ArgumentError('Root entry must be a folder, got ${rootEntry.kind}');
}
}

// Use a mutable accumulator for index results
final stats = _IndexStats();

// Start indexing from root or entire storage
if (rootFolderId != null) {
await _indexFolder(fs, rootFolderId!, stats, options, cancel);
} else {
// Index entire storage - get all root level entries
final roots = await fs.getRootEntries();
for (final root in roots) {
if (cancel?.isCancelled == true) break;

if (root is FsFolder) {
await _indexFolder(fs, root.id, stats, options, cancel);
} else {
await _indexFile(fs, root, stats, options);
}
}
}

// Convert mutable stats to immutable result
return IndexFilesResult(
entriesIndexed: stats.entriesIndexed,
foldersProcessed: stats.foldersProcessed,
filesProcessed: stats.filesProcessed,
totalSizeBytes: stats.totalSizeBytes,
indexTimestamp: DateTime.now(),
);
}

Future<void> _indexFolder(
FsRepository fs,
String folderId,
_IndexStats stats,
IndexingOptions options,
CancellationToken? cancel,
) async {
final folder = await fs.getEntry(folderId);
if (folder == null || folder is! FsFolder) return;

stats.foldersProcessed++;

// Index folder metadata
await fs.updateIndex(folder, options: options);

// Recursively index children
for (final childRef in folder.data.children) {
if (cancel?.isCancelled == true) break;

final child = await fs.getEntry(childRef.id);
if (child != null) {
if (child is FsFolder) {
await _indexFolder(fs, child.id, stats, options, cancel);
} else {
await _indexFile(fs, child, stats, options);
}
}
}
}

Future<void> _indexFile(
FsRepository fs,
FsEntry entry,
_IndexStats stats,
IndexingOptions options,
) async {
if (options.excludedKinds.contains(entry.kind)) return;

stats.filesProcessed++;
stats.entriesIndexed++;

// Update total size
if (entry.base.sizeBytes != null) {
stats.totalSizeBytes += entry.base.sizeBytes!;
}

// Index file metadata and optionally content
await fs.updateIndex(entry, options: options);
}
}

/// Mutable helper class for accumulating index statistics
class _IndexStats {
int entriesIndexed = 0;
int foldersProcessed = 0;
int filesProcessed = 0;
int totalSizeBytes = 0;
}

/// Abstract filesystem repository for dependency injection
abstract class FsRepository {
Future<FsEntry?> getEntry(String id);
Future<List<FsEntry>> getRootEntries();
Future<void> updateIndex(
FsEntry entry, {
required IndexingOptions options,
});
}

/// Cancellation token for async operations
abstract class CancellationToken {
bool get isCancelled;
}
