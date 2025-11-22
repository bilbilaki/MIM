// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateFileTaskImpl _$$CreateFileTaskImplFromJson(Map<String, dynamic> json) =>
    _$CreateFileTaskImpl(
      targetFolderId: json['targetFolderId'] as String,
      name: json['name'] as String,
      kind: $enumDecode(_$FileKindEnumMap, json['kind']),
      extension: json['extension'] as String?,
      initialContentSource: json['initialContentSource'] as String?,
      sizeBytes: (json['sizeBytes'] as num?)?.toInt(),
      access: json['access'] == null
          ? null
          : EntryAccess.fromJson(json['access'] as Map<String, dynamic>),
      timestamps: json['timestamps'] == null
          ? null
          : EntryTimestamps.fromJson(
              json['timestamps'] as Map<String, dynamic>,
            ),
      meta: json['meta'] == null
          ? null
          : EntryMeta.fromJson(json['meta'] as Map<String, dynamic>),
      typeMeta: json['typeMeta'] == null
          ? null
          : FileTypeMeta.fromJson(json['typeMeta'] as Map<String, dynamic>),
      storageLocation: json['storageLocation'] == null
          ? null
          : StorageLocation.fromJson(
              json['storageLocation'] as Map<String, dynamic>,
            ),
      mime: json['mime'] as String?,
      conflictPolicy:
          $enumDecodeNullable(
            _$CreateFileConflictPolicyEnumMap,
            json['conflictPolicy'],
          ) ??
          CreateFileConflictPolicy.rename,
    );

Map<String, dynamic> _$$CreateFileTaskImplToJson(
  _$CreateFileTaskImpl instance,
) => <String, dynamic>{
  'targetFolderId': instance.targetFolderId,
  'name': instance.name,
  'kind': _$FileKindEnumMap[instance.kind]!,
  'extension': instance.extension,
  'initialContentSource': instance.initialContentSource,
  'sizeBytes': instance.sizeBytes,
  'access': instance.access,
  'timestamps': instance.timestamps,
  'meta': instance.meta,
  'typeMeta': instance.typeMeta,
  'storageLocation': instance.storageLocation,
  'mime': instance.mime,
  'conflictPolicy': _$CreateFileConflictPolicyEnumMap[instance.conflictPolicy]!,
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

const _$CreateFileConflictPolicyEnumMap = {
  CreateFileConflictPolicy.rename: 'rename',
  CreateFileConflictPolicy.overwrite: 'overwrite',
  CreateFileConflictPolicy.fail: 'fail',
  CreateFileConflictPolicy.skip: 'skip',
};

_$CreateFileResultImpl _$$CreateFileResultImplFromJson(
  Map<String, dynamic> json,
) => _$CreateFileResultImpl(
  file: FsFile.fromJson(json['file'] as Map<String, dynamic>),
  wasCreated: json['wasCreated'] as bool,
  originalRequestedName: json['originalRequestedName'] as String?,
  warnings:
      (json['warnings'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$$CreateFileResultImplToJson(
  _$CreateFileResultImpl instance,
) => <String, dynamic>{
  'file': instance.file,
  'wasCreated': instance.wasCreated,
  'originalRequestedName': instance.originalRequestedName,
  'warnings': instance.warnings,
};
