// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'install_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstallFileResultImpl _$$InstallFileResultImplFromJson(
  Map<String, dynamic> json,
) => _$InstallFileResultImpl(
  success: json['success'] as bool,
  installedEntryId: json['installedEntryId'] as String?,
  message: json['message'] as String?,
  errorCode: json['errorCode'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$InstallFileResultImplToJson(
  _$InstallFileResultImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'installedEntryId': instance.installedEntryId,
  'message': instance.message,
  'errorCode': instance.errorCode,
  'metadata': instance.metadata,
};

_$InstallFileTaskImpl _$$InstallFileTaskImplFromJson(
  Map<String, dynamic> json,
) => _$InstallFileTaskImpl(
  sourceFileId: json['sourceFileId'] as String,
  platformParams: json['platformParams'] as Map<String, dynamic>,
  options:
      json['options'] as Map<String, dynamic>? ?? const <String, dynamic>{},
);

Map<String, dynamic> _$$InstallFileTaskImplToJson(
  _$InstallFileTaskImpl instance,
) => <String, dynamic>{
  'sourceFileId': instance.sourceFileId,
  'platformParams': instance.platformParams,
  'options': instance.options,
};
