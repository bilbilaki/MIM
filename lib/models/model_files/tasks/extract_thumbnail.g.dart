// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extract_thumbnail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtractThumbnailTaskImpl _$$ExtractThumbnailTaskImplFromJson(
  Map<String, dynamic> json,
) => _$ExtractThumbnailTaskImpl(
  sourceEntryId: json['sourceEntryId'] as String,
  maxWidth: (json['maxWidth'] as num).toInt(),
  maxHeight: (json['maxHeight'] as num).toInt(),
  quality: (json['quality'] as num?)?.toDouble() ?? 0.8,
  thumbnailName: json['thumbnailName'] as String?,
  targetFolderId: json['targetFolderId'] as String?,
);

Map<String, dynamic> _$$ExtractThumbnailTaskImplToJson(
  _$ExtractThumbnailTaskImpl instance,
) => <String, dynamic>{
  'sourceEntryId': instance.sourceEntryId,
  'maxWidth': instance.maxWidth,
  'maxHeight': instance.maxHeight,
  'quality': instance.quality,
  'thumbnailName': instance.thumbnailName,
  'targetFolderId': instance.targetFolderId,
};

_$ExtractThumbnailResultImpl _$$ExtractThumbnailResultImplFromJson(
  Map<String, dynamic> json,
) => _$ExtractThumbnailResultImpl(
  thumbnailId: json['thumbnailId'] as String,
  thumbnailPath: json['thumbnailPath'] as String,
  dimensions: ThumbnailDimensions.fromJson(
    json['dimensions'] as Map<String, dynamic>,
  ),
  sourceEntryId: json['sourceEntryId'] as String,
);

Map<String, dynamic> _$$ExtractThumbnailResultImplToJson(
  _$ExtractThumbnailResultImpl instance,
) => <String, dynamic>{
  'thumbnailId': instance.thumbnailId,
  'thumbnailPath': instance.thumbnailPath,
  'dimensions': instance.dimensions,
  'sourceEntryId': instance.sourceEntryId,
};

_$ThumbnailDimensionsImpl _$$ThumbnailDimensionsImplFromJson(
  Map<String, dynamic> json,
) => _$ThumbnailDimensionsImpl(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
);

Map<String, dynamic> _$$ThumbnailDimensionsImplToJson(
  _$ThumbnailDimensionsImpl instance,
) => <String, dynamic>{'width': instance.width, 'height': instance.height};
