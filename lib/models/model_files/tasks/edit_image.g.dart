// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageTransformationResizeImpl _$$ImageTransformationResizeImplFromJson(
  Map<String, dynamic> json,
) => _$ImageTransformationResizeImpl(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  maintainAspectRatio: json['maintainAspectRatio'] as bool? ?? true,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$ImageTransformationResizeImplToJson(
  _$ImageTransformationResizeImpl instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'maintainAspectRatio': instance.maintainAspectRatio,
  'runtimeType': instance.$type,
};

_$ImageTransformationCropImpl _$$ImageTransformationCropImplFromJson(
  Map<String, dynamic> json,
) => _$ImageTransformationCropImpl(
  x: (json['x'] as num).toDouble(),
  y: (json['y'] as num).toDouble(),
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$ImageTransformationCropImplToJson(
  _$ImageTransformationCropImpl instance,
) => <String, dynamic>{
  'x': instance.x,
  'y': instance.y,
  'width': instance.width,
  'height': instance.height,
  'runtimeType': instance.$type,
};

_$ImageTransformationRotateImpl _$$ImageTransformationRotateImplFromJson(
  Map<String, dynamic> json,
) => _$ImageTransformationRotateImpl(
  degrees: (json['degrees'] as num).toDouble(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$ImageTransformationRotateImplToJson(
  _$ImageTransformationRotateImpl instance,
) => <String, dynamic>{
  'degrees': instance.degrees,
  'runtimeType': instance.$type,
};

_$ImageTransformationFlipImpl _$$ImageTransformationFlipImplFromJson(
  Map<String, dynamic> json,
) => _$ImageTransformationFlipImpl(
  horizontal: json['horizontal'] as bool? ?? false,
  vertical: json['vertical'] as bool? ?? false,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$ImageTransformationFlipImplToJson(
  _$ImageTransformationFlipImpl instance,
) => <String, dynamic>{
  'horizontal': instance.horizontal,
  'vertical': instance.vertical,
  'runtimeType': instance.$type,
};

_$ImageTransformationAdjustImpl _$$ImageTransformationAdjustImplFromJson(
  Map<String, dynamic> json,
) => _$ImageTransformationAdjustImpl(
  brightness: (json['brightness'] as num?)?.toDouble(),
  contrast: (json['contrast'] as num?)?.toDouble(),
  saturation: (json['saturation'] as num?)?.toDouble(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$ImageTransformationAdjustImplToJson(
  _$ImageTransformationAdjustImpl instance,
) => <String, dynamic>{
  'brightness': instance.brightness,
  'contrast': instance.contrast,
  'saturation': instance.saturation,
  'runtimeType': instance.$type,
};

_$EditImageResultImpl _$$EditImageResultImplFromJson(
  Map<String, dynamic> json,
) => _$EditImageResultImpl(
  imageId: json['imageId'] as String,
  createdNewFile: json['createdNewFile'] as bool,
  imagePath: json['imagePath'] as String,
  newDimensions:
      (json['newDimensions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ) ??
      const <String, int>{},
);

Map<String, dynamic> _$$EditImageResultImplToJson(
  _$EditImageResultImpl instance,
) => <String, dynamic>{
  'imageId': instance.imageId,
  'createdNewFile': instance.createdNewFile,
  'imagePath': instance.imagePath,
  'newDimensions': instance.newDimensions,
};

_$EditImageTaskImpl _$$EditImageTaskImplFromJson(Map<String, dynamic> json) =>
    _$EditImageTaskImpl(
      sourceImageId: json['sourceImageId'] as String,
      transformations:
          (json['transformations'] as List<dynamic>?)
              ?.map(
                (e) => ImageTransformation.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <ImageTransformation>[],
      createNewFile: json['createNewFile'] as bool? ?? false,
      newFileName: json['newFileName'] as String?,
      targetFolderId: json['targetFolderId'] as String?,
      outputFormat: json['outputFormat'] as String?,
    );

Map<String, dynamic> _$$EditImageTaskImplToJson(_$EditImageTaskImpl instance) =>
    <String, dynamic>{
      'sourceImageId': instance.sourceImageId,
      'transformations': instance.transformations,
      'createNewFile': instance.createNewFile,
      'newFileName': instance.newFileName,
      'targetFolderId': instance.targetFolderId,
      'outputFormat': instance.outputFormat,
    };
