// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LinkPreviewImpl _$$LinkPreviewImplFromJson(Map<String, dynamic> json) =>
    _$LinkPreviewImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      thumbnailEntryId: json['thumbnailEntryId'] as String?,
      mimeType: json['mimeType'] as String?,
      sizeBytes: (json['sizeBytes'] as num?)?.toInt(),
      custom:
          json['custom'] as Map<String, dynamic>? ?? const <String, dynamic>{},
    );

Map<String, dynamic> _$$LinkPreviewImplToJson(_$LinkPreviewImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'thumbnailEntryId': instance.thumbnailEntryId,
      'mimeType': instance.mimeType,
      'sizeBytes': instance.sizeBytes,
      'custom': instance.custom,
    };

_$LinkPreviewTaskImpl _$$LinkPreviewTaskImplFromJson(
  Map<String, dynamic> json,
) => _$LinkPreviewTaskImpl(
  entryId: json['entryId'] as String,
  thumbnailSize: (json['thumbnailSize'] as num?)?.toInt() ?? 256,
  extractContent: json['extractContent'] as bool? ?? false,
  maxContentLength: (json['maxContentLength'] as num?)?.toInt() ?? 500,
);

Map<String, dynamic> _$$LinkPreviewTaskImplToJson(
  _$LinkPreviewTaskImpl instance,
) => <String, dynamic>{
  'entryId': instance.entryId,
  'thumbnailSize': instance.thumbnailSize,
  'extractContent': instance.extractContent,
  'maxContentLength': instance.maxContentLength,
};

_$LinkPreviewResultImpl _$$LinkPreviewResultImplFromJson(
  Map<String, dynamic> json,
) => _$LinkPreviewResultImpl(
  preview: LinkPreview.fromJson(json['preview'] as Map<String, dynamic>),
  entryId: json['entryId'] as String,
  success: json['success'] as bool,
  error: json['error'] as String?,
);

Map<String, dynamic> _$$LinkPreviewResultImplToJson(
  _$LinkPreviewResultImpl instance,
) => <String, dynamic>{
  'preview': instance.preview,
  'entryId': instance.entryId,
  'success': instance.success,
  'error': instance.error,
};
