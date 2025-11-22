// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archiv_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArchiveFileTaskImpl _$$ArchiveFileTaskImplFromJson(
  Map<String, dynamic> json,
) => _$ArchiveFileTaskImpl(
  sourceEntryIds: (json['sourceEntryIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  targetFolderId: json['targetFolderId'] as String,
  archiveName: json['archiveName'] as String?,
  format: json['format'] as String? ?? 'zip',
  preserveStructure: json['preserveStructure'] as bool? ?? true,
  compressionLevel: (json['compressionLevel'] as num?)?.toInt() ?? 6,
);

Map<String, dynamic> _$$ArchiveFileTaskImplToJson(
  _$ArchiveFileTaskImpl instance,
) => <String, dynamic>{
  'sourceEntryIds': instance.sourceEntryIds,
  'targetFolderId': instance.targetFolderId,
  'archiveName': instance.archiveName,
  'format': instance.format,
  'preserveStructure': instance.preserveStructure,
  'compressionLevel': instance.compressionLevel,
};

_$ArchiveFileResultImpl _$$ArchiveFileResultImplFromJson(
  Map<String, dynamic> json,
) => _$ArchiveFileResultImpl(
  archiveId: json['archiveId'] as String,
  includedSourceIds: (json['includedSourceIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  archiveSizeBytes: (json['archiveSizeBytes'] as num).toInt(),
  fileCount: (json['fileCount'] as num).toInt(),
  folderCount: (json['folderCount'] as num).toInt(),
  errors:
      (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$$ArchiveFileResultImplToJson(
  _$ArchiveFileResultImpl instance,
) => <String, dynamic>{
  'archiveId': instance.archiveId,
  'includedSourceIds': instance.includedSourceIds,
  'archiveSizeBytes': instance.archiveSizeBytes,
  'fileCount': instance.fileCount,
  'folderCount': instance.folderCount,
  'errors': instance.errors,
};
