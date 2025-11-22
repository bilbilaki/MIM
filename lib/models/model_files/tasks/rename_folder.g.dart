// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rename_folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RenameFolderTaskImpl _$$RenameFolderTaskImplFromJson(
  Map<String, dynamic> json,
) => _$RenameFolderTaskImpl(
  folderId: json['folderId'] as String,
  newName: json['newName'] as String,
);

Map<String, dynamic> _$$RenameFolderTaskImplToJson(
  _$RenameFolderTaskImpl instance,
) => <String, dynamic>{
  'folderId': instance.folderId,
  'newName': instance.newName,
};

_$RenameFolderResultImpl _$$RenameFolderResultImplFromJson(
  Map<String, dynamic> json,
) => _$RenameFolderResultImpl(
  oldFolder: FsFolder.fromJson(json['oldFolder'] as Map<String, dynamic>),
  newFolder: FsFolder.fromJson(json['newFolder'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$RenameFolderResultImplToJson(
  _$RenameFolderResultImpl instance,
) => <String, dynamic>{
  'oldFolder': instance.oldFolder,
  'newFolder': instance.newFolder,
};
