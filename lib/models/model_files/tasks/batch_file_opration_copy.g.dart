// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_file_opration_copy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchCopyResultImpl _$$BatchCopyResultImplFromJson(
  Map<String, dynamic> json,
) => _$BatchCopyResultImpl(
  sourceId: json['sourceId'] as String,
  targetId: json['targetId'] as String?,
  targetPath: json['targetPath'] as String?,
  success: json['success'] as bool,
  error: json['error'] as String?,
);

Map<String, dynamic> _$$BatchCopyResultImplToJson(
  _$BatchCopyResultImpl instance,
) => <String, dynamic>{
  'sourceId': instance.sourceId,
  'targetId': instance.targetId,
  'targetPath': instance.targetPath,
  'success': instance.success,
  'error': instance.error,
};

_$BatchFileCopyTaskImpl _$$BatchFileCopyTaskImplFromJson(
  Map<String, dynamic> json,
) => _$BatchFileCopyTaskImpl(
  sourceEntryIds: (json['sourceEntryIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  targetFolderId: json['targetFolderId'] as String,
  conflictPolicy:
      $enumDecodeNullable(
        _$CopyConflictPolicyEnumMap,
        json['conflictPolicy'],
      ) ??
      CopyConflictPolicy.rename,
  recursive: json['recursive'] as bool? ?? true,
);

Map<String, dynamic> _$$BatchFileCopyTaskImplToJson(
  _$BatchFileCopyTaskImpl instance,
) => <String, dynamic>{
  'sourceEntryIds': instance.sourceEntryIds,
  'targetFolderId': instance.targetFolderId,
  'conflictPolicy': _$CopyConflictPolicyEnumMap[instance.conflictPolicy]!,
  'recursive': instance.recursive,
};

const _$CopyConflictPolicyEnumMap = {
  CopyConflictPolicy.overwrite: 'overwrite',
  CopyConflictPolicy.skip: 'skip',
  CopyConflictPolicy.rename: 'rename',
};
