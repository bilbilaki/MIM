// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extract_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoSegmentImpl _$$VideoSegmentImplFromJson(Map<String, dynamic> json) =>
    _$VideoSegmentImpl(
      startTime: (json['startTime'] as num).toDouble(),
      endTime: (json['endTime'] as num).toDouble(),
      name: json['name'] as String?,
      outputFormat: json['outputFormat'] as String?,
    );

Map<String, dynamic> _$$VideoSegmentImplToJson(_$VideoSegmentImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'name': instance.name,
      'outputFormat': instance.outputFormat,
    };

_$ExtractVideoResultImpl _$$ExtractVideoResultImplFromJson(
  Map<String, dynamic> json,
) => _$ExtractVideoResultImpl(
  sourceVideoId: json['sourceVideoId'] as String,
  extractedClips:
      (json['extractedClips'] as List<dynamic>?)
          ?.map((e) => FsEntry.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <FsEntry>[],
  failedSegments:
      (json['failedSegments'] as List<dynamic>?)
          ?.map((e) => VideoSegment.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <VideoSegment>[],
  totalExtractedDuration:
      (json['totalExtractedDuration'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$$ExtractVideoResultImplToJson(
  _$ExtractVideoResultImpl instance,
) => <String, dynamic>{
  'sourceVideoId': instance.sourceVideoId,
  'extractedClips': instance.extractedClips,
  'failedSegments': instance.failedSegments,
  'totalExtractedDuration': instance.totalExtractedDuration,
};

_$ExtractVideoTaskImpl _$$ExtractVideoTaskImplFromJson(
  Map<String, dynamic> json,
) => _$ExtractVideoTaskImpl(
  sourceVideoId: json['sourceVideoId'] as String,
  targetFolderId: json['targetFolderId'] as String,
  segments: (json['segments'] as List<dynamic>)
      .map((e) => VideoSegment.fromJson(e as Map<String, dynamic>))
      .toList(),
  baseName: json['baseName'] as String?,
  outputFormat: json['outputFormat'] as String? ?? 'mp4',
  quality: json['quality'] as String? ?? 'medium',
);

Map<String, dynamic> _$$ExtractVideoTaskImplToJson(
  _$ExtractVideoTaskImpl instance,
) => <String, dynamic>{
  'sourceVideoId': instance.sourceVideoId,
  'targetFolderId': instance.targetFolderId,
  'segments': instance.segments,
  'baseName': instance.baseName,
  'outputFormat': instance.outputFormat,
  'quality': instance.quality,
};
