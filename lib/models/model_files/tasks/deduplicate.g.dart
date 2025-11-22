// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deduplicate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DuplicateGroupImpl _$$DuplicateGroupImplFromJson(Map<String, dynamic> json) =>
    _$DuplicateGroupImpl(
      contentHash: json['contentHash'] as String,
      sizeBytes: (json['sizeBytes'] as num).toInt(),
      fileIds:
          (json['fileIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      detectedAt: json['detectedAt'] == null
          ? null
          : DateTime.parse(json['detectedAt'] as String),
    );

Map<String, dynamic> _$$DuplicateGroupImplToJson(
  _$DuplicateGroupImpl instance,
) => <String, dynamic>{
  'contentHash': instance.contentHash,
  'sizeBytes': instance.sizeBytes,
  'fileIds': instance.fileIds,
  'detectedAt': instance.detectedAt?.toIso8601String(),
};

_$DeduplicateTaskImpl _$$DeduplicateTaskImplFromJson(
  Map<String, dynamic> json,
) => _$DeduplicateTaskImpl(
  scopeFolderId: json['scopeFolderId'] as String,
  matchingCriteria:
      $enumDecodeNullable(
        _$DuplicateMatchingCriteriaEnumMap,
        json['matchingCriteria'],
      ) ??
      DuplicateMatchingCriteria.hash,
  removeDuplicates: json['removeDuplicates'] as bool? ?? false,
  keepStrategy:
      $enumDecodeNullable(_$KeepFileStrategyEnumMap, json['keepStrategy']) ??
      KeepFileStrategy.keepFirst,
  minFileSize: (json['minFileSize'] as num?)?.toInt() ?? 0,
  includedKinds:
      (json['includedKinds'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FileKindEnumMap, e))
          .toList() ??
      const <FileKind>[],
);

Map<String, dynamic> _$$DeduplicateTaskImplToJson(
  _$DeduplicateTaskImpl instance,
) => <String, dynamic>{
  'scopeFolderId': instance.scopeFolderId,
  'matchingCriteria':
      _$DuplicateMatchingCriteriaEnumMap[instance.matchingCriteria]!,
  'removeDuplicates': instance.removeDuplicates,
  'keepStrategy': _$KeepFileStrategyEnumMap[instance.keepStrategy]!,
  'minFileSize': instance.minFileSize,
  'includedKinds': instance.includedKinds
      .map((e) => _$FileKindEnumMap[e]!)
      .toList(),
};

const _$DuplicateMatchingCriteriaEnumMap = {
  DuplicateMatchingCriteria.hash: 'hash',
  DuplicateMatchingCriteria.sizeAndName: 'sizeAndName',
  DuplicateMatchingCriteria.sizeAndExtension: 'sizeAndExtension',
  DuplicateMatchingCriteria.exactMatch: 'exactMatch',
};

const _$KeepFileStrategyEnumMap = {
  KeepFileStrategy.keepFirst: 'keepFirst',
  KeepFileStrategy.keepNewest: 'keepNewest',
  KeepFileStrategy.keepOldest: 'keepOldest',
  KeepFileStrategy.keepAll: 'keepAll',
};

const _$FileKindEnumMap = {
  FileKind.unknown: 'unknown',
  FileKind.folder: 'folder',
  FileKind.image: 'image',
  FileKind.audio: 'audio',
  FileKind.video: 'video',
  FileKind.document: 'document',
  FileKind.archive: 'archive',
  FileKind.binary: 'binary',
  FileKind.code: 'code',
  FileKind.script: 'script',
  FileKind.markdown: 'markdown',
  FileKind.database: 'database',
  FileKind.json: 'json',
  FileKind.csv: 'csv',
  FileKind.certificate: 'certificate',
  FileKind.apk: 'apk',
  FileKind.iso: 'iso',
  FileKind.link: 'link',
  FileKind.aiRequest: 'aiRequest',
  FileKind.aiResult: 'aiResult',
};

_$DeduplicateResultImpl _$$DeduplicateResultImplFromJson(
  Map<String, dynamic> json,
) => _$DeduplicateResultImpl(
  scannedFiles: (json['scannedFiles'] as num).toInt(),
  duplicateGroups:
      (json['duplicateGroups'] as List<dynamic>?)
          ?.map((e) => DuplicateGroup.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <DuplicateGroup>[],
  removedFiles:
      (json['removedFiles'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ) ??
      const <String, String>{},
  totalReclaimedBytes: (json['totalReclaimedBytes'] as num).toInt(),
  completedAt: json['completedAt'] == null
      ? null
      : DateTime.parse(json['completedAt'] as String),
);

Map<String, dynamic> _$$DeduplicateResultImplToJson(
  _$DeduplicateResultImpl instance,
) => <String, dynamic>{
  'scannedFiles': instance.scannedFiles,
  'duplicateGroups': instance.duplicateGroups,
  'removedFiles': instance.removedFiles,
  'totalReclaimedBytes': instance.totalReclaimedBytes,
  'completedAt': instance.completedAt?.toIso8601String(),
};
