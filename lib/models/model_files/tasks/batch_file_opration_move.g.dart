// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_file_opration_move.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchFileMoveResultImpl _$$BatchFileMoveResultImplFromJson(
  Map<String, dynamic> json,
) => _$BatchFileMoveResultImpl(
  movedCount: (json['movedCount'] as num).toInt(),
  skippedCount: (json['skippedCount'] as num).toInt(),
  failedCount: (json['failedCount'] as num).toInt(),
  entryResults: (json['entryResults'] as List<dynamic>)
      .map((e) => BatchFileMoveEntryResult.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$BatchFileMoveResultImplToJson(
  _$BatchFileMoveResultImpl instance,
) => <String, dynamic>{
  'movedCount': instance.movedCount,
  'skippedCount': instance.skippedCount,
  'failedCount': instance.failedCount,
  'entryResults': instance.entryResults,
};

_$BatchFileMoveEntryResultImpl _$$BatchFileMoveEntryResultImplFromJson(
  Map<String, dynamic> json,
) => _$BatchFileMoveEntryResultImpl(
  sourceId: json['sourceId'] as String,
  status: $enumDecode(_$BatchMoveStatusEnumMap, json['status']),
  movedId: json['movedId'] as String?,
  error: json['error'] as String?,
);

Map<String, dynamic> _$$BatchFileMoveEntryResultImplToJson(
  _$BatchFileMoveEntryResultImpl instance,
) => <String, dynamic>{
  'sourceId': instance.sourceId,
  'status': _$BatchMoveStatusEnumMap[instance.status]!,
  'movedId': instance.movedId,
  'error': instance.error,
};

const _$BatchMoveStatusEnumMap = {
  BatchMoveStatus.moved: 'moved',
  BatchMoveStatus.skipped: 'skipped',
  BatchMoveStatus.failed: 'failed',
};

_$BatchFileMoveTaskImpl _$$BatchFileMoveTaskImplFromJson(
  Map<String, dynamic> json,
) => _$BatchFileMoveTaskImpl(
  sourceEntryIds: (json['sourceEntryIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  targetFolderId: json['targetFolderId'] as String,
  conflictPolicy:
      $enumDecodeNullable(
        _$MoveConflictPolicyEnumMap,
        json['conflictPolicy'],
      ) ??
      MoveConflictPolicy.rename,
);

Map<String, dynamic> _$$BatchFileMoveTaskImplToJson(
  _$BatchFileMoveTaskImpl instance,
) => <String, dynamic>{
  'sourceEntryIds': instance.sourceEntryIds,
  'targetFolderId': instance.targetFolderId,
  'conflictPolicy': _$MoveConflictPolicyEnumMap[instance.conflictPolicy]!,
};

const _$MoveConflictPolicyEnumMap = {
  MoveConflictPolicy.overwrite: 'overwrite',
  MoveConflictPolicy.skip: 'skip',
  MoveConflictPolicy.rename: 'rename',
};
