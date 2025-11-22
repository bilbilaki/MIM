// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoveFolderTaskImpl _$$MoveFolderTaskImplFromJson(Map<String, dynamic> json) =>
    _$MoveFolderTaskImpl(
      folderId: json['folderId'] as String,
      targetParentFolderId: json['targetParentFolderId'] as String,
      newName: json['newName'] as String?,
    );

Map<String, dynamic> _$$MoveFolderTaskImplToJson(
  _$MoveFolderTaskImpl instance,
) => <String, dynamic>{
  'folderId': instance.folderId,
  'targetParentFolderId': instance.targetParentFolderId,
  'newName': instance.newName,
};

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
  movedFolder: FsFolder.fromJson(json['movedFolder'] as Map<String, dynamic>),
  movedEntryCount: (json['movedEntryCount'] as num).toInt(),
  errors:
      (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'movedFolder': instance.movedFolder,
      'movedEntryCount': instance.movedEntryCount,
      'errors': instance.errors,
    };
