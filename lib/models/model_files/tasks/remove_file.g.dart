// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoveFileTaskImpl _$$RemoveFileTaskImplFromJson(Map<String, dynamic> json) =>
    _$RemoveFileTaskImpl(
      fileId: json['fileId'] as String,
      hardDelete: json['hardDelete'] as bool? ?? false,
    );

Map<String, dynamic> _$$RemoveFileTaskImplToJson(
  _$RemoveFileTaskImpl instance,
) => <String, dynamic>{
  'fileId': instance.fileId,
  'hardDelete': instance.hardDelete,
};

_$RemoveFileResultImpl _$$RemoveFileResultImplFromJson(
  Map<String, dynamic> json,
) => _$RemoveFileResultImpl(
  removedFileId: json['removedFileId'] as String,
  success: json['success'] as bool,
  error: json['error'] as String?,
  filePath: json['filePath'] as String?,
);

Map<String, dynamic> _$$RemoveFileResultImplToJson(
  _$RemoveFileResultImpl instance,
) => <String, dynamic>{
  'removedFileId': instance.removedFileId,
  'success': instance.success,
  'error': instance.error,
  'filePath': instance.filePath,
};
