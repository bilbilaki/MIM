// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_file_opration_remove.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchFileRemoveTaskImpl _$$BatchFileRemoveTaskImplFromJson(
  Map<String, dynamic> json,
) => _$BatchFileRemoveTaskImpl(
  entryIds: (json['entryIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  mode:
      $enumDecodeNullable(_$RemoveModeEnumMap, json['mode']) ?? RemoveMode.soft,
  force: json['force'] as bool? ?? false,
);

Map<String, dynamic> _$$BatchFileRemoveTaskImplToJson(
  _$BatchFileRemoveTaskImpl instance,
) => <String, dynamic>{
  'entryIds': instance.entryIds,
  'mode': _$RemoveModeEnumMap[instance.mode]!,
  'force': instance.force,
};

const _$RemoveModeEnumMap = {RemoveMode.soft: 'soft', RemoveMode.hard: 'hard'};

_$BatchFileRemoveResultImpl _$$BatchFileRemoveResultImplFromJson(
  Map<String, dynamic> json,
) => _$BatchFileRemoveResultImpl(
  totalCount: (json['totalCount'] as num).toInt(),
  removedCount: (json['removedCount'] as num).toInt(),
  failedCount: (json['failedCount'] as num).toInt(),
  entries: (json['entries'] as List<dynamic>)
      .map((e) => RemoveEntryResult.fromJson(e as Map<String, dynamic>))
      .toList(),
  summary: json['summary'] as String?,
);

Map<String, dynamic> _$$BatchFileRemoveResultImplToJson(
  _$BatchFileRemoveResultImpl instance,
) => <String, dynamic>{
  'totalCount': instance.totalCount,
  'removedCount': instance.removedCount,
  'failedCount': instance.failedCount,
  'entries': instance.entries,
  'summary': instance.summary,
};

_$RemoveEntryResultImpl _$$RemoveEntryResultImplFromJson(
  Map<String, dynamic> json,
) => _$RemoveEntryResultImpl(
  entryId: json['entryId'] as String,
  success: json['success'] as bool,
  error: json['error'] as String?,
  removedEntry: json['removedEntry'] == null
      ? null
      : FsEntry.fromJson(json['removedEntry'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$RemoveEntryResultImplToJson(
  _$RemoveEntryResultImpl instance,
) => <String, dynamic>{
  'entryId': instance.entryId,
  'success': instance.success,
  'error': instance.error,
  'removedEntry': instance.removedEntry,
};
