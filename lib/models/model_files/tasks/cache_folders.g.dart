// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_folders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CacheFoldersTaskImpl _$$CacheFoldersTaskImplFromJson(
  Map<String, dynamic> json,
) => _$CacheFoldersTaskImpl(
  folderIds: (json['folderIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  recursive: json['recursive'] as bool? ?? false,
  computeSizes: json['computeSizes'] as bool? ?? true,
  updateChildren: json['updateChildren'] as bool? ?? true,
  maxDepth: (json['maxDepth'] as num?)?.toInt(),
);

Map<String, dynamic> _$$CacheFoldersTaskImplToJson(
  _$CacheFoldersTaskImpl instance,
) => <String, dynamic>{
  'folderIds': instance.folderIds,
  'recursive': instance.recursive,
  'computeSizes': instance.computeSizes,
  'updateChildren': instance.updateChildren,
  'maxDepth': instance.maxDepth,
};

_$FolderCacheResultImpl _$$FolderCacheResultImplFromJson(
  Map<String, dynamic> json,
) => _$FolderCacheResultImpl(
  folderId: json['folderId'] as String,
  success: json['success'] as bool,
  error: json['error'] as String?,
  filesCount: (json['filesCount'] as num?)?.toInt() ?? 0,
  totalSizeBytes: (json['totalSizeBytes'] as num?)?.toInt(),
  childrenCount: (json['childrenCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$FolderCacheResultImplToJson(
  _$FolderCacheResultImpl instance,
) => <String, dynamic>{
  'folderId': instance.folderId,
  'success': instance.success,
  'error': instance.error,
  'filesCount': instance.filesCount,
  'totalSizeBytes': instance.totalSizeBytes,
  'childrenCount': instance.childrenCount,
};

_$CacheFoldersResultImpl _$$CacheFoldersResultImplFromJson(
  Map<String, dynamic> json,
) => _$CacheFoldersResultImpl(
  folderResults: (json['folderResults'] as List<dynamic>)
      .map((e) => FolderCacheResult.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalFoldersProcessed: (json['totalFoldersProcessed'] as num).toInt(),
  totalFilesCounted: (json['totalFilesCounted'] as num).toInt(),
  totalSizeBytes: (json['totalSizeBytes'] as num).toInt(),
);

Map<String, dynamic> _$$CacheFoldersResultImplToJson(
  _$CacheFoldersResultImpl instance,
) => <String, dynamic>{
  'folderResults': instance.folderResults,
  'totalFoldersProcessed': instance.totalFoldersProcessed,
  'totalFilesCounted': instance.totalFilesCounted,
  'totalSizeBytes': instance.totalSizeBytes,
};
