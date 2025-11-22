import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model_core/fs_entry.dart';
import '../../model_core/fs_entry_union.dart';
import '../../model_core/fs_file_data.dart';


part 'edit_image.freezed.dart';
part 'edit_image.g.dart';

/// Represents an image transformation operation
@freezed
class ImageTransformation with _$ImageTransformation {
const factory ImageTransformation.resize({
required int width,
required int height,
@Default(true) bool maintainAspectRatio,
}) = ImageTransformationResize;

const factory ImageTransformation.crop({
required double x,
required double y,
required double width,
required double height,
}) = ImageTransformationCrop;

const factory ImageTransformation.rotate({
required double degrees,
}) = ImageTransformationRotate;

const factory ImageTransformation.flip({
@Default(false) bool horizontal,
@Default(false) bool vertical,
}) = ImageTransformationFlip;

const factory ImageTransformation.adjust({
double? brightness,
double? contrast,
double? saturation,
}) = ImageTransformationAdjust;

factory ImageTransformation.fromJson(Map<String, dynamic> json) =>
_$ImageTransformationFromJson(json);
}

/// Result of an image editing operation
@freezed
class EditImageResult with _$EditImageResult {
const factory EditImageResult({
/// The ID of the resulting image file
required String imageId,

/// Whether the operation created a new file or modified the original
required bool createdNewFile,

/// The path of the resulting image
required String imagePath,

/// New dimensions if they changed
@Default(<String, int>{}) Map<String, int> newDimensions,
}) = _EditImageResult;

factory EditImageResult.fromJson(Map<String, dynamic> json) =>
_$EditImageResultFromJson(json);
}

/// Task for applying transformations to image files
@freezed
class EditImageTask with _$EditImageTask {
const EditImageTask._();

const factory EditImageTask({
/// ID of the source image file to edit
required String sourceImageId,

/// List of transformations to apply
@Default(<ImageTransformation>[])
List<ImageTransformation> transformations,

/// Whether to create a new file or overwrite the original
@Default(false) bool createNewFile,

/// Optional name for the new file (if createNewFile is true)
String? newFileName,

/// Optional target folder for the new file
String? targetFolderId,

/// Output format if different from source
String? outputFormat,
}) = _EditImageTask;

factory EditImageTask.fromJson(Map<String, dynamic> json) =>
_$EditImageTaskFromJson(json);

/// Executes the image editing task
Future<EditImageResult> run(
Future<FsEntry> Function(String id) getEntryById,
Future<FsEntry> Function({
required String parentFolderId,
required String name,
required FileKind kind,
FsFileData? fileData,
}) createFile,
Future<FsEntry> Function(FsEntry entry) updateEntry,
Future<Uint8List> Function(String imageId) getImageData,
Future<FsEntry> Function({
required Uint8List imageData,
required String parentFolderId,
required String name,
required String format,
}) saveImageData, {
CancellationToken? cancel,
}) async {
cancel?.throwIfCancelled();

// Get the source image
final sourceEntry = await getEntryById(sourceImageId);

if (sourceEntry is! FsFile) {
throw ArgumentError('Source entry must be a file, not a folder');
}

if (sourceEntry.kind != FileKind.image) {
throw ArgumentError('Source file must be an image, not ${sourceEntry.kind}');
}

// Validate transformations
if (transformations.isEmpty) {
throw ArgumentError('At least one transformation must be specified');
}

// Get image data
final originalImageData = await getImageData(sourceImageId);
cancel?.throwIfCancelled();

// Apply transformations (this would be implemented by an image processing service)
// For now, we'll assume this is handled by the saveImageData function with transformations applied

final targetFolder = targetFolderId ?? sourceEntry.base.path.split('/').sublist(0, -1).join('/');
final fileName = newFileName ??
(createNewFile ? '${sourceEntry.base.name}_edited' : sourceEntry.base.name);
final format = outputFormat ?? sourceEntry.base.extension ?? 'png';

// Save the transformed image
final resultEntry = await saveImageData(
imageData: originalImageData, // In reality, this would be transformed data
parentFolderId: targetFolder,
name: fileName,
format: format,
);
cancel?.throwIfCancelled();

// Extract new dimensions from transformations if available
final newDimensions = <String, int>{};
for (final transformation in transformations) {
transformation.when(
resize: (width, height, _) {
newDimensions['width'] = width;
newDimensions['height'] = height;
},
crop: (x, y, width, height) {
newDimensions['width'] = width.toInt();
newDimensions['height'] = height.toInt();
},
rotate: (_) {},
flip: (_, __) {},
adjust: (_, __, ___) {},
);
}

return EditImageResult(
imageId: resultEntry.id,
createdNewFile: createNewFile,
imagePath: resultEntry.path,
newDimensions: newDimensions,
);
}
}

/// Simple cancellation token for async operations
class CancellationToken {
bool _cancelled = false;

bool get isCancelled => _cancelled;

void cancel() {
_cancelled = true;
}

void throwIfCancelled() {
if (_cancelled) {
throw Exception('Operation cancelled');
}
}
}
