// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileEditReplaceImpl _$$FileEditReplaceImplFromJson(
  Map<String, dynamic> json,
) => _$FileEditReplaceImpl(
  newContent: json['newContent'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$FileEditReplaceImplToJson(
  _$FileEditReplaceImpl instance,
) => <String, dynamic>{
  'newContent': instance.newContent,
  'runtimeType': instance.$type,
};

_$FileEditPatchImpl _$$FileEditPatchImplFromJson(Map<String, dynamic> json) =>
    _$FileEditPatchImpl(
      patchData: json['patchData'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FileEditPatchImplToJson(_$FileEditPatchImpl instance) =>
    <String, dynamic>{
      'patchData': instance.patchData,
      'runtimeType': instance.$type,
    };

_$FileEditAppendImpl _$$FileEditAppendImplFromJson(Map<String, dynamic> json) =>
    _$FileEditAppendImpl(
      contentToAppend: json['contentToAppend'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FileEditAppendImplToJson(
  _$FileEditAppendImpl instance,
) => <String, dynamic>{
  'contentToAppend': instance.contentToAppend,
  'runtimeType': instance.$type,
};

_$FileEditPrependImpl _$$FileEditPrependImplFromJson(
  Map<String, dynamic> json,
) => _$FileEditPrependImpl(
  contentToPrepend: json['contentToPrepend'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$FileEditPrependImplToJson(
  _$FileEditPrependImpl instance,
) => <String, dynamic>{
  'contentToPrepend': instance.contentToPrepend,
  'runtimeType': instance.$type,
};

_$EditFileResultImpl _$$EditFileResultImplFromJson(Map<String, dynamic> json) =>
    _$EditFileResultImpl(
      updatedFile: FsEntry.fromJson(
        json['updatedFile'] as Map<String, dynamic>,
      ),
      wasModified: json['wasModified'] as bool,
      sizeChange: (json['sizeChange'] as num).toInt(),
    );

Map<String, dynamic> _$$EditFileResultImplToJson(
  _$EditFileResultImpl instance,
) => <String, dynamic>{
  'updatedFile': instance.updatedFile,
  'wasModified': instance.wasModified,
  'sizeChange': instance.sizeChange,
};

_$EditFileTaskImpl _$$EditFileTaskImplFromJson(Map<String, dynamic> json) =>
    _$EditFileTaskImpl(
      fileId: json['fileId'] as String,
      edit: FileEdit.fromJson(json['edit'] as Map<String, dynamic>),
      createBackup: json['createBackup'] as bool? ?? false,
      supportedKinds:
          (json['supportedKinds'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$FileKindEnumMap, e))
              .toList() ??
          const [
            FileKind.document,
            FileKind.code,
            FileKind.script,
            FileKind.markdown,
            FileKind.json,
            FileKind.csv,
          ],
    );

Map<String, dynamic> _$$EditFileTaskImplToJson(_$EditFileTaskImpl instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'edit': instance.edit,
      'createBackup': instance.createBackup,
      'supportedKinds': instance.supportedKinds
          .map((e) => _$FileKindEnumMap[e]!)
          .toList(),
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
