// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decrypt_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DecryptFileTaskImpl _$$DecryptFileTaskImplFromJson(
  Map<String, dynamic> json,
) => _$DecryptFileTaskImpl(
  sourceFileId: json['sourceFileId'] as String,
  targetFolderId: json['targetFolderId'] as String,
  newName: json['newName'] as String?,
  overwrite: json['overwrite'] as bool? ?? false,
  decryptionParams:
      json['decryptionParams'] as Map<String, dynamic>? ??
      const <String, dynamic>{},
);

Map<String, dynamic> _$$DecryptFileTaskImplToJson(
  _$DecryptFileTaskImpl instance,
) => <String, dynamic>{
  'sourceFileId': instance.sourceFileId,
  'targetFolderId': instance.targetFolderId,
  'newName': instance.newName,
  'overwrite': instance.overwrite,
  'decryptionParams': instance.decryptionParams,
};

_$DecryptFileResultImpl _$$DecryptFileResultImplFromJson(
  Map<String, dynamic> json,
) => _$DecryptFileResultImpl(
  decryptedFileId: json['decryptedFileId'] as String,
  decryptedFilePath: json['decryptedFilePath'] as String,
  originalFileId: json['originalFileId'] as String,
  decryptedSizeBytes: (json['decryptedSizeBytes'] as num).toInt(),
  success: json['success'] as bool? ?? true,
  error: json['error'] as String?,
);

Map<String, dynamic> _$$DecryptFileResultImplToJson(
  _$DecryptFileResultImpl instance,
) => <String, dynamic>{
  'decryptedFileId': instance.decryptedFileId,
  'decryptedFilePath': instance.decryptedFilePath,
  'originalFileId': instance.originalFileId,
  'decryptedSizeBytes': instance.decryptedSizeBytes,
  'success': instance.success,
  'error': instance.error,
};
