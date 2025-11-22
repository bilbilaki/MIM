// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rename_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RenameFileTaskImpl _$$RenameFileTaskImplFromJson(Map<String, dynamic> json) =>
    _$RenameFileTaskImpl(
      fileId: json['fileId'] as String,
      newName: json['newName'] as String,
    );

Map<String, dynamic> _$$RenameFileTaskImplToJson(
  _$RenameFileTaskImpl instance,
) => <String, dynamic>{'fileId': instance.fileId, 'newName': instance.newName};

_$RenameFileResultImpl _$$RenameFileResultImplFromJson(
  Map<String, dynamic> json,
) => _$RenameFileResultImpl(
  file: FsFile.fromJson(json['file'] as Map<String, dynamic>),
  oldName: json['oldName'] as String,
  newName: json['newName'] as String,
);

Map<String, dynamic> _$$RenameFileResultImplToJson(
  _$RenameFileResultImpl instance,
) => <String, dynamic>{
  'file': instance.file,
  'oldName': instance.oldName,
  'newName': instance.newName,
};
