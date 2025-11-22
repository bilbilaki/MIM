// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchFileTaskImpl _$$SearchFileTaskImplFromJson(Map<String, dynamic> json) =>
    _$SearchFileTaskImpl(
      query: json['query'] as String,
      kinds:
          (json['kinds'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$FileKindEnumMap, e))
              .toList() ??
          const <FileKind>[],
      extensions:
          (json['extensions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      sizeRange:
          (json['sizeRange'] as List<dynamic>?)
              ?.map((e) => (e as num?)?.toInt())
              .toList() ??
          const <int?>[null, null],
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      status: $enumDecodeNullable(_$EntryStatusEnumMap, json['status']),
      recursive: json['recursive'] as bool? ?? true,
      maxResults: (json['maxResults'] as num?)?.toInt() ?? 100,
    );

Map<String, dynamic> _$$SearchFileTaskImplToJson(
  _$SearchFileTaskImpl instance,
) => <String, dynamic>{
  'query': instance.query,
  'kinds': instance.kinds.map((e) => _$FileKindEnumMap[e]!).toList(),
  'extensions': instance.extensions,
  'sizeRange': instance.sizeRange,
  'tags': instance.tags,
  'status': _$EntryStatusEnumMap[instance.status],
  'recursive': instance.recursive,
  'maxResults': instance.maxResults,
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

const _$EntryStatusEnumMap = {
  EntryStatus.normal: 'normal',
  EntryStatus.deleted: 'deleted',
  EntryStatus.hidden: 'hidden',
  EntryStatus.locked: 'locked',
  EntryStatus.error: 'error',
};

_$SearchFileResultImpl _$$SearchFileResultImplFromJson(
  Map<String, dynamic> json,
) => _$SearchFileResultImpl(
  matches: (json['matches'] as List<dynamic>).map((e) => e as String).toList(),
  totalSearched: (json['totalSearched'] as num).toInt(),
  query: json['query'] as String,
  error: json['error'] as String?,
);

Map<String, dynamic> _$$SearchFileResultImplToJson(
  _$SearchFileResultImpl instance,
) => <String, dynamic>{
  'matches': instance.matches,
  'totalSearched': instance.totalSearched,
  'query': instance.query,
  'error': instance.error,
};
