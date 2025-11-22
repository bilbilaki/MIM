// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_files.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndexFilesResultImpl _$$IndexFilesResultImplFromJson(
  Map<String, dynamic> json,
) => _$IndexFilesResultImpl(
  entriesIndexed: (json['entriesIndexed'] as num).toInt(),
  foldersProcessed: (json['foldersProcessed'] as num).toInt(),
  filesProcessed: (json['filesProcessed'] as num).toInt(),
  totalSizeBytes: (json['totalSizeBytes'] as num).toInt(),
  indexTimestamp: DateTime.parse(json['indexTimestamp'] as String),
  errors:
      (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  contentIndexed: json['contentIndexed'] as bool? ?? false,
);

Map<String, dynamic> _$$IndexFilesResultImplToJson(
  _$IndexFilesResultImpl instance,
) => <String, dynamic>{
  'entriesIndexed': instance.entriesIndexed,
  'foldersProcessed': instance.foldersProcessed,
  'filesProcessed': instance.filesProcessed,
  'totalSizeBytes': instance.totalSizeBytes,
  'indexTimestamp': instance.indexTimestamp.toIso8601String(),
  'errors': instance.errors,
  'contentIndexed': instance.contentIndexed,
};

_$IndexingOptionsImpl _$$IndexingOptionsImplFromJson(
  Map<String, dynamic> json,
) => _$IndexingOptionsImpl(
  indexContent: json['indexContent'] as bool? ?? false,
  maxContentSizeBytes:
      (json['maxContentSizeBytes'] as num?)?.toInt() ?? 10485760,
  excludedKinds:
      (json['excludedKinds'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FileKindEnumMap, e))
          .toList() ??
      const <FileKind>[],
  generateThumbnails: json['generateThumbnails'] as bool? ?? false,
  computeHashes: json['computeHashes'] as bool? ?? false,
);

Map<String, dynamic> _$$IndexingOptionsImplToJson(
  _$IndexingOptionsImpl instance,
) => <String, dynamic>{
  'indexContent': instance.indexContent,
  'maxContentSizeBytes': instance.maxContentSizeBytes,
  'excludedKinds': instance.excludedKinds
      .map((e) => _$FileKindEnumMap[e]!)
      .toList(),
  'generateThumbnails': instance.generateThumbnails,
  'computeHashes': instance.computeHashes,
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

_$IndexFilesTaskImpl _$$IndexFilesTaskImplFromJson(Map<String, dynamic> json) =>
    _$IndexFilesTaskImpl(
      rootFolderId: json['rootFolderId'] as String?,
      options: json['options'] == null
          ? const IndexingOptions()
          : IndexingOptions.fromJson(json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IndexFilesTaskImplToJson(
  _$IndexFilesTaskImpl instance,
) => <String, dynamic>{
  'rootFolderId': instance.rootFolderId,
  'options': instance.options,
};
