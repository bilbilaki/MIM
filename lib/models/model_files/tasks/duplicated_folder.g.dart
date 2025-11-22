// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duplicated_folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DuplicatedFolderGroupImpl _$$DuplicatedFolderGroupImplFromJson(
  Map<String, dynamic> json,
) => _$DuplicatedFolderGroupImpl(
  id: json['id'] as String,
  structureHash: json['structureHash'] as String,
  folderIds: (json['folderIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  fileCount: (json['fileCount'] as num).toInt(),
  totalSizeBytes: (json['totalSizeBytes'] as num).toInt(),
  detectedAt: DateTime.parse(json['detectedAt'] as String),
);

Map<String, dynamic> _$$DuplicatedFolderGroupImplToJson(
  _$DuplicatedFolderGroupImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'structureHash': instance.structureHash,
  'folderIds': instance.folderIds,
  'fileCount': instance.fileCount,
  'totalSizeBytes': instance.totalSizeBytes,
  'detectedAt': instance.detectedAt.toIso8601String(),
};
