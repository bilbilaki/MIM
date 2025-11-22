// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentMatchImpl _$$ContentMatchImplFromJson(Map<String, dynamic> json) =>
    _$ContentMatchImpl(
      fileId: json['fileId'] as String,
      snippet: json['snippet'] as String,
      offset: (json['offset'] as num).toInt(),
      lineNumber: (json['lineNumber'] as num?)?.toInt(),
      metadata:
          json['metadata'] as Map<String, dynamic>? ??
          const <String, dynamic>{},
    );

Map<String, dynamic> _$$ContentMatchImplToJson(_$ContentMatchImpl instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'snippet': instance.snippet,
      'offset': instance.offset,
      'lineNumber': instance.lineNumber,
      'metadata': instance.metadata,
    };

_$SearchContentResultImpl _$$SearchContentResultImplFromJson(
  Map<String, dynamic> json,
) => _$SearchContentResultImpl(
  matches:
      (json['matches'] as List<dynamic>?)
          ?.map((e) => ContentMatch.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ContentMatch>[],
  totalMatches: (json['totalMatches'] as num?)?.toInt() ?? 0,
  filesWithMatches: (json['filesWithMatches'] as num?)?.toInt() ?? 0,
  durationMs: (json['durationMs'] as num?)?.toInt(),
);

Map<String, dynamic> _$$SearchContentResultImplToJson(
  _$SearchContentResultImpl instance,
) => <String, dynamic>{
  'matches': instance.matches,
  'totalMatches': instance.totalMatches,
  'filesWithMatches': instance.filesWithMatches,
  'durationMs': instance.durationMs,
};

_$SearchContentTaskImpl _$$SearchContentTaskImplFromJson(
  Map<String, dynamic> json,
) => _$SearchContentTaskImpl(
  query: json['query'] as String,
  scopeEntryIds:
      (json['scopeEntryIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  fileKinds:
      (json['fileKinds'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FileKindEnumMap, e))
          .toList() ??
      const <FileKind>[],
  caseSensitive: json['caseSensitive'] as bool? ?? false,
  maxMatchesPerFile: (json['maxMatchesPerFile'] as num?)?.toInt() ?? 100,
  maxFiles: (json['maxFiles'] as num?)?.toInt() ?? 1000,
  options:
      json['options'] as Map<String, dynamic>? ?? const <String, dynamic>{},
);

Map<String, dynamic> _$$SearchContentTaskImplToJson(
  _$SearchContentTaskImpl instance,
) => <String, dynamic>{
  'query': instance.query,
  'scopeEntryIds': instance.scopeEntryIds,
  'fileKinds': instance.fileKinds.map((e) => _$FileKindEnumMap[e]!).toList(),
  'caseSensitive': instance.caseSensitive,
  'maxMatchesPerFile': instance.maxMatchesPerFile,
  'maxFiles': instance.maxFiles,
  'options': instance.options,
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
