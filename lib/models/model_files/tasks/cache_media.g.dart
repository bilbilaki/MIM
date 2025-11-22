// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CacheMediaEntryResultImpl _$$CacheMediaEntryResultImplFromJson(
  Map<String, dynamic> json,
) => _$CacheMediaEntryResultImpl(
  entryId: json['entryId'] as String,
  success: json['success'] as bool,
  error: json['error'] as String?,
  metadataUpdated: json['metadataUpdated'] as bool? ?? false,
  thumbnailUpdated: json['thumbnailUpdated'] as bool? ?? false,
);

Map<String, dynamic> _$$CacheMediaEntryResultImplToJson(
  _$CacheMediaEntryResultImpl instance,
) => <String, dynamic>{
  'entryId': instance.entryId,
  'success': instance.success,
  'error': instance.error,
  'metadataUpdated': instance.metadataUpdated,
  'thumbnailUpdated': instance.thumbnailUpdated,
};

_$CacheMediaResultImpl _$$CacheMediaResultImplFromJson(
  Map<String, dynamic> json,
) => _$CacheMediaResultImpl(
  entryResults: (json['entryResults'] as List<dynamic>)
      .map((e) => CacheMediaEntryResult.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalProcessed: (json['totalProcessed'] as num?)?.toInt() ?? 0,
  successful: (json['successful'] as num?)?.toInt() ?? 0,
  failed: (json['failed'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$CacheMediaResultImplToJson(
  _$CacheMediaResultImpl instance,
) => <String, dynamic>{
  'entryResults': instance.entryResults,
  'totalProcessed': instance.totalProcessed,
  'successful': instance.successful,
  'failed': instance.failed,
};

_$CacheMediaTaskImpl _$$CacheMediaTaskImplFromJson(Map<String, dynamic> json) =>
    _$CacheMediaTaskImpl(
      mediaEntryIds: (json['mediaEntryIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      generateThumbnails: json['generateThumbnails'] as bool? ?? true,
      extractMetadata: json['extractMetadata'] as bool? ?? true,
      thumbnailSize: (json['thumbnailSize'] as num?)?.toInt() ?? 256,
      forceRefresh: json['forceRefresh'] as bool? ?? false,
    );

Map<String, dynamic> _$$CacheMediaTaskImplToJson(
  _$CacheMediaTaskImpl instance,
) => <String, dynamic>{
  'mediaEntryIds': instance.mediaEntryIds,
  'generateThumbnails': instance.generateThumbnails,
  'extractMetadata': instance.extractMetadata,
  'thumbnailSize': instance.thumbnailSize,
  'forceRefresh': instance.forceRefresh,
};
