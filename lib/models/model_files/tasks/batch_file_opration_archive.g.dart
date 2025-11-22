// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_file_opration_archive.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchArchiveOperationResultImpl _$$BatchArchiveOperationResultImplFromJson(
  Map<String, dynamic> json,
) => _$BatchArchiveOperationResultImpl(
  sourceEntryIds: (json['sourceEntryIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  archiveId: json['archiveId'] as String?,
  success: json['success'] as bool,
  error: json['error'] as String?,
  archiveSizeBytes: (json['archiveSizeBytes'] as num?)?.toInt(),
);

Map<String, dynamic> _$$BatchArchiveOperationResultImplToJson(
  _$BatchArchiveOperationResultImpl instance,
) => <String, dynamic>{
  'sourceEntryIds': instance.sourceEntryIds,
  'archiveId': instance.archiveId,
  'success': instance.success,
  'error': instance.error,
  'archiveSizeBytes': instance.archiveSizeBytes,
};

_$BatchFileArchiveResultImpl _$$BatchFileArchiveResultImplFromJson(
  Map<String, dynamic> json,
) => _$BatchFileArchiveResultImpl(
  operationResults: (json['operationResults'] as List<dynamic>)
      .map(
        (e) => BatchArchiveOperationResult.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  successCount: (json['successCount'] as num?)?.toInt() ?? 0,
  failureCount: (json['failureCount'] as num?)?.toInt() ?? 0,
  totalArchiveSizeBytes: (json['totalArchiveSizeBytes'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$BatchFileArchiveResultImplToJson(
  _$BatchFileArchiveResultImpl instance,
) => <String, dynamic>{
  'operationResults': instance.operationResults,
  'successCount': instance.successCount,
  'failureCount': instance.failureCount,
  'totalArchiveSizeBytes': instance.totalArchiveSizeBytes,
};

_$ArchiveOperationConfigImpl _$$ArchiveOperationConfigImplFromJson(
  Map<String, dynamic> json,
) => _$ArchiveOperationConfigImpl(
  sourceEntryIds: (json['sourceEntryIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  targetFolderId: json['targetFolderId'] as String,
  archiveName: json['archiveName'] as String,
  format: json['format'] as String? ?? 'zip',
  preserveStructure: json['preserveStructure'] as bool? ?? true,
  compressionLevel: (json['compressionLevel'] as num?)?.toInt() ?? 6,
);

Map<String, dynamic> _$$ArchiveOperationConfigImplToJson(
  _$ArchiveOperationConfigImpl instance,
) => <String, dynamic>{
  'sourceEntryIds': instance.sourceEntryIds,
  'targetFolderId': instance.targetFolderId,
  'archiveName': instance.archiveName,
  'format': instance.format,
  'preserveStructure': instance.preserveStructure,
  'compressionLevel': instance.compressionLevel,
};
