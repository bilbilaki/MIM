// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateFolderTaskImpl _$$CreateFolderTaskImplFromJson(
  Map<String, dynamic> json,
) => _$CreateFolderTaskImpl(
  parentFolderId: json['parentFolderId'] as String,
  name: json['name'] as String,
  meta: json['meta'] == null
      ? null
      : EntryMeta.fromJson(json['meta'] as Map<String, dynamic>),
  access: json['access'] == null
      ? null
      : EntryAccess.fromJson(json['access'] as Map<String, dynamic>),
  timestamps: json['timestamps'] == null
      ? null
      : EntryTimestamps.fromJson(json['timestamps'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CreateFolderTaskImplToJson(
  _$CreateFolderTaskImpl instance,
) => <String, dynamic>{
  'parentFolderId': instance.parentFolderId,
  'name': instance.name,
  'meta': instance.meta,
  'access': instance.access,
  'timestamps': instance.timestamps,
};

_$CreateFolderResultImpl _$$CreateFolderResultImplFromJson(
  Map<String, dynamic> json,
) => _$CreateFolderResultImpl(
  folder: FsFolder.fromJson(json['folder'] as Map<String, dynamic>),
  success: json['success'] as bool,
  error: json['error'] as String?,
);

Map<String, dynamic> _$$CreateFolderResultImplToJson(
  _$CreateFolderResultImpl instance,
) => <String, dynamic>{
  'folder': instance.folder,
  'success': instance.success,
  'error': instance.error,
};
