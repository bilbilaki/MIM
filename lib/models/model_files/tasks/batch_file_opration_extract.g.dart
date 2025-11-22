// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_file_opration_extract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchFileExtractTaskImpl _$$BatchFileExtractTaskImplFromJson(
  Map<String, dynamic> json,
) => _$BatchFileExtractTaskImpl(
  archiveEntryIds: (json['archiveEntryIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  targetFolderId: json['targetFolderId'] as String,
  createSubfolders: json['createSubfolders'] as bool? ?? true,
  conflictPolicy:
      $enumDecodeNullable(
        _$ExtractConflictPolicyEnumMap,
        json['conflictPolicy'],
      ) ??
      ExtractConflictPolicy.rename,
);

Map<String, dynamic> _$$BatchFileExtractTaskImplToJson(
  _$BatchFileExtractTaskImpl instance,
) => <String, dynamic>{
  'archiveEntryIds': instance.archiveEntryIds,
  'targetFolderId': instance.targetFolderId,
  'createSubfolders': instance.createSubfolders,
  'conflictPolicy': _$ExtractConflictPolicyEnumMap[instance.conflictPolicy]!,
};

const _$ExtractConflictPolicyEnumMap = {
  ExtractConflictPolicy.skip: 'skip',
  ExtractConflictPolicy.overwrite: 'overwrite',
  ExtractConflictPolicy.rename: 'rename',
};

_$ArchiveExtractResultImpl _$$ArchiveExtractResultImplFromJson(
  Map<String, dynamic> json,
) => _$ArchiveExtractResultImpl(
  archiveId: json['archiveId'] as String,
  success: json['success'] as bool,
  extractedEntries:
      (json['extractedEntries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  destinationFolderId: json['destinationFolderId'] as String?,
  error: json['error'] as String?,
);

Map<String, dynamic> _$$ArchiveExtractResultImplToJson(
  _$ArchiveExtractResultImpl instance,
) => <String, dynamic>{
  'archiveId': instance.archiveId,
  'success': instance.success,
  'extractedEntries': instance.extractedEntries,
  'destinationFolderId': instance.destinationFolderId,
  'error': instance.error,
};

_$BatchFileExtractResultImpl _$$BatchFileExtractResultImplFromJson(
  Map<String, dynamic> json,
) => _$BatchFileExtractResultImpl(
  results: (json['results'] as List<dynamic>)
      .map((e) => ArchiveExtractResult.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$BatchFileExtractResultImplToJson(
  _$BatchFileExtractResultImpl instance,
) => <String, dynamic>{'results': instance.results};
