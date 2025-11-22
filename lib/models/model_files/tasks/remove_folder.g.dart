// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoveFolderResultImpl _$$RemoveFolderResultImplFromJson(
  Map<String, dynamic> json,
) => _$RemoveFolderResultImpl(
  folderId: json['folderId'] as String,
  entriesRemoved: (json['entriesRemoved'] as num).toInt(),
  success: json['success'] as bool,
  error: json['error'] as String?,
);

Map<String, dynamic> _$$RemoveFolderResultImplToJson(
  _$RemoveFolderResultImpl instance,
) => <String, dynamic>{
  'folderId': instance.folderId,
  'entriesRemoved': instance.entriesRemoved,
  'success': instance.success,
  'error': instance.error,
};

_$RemoveFolderTaskImpl _$$RemoveFolderTaskImplFromJson(
  Map<String, dynamic> json,
) => _$RemoveFolderTaskImpl(
  folderId: json['folderId'] as String,
  softDelete: json['softDelete'] as bool? ?? false,
  requireEmpty: json['requireEmpty'] as bool? ?? false,
);

Map<String, dynamic> _$$RemoveFolderTaskImplToJson(
  _$RemoveFolderTaskImpl instance,
) => <String, dynamic>{
  'folderId': instance.folderId,
  'softDelete': instance.softDelete,
  'requireEmpty': instance.requireEmpty,
};
