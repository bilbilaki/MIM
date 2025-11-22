// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extract_audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtractAudioTaskImpl _$$ExtractAudioTaskImplFromJson(
  Map<String, dynamic> json,
) => _$ExtractAudioTaskImpl(
  videoFileId: json['videoFileId'] as String,
  targetFolderId: json['targetFolderId'] as String,
  outputFormat: json['outputFormat'] as String? ?? 'mp3',
  outputName: json['outputName'] as String?,
  startTime: (json['startTime'] as num?)?.toDouble(),
  endTime: (json['endTime'] as num?)?.toDouble(),
  audioParams:
      json['audioParams'] as Map<String, dynamic>? ?? const <String, dynamic>{},
);

Map<String, dynamic> _$$ExtractAudioTaskImplToJson(
  _$ExtractAudioTaskImpl instance,
) => <String, dynamic>{
  'videoFileId': instance.videoFileId,
  'targetFolderId': instance.targetFolderId,
  'outputFormat': instance.outputFormat,
  'outputName': instance.outputName,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'audioParams': instance.audioParams,
};

_$ExtractAudioResultImpl _$$ExtractAudioResultImplFromJson(
  Map<String, dynamic> json,
) => _$ExtractAudioResultImpl(
  audioFileId: json['audioFileId'] as String,
  audioFilePath: json['audioFilePath'] as String,
  durationSeconds: (json['durationSeconds'] as num?)?.toDouble(),
  fileSizeBytes: (json['fileSizeBytes'] as num?)?.toInt(),
  warnings:
      (json['warnings'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$$ExtractAudioResultImplToJson(
  _$ExtractAudioResultImpl instance,
) => <String, dynamic>{
  'audioFileId': instance.audioFileId,
  'audioFilePath': instance.audioFilePath,
  'durationSeconds': instance.durationSeconds,
  'fileSizeBytes': instance.fileSizeBytes,
  'warnings': instance.warnings,
};
