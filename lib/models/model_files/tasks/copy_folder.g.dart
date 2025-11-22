// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CopyFolderResultImpl _$$CopyFolderResultImplFromJson(
  Map<String, dynamic> json,
) => _$CopyFolderResultImpl(
  copiedFolder: FsFolder.fromJson(json['copiedFolder'] as Map<String, dynamic>),
  filesCopied: (json['filesCopied'] as num).toInt(),
  foldersCopied: (json['foldersCopied'] as num).toInt(),
  totalSizeBytes: (json['totalSizeBytes'] as num).toInt(),
  errors:
      (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$$CopyFolderResultImplToJson(
  _$CopyFolderResultImpl instance,
) => <String, dynamic>{
  'copiedFolder': instance.copiedFolder,
  'filesCopied': instance.filesCopied,
  'foldersCopied': instance.foldersCopied,
  'totalSizeBytes': instance.totalSizeBytes,
  'errors': instance.errors,
};

_$CopyFolderTaskImpl _$$CopyFolderTaskImplFromJson(Map<String, dynamic> json) =>
    _$CopyFolderTaskImpl(
      sourceFolderId: json['sourceFolderId'] as String,
      targetParentFolderId: json['targetParentFolderId'] as String,
      newName: json['newName'] as String?,
      conflictPolicy:
          $enumDecodeNullable(
            _$CopyConflictPolicyEnumMap,
            json['conflictPolicy'],
          ) ??
          CopyConflictPolicy.rename,
    );

Map<String, dynamic> _$$CopyFolderTaskImplToJson(
  _$CopyFolderTaskImpl instance,
) => <String, dynamic>{
  'sourceFolderId': instance.sourceFolderId,
  'targetParentFolderId': instance.targetParentFolderId,
  'newName': instance.newName,
  'conflictPolicy': _$CopyConflictPolicyEnumMap[instance.conflictPolicy]!,
};

const _$CopyConflictPolicyEnumMap = {
  CopyConflictPolicy.overwrite: 'overwrite',
  CopyConflictPolicy.skip: 'skip',
  CopyConflictPolicy.rename: 'rename',
  CopyConflictPolicy.error: 'error',
};
