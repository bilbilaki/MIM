import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';
import '../../model_core/fs_file_data.dart';


part 'cache_media.freezed.dart';
part 'cache_media.g.dart';

/// Result of caching media metadata for a single entry
@freezed
class CacheMediaEntryResult with _$CacheMediaEntryResult {
const factory CacheMediaEntryResult({
/// The ID of the media entry that was processed
required String entryId,

/// Whether caching was successful
required bool success,

/// Error message if caching failed
String? error,

/// Whether metadata was actually updated (false if already cached)
@Default(false) bool metadataUpdated,

/// Whether thumbnail was generated/updated
@Default(false) bool thumbnailUpdated,
}) = _CacheMediaEntryResult;

factory CacheMediaEntryResult.fromJson(Map<String, dynamic> json) =>
_$CacheMediaEntryResultFromJson(json);
}

/// Result of the overall cache media operation
@freezed
class CacheMediaResult with _$CacheMediaResult {
const factory CacheMediaResult({
/// Results for each individual media entry
required List<CacheMediaEntryResult> entryResults,

/// Total number of entries processed
@Default(0) int totalProcessed,

/// Number of entries successfully cached
@Default(0) int successful,

/// Number of entries that failed
@Default(0) int failed,
}) = _CacheMediaResult;

factory CacheMediaResult.fromJson(Map<String, dynamic> json) =>
_$CacheMediaResultFromJson(json);
}

/// Task to pre-cache media-specific data (thumbnails, duration, codecs, etc.)
@freezed
class CacheMediaTask with _$CacheMediaTask {
const CacheMediaTask._();

const factory CacheMediaTask({
/// IDs of media entries to cache (images, videos, audio)
required List<String> mediaEntryIds,

/// Whether to generate thumbnails
@Default(true) bool generateThumbnails,

/// Whether to extract detailed metadata
@Default(true) bool extractMetadata,

/// Thumbnail size parameters (width, height)
@Default(256) int thumbnailSize,

/// Force refresh even if already cached
@Default(false) bool forceRefresh,
}) = _CacheMediaTask;

factory CacheMediaTask.fromJson(Map<String, dynamic> json) =>
_$CacheMediaTaskFromJson(json);

/// Execute the cache media operation
///
/// [fs] - Filesystem repository for entry operations
/// [mediaService] - Service for media processing (thumbnail generation, metadata extraction)
/// [cancel] - Optional cancellation token
Future<CacheMediaResult> run(
FsRepository fs,
MediaProcessingService mediaService, {
CancellationToken? cancel,
}) async {
final results = <CacheMediaEntryResult>[];
int successful = 0;
int failed = 0;

for (final entryId in mediaEntryIds) {
if (cancel?.isCancelled == true) {
break;
}

try {
// Get the entry from repository
final entry = await fs.getEntryById(entryId);
if (entry == null) {
results.add(CacheMediaEntryResult(
entryId: entryId,
success: false,
error: 'Entry not found',
));
failed++;
continue;
}

// Validate that entry is a media file
if (!entry.isFile) {
results.add(CacheMediaEntryResult(
entryId: entryId,
success: false,
error: 'Entry is not a file',
));
failed++;
continue;
}

final file = entry as FsFile;

// Check if this is a media type that supports caching
if (!_isMediaKind(file.kind)) {
results.add(CacheMediaEntryResult(
entryId: entryId,
success: false,
error: 'Entry is not a media file (kind: ${file.kind})',
));
failed++;
continue;
}

bool metadataUpdated = false;
bool thumbnailUpdated = false;

// Extract metadata if requested and entry supports it
if (extractMetadata) {
final metadataResult = await mediaService.extractMetadata(
file,
force: forceRefresh,
);
if (metadataResult != null) {
metadataUpdated = true;
// Update entry with new metadata via repository
await fs.updateEntryMetadata(entryId, metadataResult);
}
}

// Generate thumbnail if requested and entry supports it
if (generateThumbnails && _supportsThumbnails(file.kind)) {
final thumbnailResult = await mediaService.generateThumbnail(
file,
size: thumbnailSize,
force: forceRefresh,
);
if (thumbnailResult != null) {
thumbnailUpdated = true;
// Store thumbnail reference via repository
await fs.storeThumbnail(entryId, thumbnailResult);
}
}

results.add(CacheMediaEntryResult(
entryId: entryId,
success: true,
metadataUpdated: metadataUpdated,
thumbnailUpdated: thumbnailUpdated,
));
successful++;

} catch (e) {
results.add(CacheMediaEntryResult(
entryId: entryId,
success: false,
error: e.toString(),
));
failed++;
}
}

return CacheMediaResult(
entryResults: results,
totalProcessed: mediaEntryIds.length,
successful: successful,
failed: failed,
);
}

/// Check if the file kind is a media type that supports caching
bool _isMediaKind(FileKind kind) {
return kind == FileKind.image ||
kind == FileKind.audio ||
kind == FileKind.video;
}

/// Check if the file kind supports thumbnail generation
bool _supportsThumbnails(FileKind kind) {
return kind == FileKind.image || kind == FileKind.video;
}
}

/// Abstract service for media processing operations
abstract class MediaProcessingService {
/// Extract metadata from a media file
Future<FileTypeMeta?> extractMetadata(FsFile file, {bool force = false});

/// Generate a thumbnail for a media file
Future<ThumbnailResult?> generateThumbnail(
FsFile file, {
int size = 256,
bool force = false,
});
}

/// Result of thumbnail generation
class ThumbnailResult {
final String thumbnailId;
final String storagePath;
final int width;
final int height;
final String format;

const ThumbnailResult({
required this.thumbnailId,
required this.storagePath,
required this.width,
required this.height,
required this.format,
});
}

/// Abstract filesystem repository interface
abstract class FsRepository {
Future<FsEntry?> getEntryById(String id);
Future<void> updateEntryMetadata(String entryId, FileTypeMeta metadata);
Future<void> storeThumbnail(String entryId, ThumbnailResult thumbnail);
}

/// Cancellation token for async operations
class CancellationToken {
bool _cancelled = false;

bool get isCancelled => _cancelled;

void cancel() {
_cancelled = true;
}
}
