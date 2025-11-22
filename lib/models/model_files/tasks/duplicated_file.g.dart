// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duplicated_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DuplicatedFileGroupImpl _$$DuplicatedFileGroupImplFromJson(
  Map<String, dynamic> json,
) => _$DuplicatedFileGroupImpl(
  contentHash: json['contentHash'] as String,
  sizeBytes: (json['sizeBytes'] as num).toInt(),
  duplicates:
      (json['duplicates'] as List<dynamic>?)
          ?.map((e) => FsEntry.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <FsEntry>[],
  detectedAt: json['detectedAt'] == null
      ? null
      : DateTime.parse(json['detectedAt'] as String),
);

Map<String, dynamic> _$$DuplicatedFileGroupImplToJson(
  _$DuplicatedFileGroupImpl instance,
) => <String, dynamic>{
  'contentHash': instance.contentHash,
  'sizeBytes': instance.sizeBytes,
  'duplicates': instance.duplicates,
  'detectedAt': instance.detectedAt?.toIso8601String(),
};

_$DuplicatedFileTaskImpl _$$DuplicatedFileTaskImplFromJson(
  Map<String, dynamic> json,
) => _$DuplicatedFileTaskImpl(
  scopeFolderId: json['scopeFolderId'] as String?,
  minSizeBytes: (json['minSizeBytes'] as num?)?.toInt() ?? 0,
  hashAlgorithm: json['hashAlgorithm'] as String? ?? 'sha256',
  compareMetadata: json['compareMetadata'] as bool? ?? false,
  action: json['action'] as String? ?? 'group',
);

Map<String, dynamic> _$$DuplicatedFileTaskImplToJson(
  _$DuplicatedFileTaskImpl instance,
) => <String, dynamic>{
  'scopeFolderId': instance.scopeFolderId,
  'minSizeBytes': instance.minSizeBytes,
  'hashAlgorithm': instance.hashAlgorithm,
  'compareMetadata': instance.compareMetadata,
  'action': instance.action,
};

_$DuplicatedFileResultImpl _$$DuplicatedFileResultImplFromJson(
  Map<String, dynamic> json,
) => _$DuplicatedFileResultImpl(
  duplicateGroups: (json['duplicateGroups'] as List<dynamic>)
      .map((e) => DuplicatedFileGroup.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalFilesScanned: (json['totalFilesScanned'] as num).toInt(),
  totalDuplicateGroups: (json['totalDuplicateGroups'] as num).toInt(),
  totalDuplicateFiles: (json['totalDuplicateFiles'] as num).toInt(),
  actionResults:
      json['actionResults'] as Map<String, dynamic>? ??
      const <String, dynamic>{},
  errors:
      (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$$DuplicatedFileResultImplToJson(
  _$DuplicatedFileResultImpl instance,
) => <String, dynamic>{
  'duplicateGroups': instance.duplicateGroups,
  'totalFilesScanned': instance.totalFilesScanned,
  'totalDuplicateGroups': instance.totalDuplicateGroups,
  'totalDuplicateFiles': instance.totalDuplicateFiles,
  'actionResults': instance.actionResults,
  'errors': instance.errors,
};
