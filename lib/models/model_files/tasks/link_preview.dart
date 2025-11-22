import 'package:freezed_annotation/freezed_annotation.dart';


part 'link_preview.freezed.dart';
part 'link_preview.g.dart';

/// Preview metadata for files and links
@freezed
class LinkPreview with _$LinkPreview {
const factory LinkPreview({
/// Title of the preview
required String title,

/// Optional description
String? description,

/// Optional thumbnail entry ID
String? thumbnailEntryId,

/// MIME type of the preview content
String? mimeType,

/// Size of preview data in bytes
int? sizeBytes,

/// Additional metadata specific to the preview type
@Default(<String, dynamic>{}) Map<String, dynamic> custom,
}) = _LinkPreview;

factory LinkPreview.fromJson(Map<String, dynamic> json) =>
_$LinkPreviewFromJson(json);
}

/// Task to generate preview metadata for files and links
@freezed
class LinkPreviewTask with _$LinkPreviewTask {
const factory LinkPreviewTask({
/// ID of the entry to generate preview for
required String entryId,

/// Optional target size for generated thumbnails
@Default(256) int thumbnailSize,

/// Whether to extract content for text-based files
@Default(false) bool extractContent,

/// Maximum length for extracted content preview
@Default(500) int maxContentLength,
}) = _LinkPreviewTask;

factory LinkPreviewTask.fromJson(Map<String, dynamic> json) =>
_$LinkPreviewTaskFromJson(json);
}

/// Result of link preview generation
@freezed
class LinkPreviewResult with _$LinkPreviewResult {
const factory LinkPreviewResult({
/// The generated preview metadata
required LinkPreview preview,

/// ID of the original entry
required String entryId,

/// Whether preview was successfully generated
required bool success,

/// Error message if generation failed
String? error,
}) = _LinkPreviewResult;

factory LinkPreviewResult.fromJson(Map<String, dynamic> json) =>
_$LinkPreviewResultFromJson(json);
}

extension LinkPreviewTaskX on LinkPreviewTask {
/// Execute the link preview generation task
Future<LinkPreviewResult> run(
Future<LinkPreview> Function(String entryId, int thumbnailSize, bool extractContent, int maxContentLength) generatePreview,
) async {
try {
final preview = await generatePreview(entryId, thumbnailSize, extractContent, maxContentLength);
return LinkPreviewResult(
preview: preview,
entryId: entryId,
success: true,
);
} catch (e) {
return LinkPreviewResult(
preview: LinkPreview(title: 'Error'),
entryId: entryId,
success: false,
error: e.toString(),
);
}
}
}
