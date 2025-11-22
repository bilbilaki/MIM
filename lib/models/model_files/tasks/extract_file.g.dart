// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extract_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtractFileResultImpl _$$ExtractFileResultImplFromJson(
  Map<String, dynamic> json,
) => _$ExtractFileResultImpl(
  destinationFolderId: json['destinationFolderId'] as String,
  extractedEntries: (json['extractedEntries'] as List<dynamic>)
      .map((e) => FsEntry.fromJson(e as Map<String, dynamic>))
      .toList(),
  filesExtracted: (json['filesExtracted'] as num).toInt(),
  foldersExtracted: (json['foldersExtracted'] as num).toInt(),
  errors:
      (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$$ExtractFileResultImplToJson(
  _$ExtractFileResultImpl instance,
) => <String, dynamic>{
  'destinationFolderId': instance.destinationFolderId,
  'extractedEntries': instance.extractedEntries,
  'filesExtracted': instance.filesExtracted,
  'foldersExtracted': instance.foldersExtracted,
  'errors': instance.errors,
};

_$ExtractFileTaskImpl _$$ExtractFileTaskImplFromJson(
  Map<String, dynamic> json,
) => _$ExtractFileTaskImpl(
  archiveFileId: json['archiveFileId'] as String,
  targetFolderId: json['targetFolderId'] as String,
  extractionFolderName: json['extractionFolderName'] as String?,
  overwriteExisting: json['overwriteExisting'] as bool? ?? false,
  password: json['password'] as String?,
  filesToExtract: (json['filesToExtract'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$$ExtractFileTaskImplToJson(
  _$ExtractFileTaskImpl instance,
) => <String, dynamic>{
  'archiveFileId': instance.archiveFileId,
  'targetFolderId': instance.targetFolderId,
  'extractionFolderName': instance.extractionFolderName,
  'overwriteExisting': instance.overwriteExisting,
  'password': instance.password,
  'filesToExtract': instance.filesToExtract,
};
