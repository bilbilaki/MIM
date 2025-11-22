import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';
import '../../model_core/fs_file_data.dart';

part 'extract_video.freezed.dart';
part 'extract_video.g.dart';

/// Represents a video segment to extract from a source video
@freezed
class VideoSegment with _$VideoSegment {
const factory VideoSegment({
/// Start time of the segment in seconds
required double startTime,

/// End time of the segment in seconds
required double endTime,

/// Optional name for this segment
String? name,

/// Optional output format/extension
String? outputFormat,
}) = _VideoSegment;

factory VideoSegment.fromJson(Map<String, dynamic> json) =>
_$VideoSegmentFromJson(json);
}

/// Result of a video extraction operation
@freezed
class ExtractVideoResult with _$ExtractVideoResult {
const factory ExtractVideoResult({
/// ID of the source video that was processed
required String sourceVideoId,

/// List of successfully extracted video clip entries
@Default(<FsEntry>[]) List<FsEntry> extractedClips,

/// List of segments that failed to extract
@Default(<VideoSegment>[]) List<VideoSegment> failedSegments,

/// Total duration of extracted content in seconds
@Default(0.0) double totalExtractedDuration,
}) = _ExtractVideoResult;

factory ExtractVideoResult.fromJson(Map<String, dynamic> json) =>
_$ExtractVideoResultFromJson(json);
}

/// Task for extracting video segments from a source video file
@freezed
class ExtractVideoTask with _$ExtractVideoTask {
const ExtractVideoTask._();

const factory ExtractVideoTask({
/// ID of the source video file to extract segments from
required String sourceVideoId,

/// Target folder where extracted clips will be placed
required String targetFolderId,

/// List of video segments to extract
required List<VideoSegment> segments,

/// Optional base name for extracted clips (will be appended with segment info)
String? baseName,

/// Output video format/extension (e.g., 'mp4', 'avi')
@Default('mp4') String outputFormat,

/// Quality setting for extracted clips
@Default('medium') String quality,
}) = _ExtractVideoTask;

factory ExtractVideoTask.fromJson(Map<String, dynamic> json) =>
_$ExtractVideoTaskFromJson(json);

/// Executes the video extraction task
///
/// [fs] - Filesystem repository for entry operations
/// [videoService] - Service for video processing operations
/// [cancel] - Optional cancellation token
Future<ExtractVideoResult> run(
FsRepository fs, {
required VideoProcessingService videoService,
CancellationToken? cancel,
}) async {
// Validate source video exists and is a video file
final sourceEntry = await fs.getById(sourceVideoId);
if (sourceEntry == null) {
throw ArgumentError('Source video not found: $sourceVideoId');
}

if (sourceEntry is! FsFile) {
throw ArgumentError('Source must be a file, not a folder: $sourceVideoId');
}

if (sourceEntry.kind != FileKind.video) {
throw ArgumentError('Source must be a video file: ${sourceEntry.kind}');
}

// Validate target folder exists
final targetFolder = await fs.getById(targetFolderId);
if (targetFolder == null) {
throw ArgumentError('Target folder not found: $targetFolderId');
}

if (targetFolder is! FsFolder) {
throw ArgumentError('Target must be a folder: $targetFolderId');
}

// Validate segments
if (segments.isEmpty) {
throw ArgumentError('At least one video segment must be specified');
}

for (final segment in segments) {
if (segment.startTime < 0) {
throw ArgumentError('Segment start time cannot be negative');
}
if (segment.endTime <= segment.startTime) {
throw ArgumentError('Segment end time must be after start time');
}
}

final extractedClips = <FsEntry>[];
final failedSegments = <VideoSegment>[];
var totalDuration = 0.0;

// Process each segment
for (final segment in segments) {
cancel?.throwIfCancellationRequested();

try {
// Generate clip name
final clipName = _generateClipName(segment, baseName);

// Extract segment using video service
final extractedPath = await videoService.extractSegment(
sourcePath: sourceEntry.data.location,
startTime: segment.startTime,
endTime: segment.endTime,
outputName: clipName,
outputFormat: segment.outputFormat ?? outputFormat,
quality: quality,
);

// Create filesystem entry for the extracted clip
final clipEntry = await fs.createFile(
parentFolderId: targetFolderId,
name: '$clipName.${segment.outputFormat ?? outputFormat}',
kind: FileKind.video,
location: extractedPath,
sourceEntryId: sourceVideoId,
);

extractedClips.add(clipEntry);
totalDuration += (segment.endTime - segment.startTime);
} catch (e) {
failedSegments.add(segment);
// Continue with other segments even if one fails
}
}

return ExtractVideoResult(
sourceVideoId: sourceVideoId,
extractedClips: extractedClips,
failedSegments: failedSegments,
totalExtractedDuration: totalDuration,
);
}

String _generateClipName(VideoSegment segment, String? baseName) {
if (segment.name != null) return segment.name!;

final base = baseName ?? 'clip';
final start = segment.startTime.toStringAsFixed(1);
final end = segment.endTime.toStringAsFixed(1);

return '${base}_${start}s_${end}s';
}
}

/// Abstract service for video processing operations
abstract class VideoProcessingService {
Future<StorageLocation> extractSegment({
required StorageLocation sourcePath,
required double startTime,
required double endTime,
required String outputName,
required String outputFormat,
required String quality,
});
}

/// Abstract filesystem repository interface
abstract class FsRepository {
Future<FsEntry?> getById(String id);
Future<FsEntry> createFile({
required String parentFolderId,
required String name,
required FileKind kind,
required StorageLocation location,
String? sourceEntryId,
});
}

/// Cancellation token for async operations
abstract class CancellationToken {
bool get isCancelled;
void throwIfCancellationRequested();
}
