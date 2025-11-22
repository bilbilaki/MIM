// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypt_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EncryptFileTaskImpl _$$EncryptFileTaskImplFromJson(
  Map<String, dynamic> json,
) => _$EncryptFileTaskImpl(
  sourceFileId: json['sourceFileId'] as String,
  algorithm: json['algorithm'] as String,
  encryptionParams: json['encryptionParams'] as Map<String, dynamic>,
  overwriteOriginal: json['overwriteOriginal'] as bool? ?? false,
  targetFolderId: json['targetFolderId'] as String?,
  encryptedFileName: json['encryptedFileName'] as String?,
  conflictPolicy:
      $enumDecodeNullable(
        _$EncryptConflictPolicyEnumMap,
        json['conflictPolicy'],
      ) ??
      EncryptConflictPolicy.rename,
);

Map<String, dynamic> _$$EncryptFileTaskImplToJson(
  _$EncryptFileTaskImpl instance,
) => <String, dynamic>{
  'sourceFileId': instance.sourceFileId,
  'algorithm': instance.algorithm,
  'encryptionParams': instance.encryptionParams,
  'overwriteOriginal': instance.overwriteOriginal,
  'targetFolderId': instance.targetFolderId,
  'encryptedFileName': instance.encryptedFileName,
  'conflictPolicy': _$EncryptConflictPolicyEnumMap[instance.conflictPolicy]!,
};

const _$EncryptConflictPolicyEnumMap = {
  EncryptConflictPolicy.rename: 'rename',
  EncryptConflictPolicy.overwrite: 'overwrite',
  EncryptConflictPolicy.skip: 'skip',
  EncryptConflictPolicy.error: 'error',
};

_$EncryptFileResultImpl _$$EncryptFileResultImplFromJson(
  Map<String, dynamic> json,
) => _$EncryptFileResultImpl(
  encryptedFileId: json['encryptedFileId'] as String,
  encryptedFilePath: json['encryptedFilePath'] as String,
  createdNewFile: json['createdNewFile'] as bool,
  originalFileId: json['originalFileId'] as String,
  algorithm: json['algorithm'] as String,
  metadata:
      json['metadata'] as Map<String, dynamic>? ?? const <String, dynamic>{},
);

Map<String, dynamic> _$$EncryptFileResultImplToJson(
  _$EncryptFileResultImpl instance,
) => <String, dynamic>{
  'encryptedFileId': instance.encryptedFileId,
  'encryptedFilePath': instance.encryptedFilePath,
  'createdNewFile': instance.createdNewFile,
  'originalFileId': instance.originalFileId,
  'algorithm': instance.algorithm,
  'metadata': instance.metadata,
};
