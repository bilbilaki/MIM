// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignFileTaskImpl _$$SignFileTaskImplFromJson(Map<String, dynamic> json) =>
    _$SignFileTaskImpl(
      fileId: json['fileId'] as String,
      signingParams: json['signingParams'] as Map<String, dynamic>,
      createSeparateSignature:
          json['createSeparateSignature'] as bool? ?? false,
      targetFolderId: json['targetFolderId'] as String?,
      signatureFileName: json['signatureFileName'] as String?,
    );

Map<String, dynamic> _$$SignFileTaskImplToJson(_$SignFileTaskImpl instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'signingParams': instance.signingParams,
      'createSeparateSignature': instance.createSeparateSignature,
      'targetFolderId': instance.targetFolderId,
      'signatureFileName': instance.signatureFileName,
    };

_$SignFileResultImpl _$$SignFileResultImplFromJson(Map<String, dynamic> json) =>
    _$SignFileResultImpl(
      signedEntryId: json['signedEntryId'] as String,
      algorithm: json['algorithm'] as String,
      signedAt: DateTime.parse(json['signedAt'] as String),
      signatureData: json['signatureData'] as String?,
      certificateInfo: json['certificateInfo'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SignFileResultImplToJson(
  _$SignFileResultImpl instance,
) => <String, dynamic>{
  'signedEntryId': instance.signedEntryId,
  'algorithm': instance.algorithm,
  'signedAt': instance.signedAt.toIso8601String(),
  'signatureData': instance.signatureData,
  'certificateInfo': instance.certificateInfo,
};
