import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry_union.dart';
import '../../model_core/fs_entry.dart';

part 'extract_audio.freezed.dart';
part 'extract_audio.g.dart';

/// Task for extracting audio track from a video file.
@freezed
class ExtractAudioTask with _$ExtractAudioTask {
const ExtractAudioTask._();

const factory ExtractAudioTask({
/// Source video file ID
required String videoFileId,

/// Target folder ID where extracted audio will be placed
required String targetFolderId,

/// Output audio format (e.g., 'mp3', 'wav', 'aac')
@Default('mp3') String outputFormat,

/// Optional output file name (without extension)
String? outputName,

/// Optional time range to extract (start time in seconds)
double? startTime,

/// Optional time range to extract (end time in seconds)
double? endTime,

/// Audio quality parameters (bitrate, sample rate, etc.)
@Default(<String, dynamic>{}) Map<String, dynamic> audioParams,
}) = _ExtractAudioTask;

factory ExtractAudioTask.fromJson(Map<String, dynamic> json) =>
_$ExtractAudioTaskFromJson(json);
}

/// Result of audio extraction operation
@freezed
class ExtractAudioResult with _$ExtractAudioResult {
const factory ExtractAudioResult({
/// ID of the newly created audio file
required String audioFileId,

/// Path to the extracted audio file
required String audioFilePath,

/// Duration of the extracted audio in seconds
double? durationSeconds,

/// Size of the extracted audio file in bytes
int? fileSizeBytes,

/// Any warnings or additional info about the extraction
@Default(<String>[]) List<String> warnings,
}) = _ExtractAudioResult;

factory ExtractAudioResult.fromJson(Map<String, dynamic> json) =>
_$ExtractAudioResultFromJson(json);
}

/// Extension methods for task execution
extension ExtractAudioTaskExecutor on ExtractAudioTask {
/// Execute the audio extraction task
///
/// [fs] - Filesystem repository for entry operations
/// [mediaService] - Service for media processing operations
/// [cancel] - Optional cancellation token
Future<ExtractAudioResult> run(
FsRepository fs, {
required MediaService mediaService,
CancellationToken? cancel,
}) async {
// Validate inputs
if (videoFileId.isEmpty) {
throw ArgumentError('Video file ID cannot be empty');
}
if (targetFolderId.isEmpty) {
throw ArgumentError('Target folder ID cannot be empty');
}
if (outputFormat.isEmpty) {
throw ArgumentError('Output format cannot be empty');
}

// Get source video entry
final videoEntry = await fs.getEntry(videoFileId);
if (videoEntry == null) {
throw StateError('Video file not found: $videoFileId');
}

// Validate source is a video file
if (videoEntry is! FsFile) {
throw StateError('Source must be a file, not a folder');
}
if (videoEntry.kind != FileKind.video) {
throw StateError('Source file must be a video, not ${videoEntry.kind}');
}

// Get target folder
final targetFolder = await fs.getEntry(targetFolderId);
if (targetFolder == null) {
throw StateError('Target folder not found: $targetFolderId');
}
if (targetFolder is! FsFolder) {
throw StateError('Target must be a folder, not a file');
}

// Validate time range if provided
if (startTime != null && startTime! < 0) {
throw ArgumentError('Start time cannot be negative');
}
if (endTime != null && endTime! < 0) {
throw ArgumentError('End time cannot be negative');
}
if (startTime != null && endTime != null && startTime! >= endTime!) {
throw ArgumentError('Start time must be before end time');
}

cancel?.throwIfCancellationRequested();

// Generate output file name
final baseName = outputName ?? videoEntry.name;
final cleanName = baseName.replaceAll(RegExp(r'\.\w+$'), '');
final outputFileName = '$cleanName.$outputFormat';

// Check for naming conflicts
final existingChild = targetFolder.data.children
    .where((child) => child.name == outputFileName)
    .firstOrNull;
if (existingChild != null) {
throw StateError('File already exists in target folder: $outputFileName');
}

// Delegate to media service for actual audio extraction
final extractionResult = await mediaService.extractAudio(
videoFile: videoEntry,
outputFolder: targetFolder,
outputFileName: outputFileName,
format: outputFormat,
startTime: startTime,
endTime: endTime,
audioParams: audioParams,
cancel: cancel,
);

// Create result with new audio file info
return ExtractAudioResult(
audioFileId: extractionResult.audioFile.id,
audioFilePath: extractionResult.audioFile.path,
durationSeconds: extractionResult.durationSeconds,
fileSizeBytes: extractionResult.audioFile.base.sizeBytes,
warnings: extractionResult.warnings,
);
}
}

/// Abstract dependencies (to be implemented by concrete services)
abstract class FsRepository {
Future<FsEntry?> getEntry(String id);
Future<List<FsEntry>> getEntries(List<String> ids);
// ... other filesystem operations
}

abstract class MediaService {
Future<AudioExtractionResult> extractAudio({
required FsFile videoFile,
required FsFolder outputFolder,
required String outputFileName,
required String format,
double? startTime,
double? endTime,
Map<String, dynamic> audioParams,
CancellationToken? cancel,
});
}

class AudioExtractionResult {
final FsFile audioFile;
final double? durationSeconds;
final List<String> warnings;

AudioExtractionResult({
required this.audioFile,
this.durationSeconds,
this.warnings = const [],
});
}

class CancellationToken {
bool get isCancellationRequested => false;
void throwIfCancellationRequested() {}
}
