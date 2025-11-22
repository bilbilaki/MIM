// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symlink_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SymlinkFileTaskImpl _$$SymlinkFileTaskImplFromJson(
  Map<String, dynamic> json,
) => _$SymlinkFileTaskImpl(
  targetEntryId: json['targetEntryId'] as String,
  targetFolderId: json['targetFolderId'] as String,
  name: json['name'] as String?,
);

Map<String, dynamic> _$$SymlinkFileTaskImplToJson(
  _$SymlinkFileTaskImpl instance,
) => <String, dynamic>{
  'targetEntryId': instance.targetEntryId,
  'targetFolderId': instance.targetFolderId,
  'name': instance.name,
};

_$SymlinkFileResultImpl _$$SymlinkFileResultImplFromJson(
  Map<String, dynamic> json,
) => _$SymlinkFileResultImpl(
  symlinkEntry: FsEntry.fromJson(json['symlinkEntry'] as Map<String, dynamic>),
  targetEntryId: json['targetEntryId'] as String,
);

Map<String, dynamic> _$$SymlinkFileResultImplToJson(
  _$SymlinkFileResultImpl instance,
) => <String, dynamic>{
  'symlinkEntry': instance.symlinkEntry,
  'targetEntryId': instance.targetEntryId,
};
