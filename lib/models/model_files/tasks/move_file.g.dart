// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoveFileTaskImpl _$$MoveFileTaskImplFromJson(Map<String, dynamic> json) =>
    _$MoveFileTaskImpl(
      fileId: json['fileId'] as String,
      targetFolderId: json['targetFolderId'] as String,
      newName: json['newName'] as String?,
      conflictPolicy:
          $enumDecodeNullable(
            _$MoveConflictPolicyEnumMap,
            json['conflictPolicy'],
          ) ??
          MoveConflictPolicy.rename,
    );

Map<String, dynamic> _$$MoveFileTaskImplToJson(_$MoveFileTaskImpl instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'targetFolderId': instance.targetFolderId,
      'newName': instance.newName,
      'conflictPolicy': _$MoveConflictPolicyEnumMap[instance.conflictPolicy]!,
    };

const _$MoveConflictPolicyEnumMap = {
  MoveConflictPolicy.overwrite: 'overwrite',
  MoveConflictPolicy.rename: 'rename',
  MoveConflictPolicy.skip: 'skip',
  MoveConflictPolicy.error: 'error',
};
