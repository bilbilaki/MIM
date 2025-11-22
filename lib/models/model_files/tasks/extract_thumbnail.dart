import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';
import '../../model_core/fs_file_data.dart';


part 'extract_thumbnail.freezed.dart';
part 'extract_thumbnail.g.dart';

/// Task for generating thumbnails from images or video frames.
@freezed
class ExtractThumbnailTask with _$ExtractThumbnailTask {
const ExtractThumbnailTask._();

const factory ExtractThumbnailTask({
/// ID of the source entry (image or video) to extract thumbnail from
required String sourceEntryId,

/// Maximum width of the thumbnail (maintains aspect ratio)
required int maxWidth,

/// Maximum height of the thumbnail (maintains aspect ratio)
required int maxHeight,

/// Quality setting for the thumbnail (0.0 to 1.0)
@Default(0.8) double quality,

/// Optional custom name for the thumbnail file
String? thumbnailName,

/// Optional target folder ID for the thumbnail (defaults to source folder)
String? targetFolderId,
}) = _ExtractThumbnailTask;

factory ExtractThumbnailTask.fromJson(Map<String, dynamic> json) =>
_$ExtractThumbnailTaskFromJson(json);
}

/// Result of thumbnail extraction operation
@freezed
class ExtractThumbnailResult with _$ExtractThumbnailResult {
const factory ExtractThumbnailResult({
/// ID of the generated thumbnail file
required String thumbnailId,

/// Path where the thumbnail was saved
required String thumbnailPath,

/// Actual dimensions of the generated thumbnail
required ThumbnailDimensions dimensions,

/// Source entry ID that was used to generate this thumbnail
required String sourceEntryId,
}) = _ExtractThumbnailResult;

factory ExtractThumbnailResult.fromJson(Map<String, dynamic> json) =>
_$ExtractThumbnailResultFromJson(json);
}

/// Dimensions of the generated thumbnail
@freezed
class ThumbnailDimensions with _$ThumbnailDimensions {
const factory ThumbnailDimensions({
required int width,
required int height,
}) = _ThumbnailDimensions;

factory ThumbnailDimensions.fromJson(Map<String, dynamic> json) =>
_$ThumbnailDimensionsFromJson(json);
}

/// Abstract repository interface for filesystem operations
abstract class FsRepository {
/// Get an entry by ID
Future<FsEntry> getEntry(String id);

/// Create a new file entry
Future<FsEntry> createFile({
required String parentFolderId,
required String name,
required FileKind kind,
required FsFileData fileData,
});

/// Generate thumbnail for supported media types
Future<FsFileData> generateThumbnail({
required FsEntry sourceEntry,
required int maxWidth,
required int maxHeight,
required double quality,
});
}

/// Thumbnail extraction service
class ExtractThumbnailService {
final FsRepository _fsRepository;

ExtractThumbnailService(this._fsRepository);

/// Execute the thumbnail extraction task
Future<ExtractThumbnailResult> run(
ExtractThumbnailTask task, {
CancellationToken? cancel,
}) async {
// Validate inputs
if (task.maxWidth <= 0 || task.maxHeight <= 0) {
throw ArgumentError('Thumbnail dimensions must be positive');
}
if (task.quality < 0.0 || task.quality > 1.0) {
throw ArgumentError('Quality must be between 0.0 and 1.0');
}

// Get source entry
final sourceEntry = await _fsRepository.getEntry(task.sourceEntryId);

// Validate source entry kind
if (sourceEntry is! FsFile) {
throw ArgumentError('Source entry must be a file, not a folder');
}

final supportedKinds = {
FileKind.image,
FileKind.video,
};

if (!supportedKinds.contains(sourceEntry.kind)) {
throw ArgumentError(
'Thumbnail extraction only supported for images and videos, got ${sourceEntry.kind}',
);
}

// Determine target folder
final targetFolderId = task.targetFolderId ??
sourceEntry.path.split('/').sublist(0, sourceEntry.path.split('/').length - 1).join('/');

// Generate thumbnail data
final thumbnailData = await _fsRepository.generateThumbnail(
sourceEntry: sourceEntry,
maxWidth: task.maxWidth,
maxHeight: task.maxHeight,
quality: task.quality,
);

// Create thumbnail name
final thumbnailName = task.thumbnailName ??
'${sourceEntry.name}_thumbnail_${task.maxWidth}x${task.maxHeight}.jpg';

// Create thumbnail file entry
final thumbnailEntry = await _fsRepository.createFile(
parentFolderId: targetFolderId,
name: thumbnailName,
kind: FileKind.image,
fileData: thumbnailData,
) as FsFile;

// Extract dimensions from metadata if available
ThumbnailDimensions dimensions;
final imageMeta = thumbnailEntry.data.typeMeta?.maybeMap(
image: (meta) => meta.image,
orElse: () => null,
);

if (imageMeta != null && imageMeta.width != null && imageMeta.height != null) {
dimensions = ThumbnailDimensions(
width: imageMeta.width!,
height: imageMeta.height!,
);
} else {
// Fallback to requested dimensions (actual may be smaller due to aspect ratio)
dimensions = ThumbnailDimensions(
width: task.maxWidth,
height: task.maxHeight,
);
}

return ExtractThumbnailResult(
thumbnailId: thumbnailEntry.id,
thumbnailPath: thumbnailEntry.path,
dimensions: dimensions,
sourceEntryId: task.sourceEntryId,
);
}
}

/// Token for cancelling async operations
class CancellationToken {
bool _cancelled = false;

bool get isCancelled => _cancelled;

void cancel() {
_cancelled = true;
}
}
