// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CopyFileResultImpl _$$CopyFileResultImplFromJson(Map<String, dynamic> json) =>
    _$CopyFileResultImpl(
      copiedFileId: json['copiedFileId'] as String,
      targetPath: json['targetPath'] as String,
      success: json['success'] as bool,
      error: json['error'] as String?,
      copiedSize: (json['copiedSize'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CopyFileResultImplToJson(
  _$CopyFileResultImpl instance,
) => <String, dynamic>{
  'copiedFileId': instance.copiedFileId,
  'targetPath': instance.targetPath,
  'success': instance.success,
  'error': instance.error,
  'copiedSize': instance.copiedSize,
};

_$CopyFileTaskImpl _$$CopyFileTaskImplFromJson(Map<String, dynamic> json) =>
    _$CopyFileTaskImpl(
      sourceFileId: json['sourceFileId'] as String,
      targetFolderId: json['targetFolderId'] as String,
      newName: json['newName'] as String?,
      conflictPolicy:
          $enumDecodeNullable(
            _$CopyConflictPolicyEnumMap,
            json['conflictPolicy'],
          ) ??
          CopyConflictPolicy.fail,
    );

Map<String, dynamic> _$$CopyFileTaskImplToJson(_$CopyFileTaskImpl instance) =>
    <String, dynamic>{
      'sourceFileId': instance.sourceFileId,
      'targetFolderId': instance.targetFolderId,
      'newName': instance.newName,
      'conflictPolicy': _$CopyConflictPolicyEnumMap[instance.conflictPolicy]!,
    };

const _$CopyConflictPolicyEnumMap = {
  CopyConflictPolicy.fail: 'fail',
  CopyConflictPolicy.overwrite: 'overwrite',
  CopyConflictPolicy.rename: 'rename',
  CopyConflictPolicy.skip: 'skip',
};
