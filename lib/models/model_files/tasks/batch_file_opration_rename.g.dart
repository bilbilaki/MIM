// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_file_opration_rename.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchRenameResultImpl _$$BatchRenameResultImplFromJson(
  Map<String, dynamic> json,
) => _$BatchRenameResultImpl(
  entryId: json['entryId'] as String,
  originalName: json['originalName'] as String,
  newName: json['newName'] as String,
  success: json['success'] as bool,
  error: json['error'] as String?,
  updatedEntry: json['updatedEntry'] == null
      ? null
      : FsEntry.fromJson(json['updatedEntry'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$BatchRenameResultImplToJson(
  _$BatchRenameResultImpl instance,
) => <String, dynamic>{
  'entryId': instance.entryId,
  'originalName': instance.originalName,
  'newName': instance.newName,
  'success': instance.success,
  'error': instance.error,
  'updatedEntry': instance.updatedEntry,
};

_$BatchFileRenameResultImpl _$$BatchFileRenameResultImplFromJson(
  Map<String, dynamic> json,
) => _$BatchFileRenameResultImpl(
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => BatchRenameResult.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <BatchRenameResult>[],
  totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
  successCount: (json['successCount'] as num?)?.toInt() ?? 0,
  failureCount: (json['failureCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$BatchFileRenameResultImplToJson(
  _$BatchFileRenameResultImpl instance,
) => <String, dynamic>{
  'results': instance.results,
  'totalCount': instance.totalCount,
  'successCount': instance.successCount,
  'failureCount': instance.failureCount,
};

_$RenameInstructionImpl _$$RenameInstructionImplFromJson(
  Map<String, dynamic> json,
) => _$RenameInstructionImpl(
  entryId: json['entryId'] as String,
  newName: json['newName'] as String,
);

Map<String, dynamic> _$$RenameInstructionImplToJson(
  _$RenameInstructionImpl instance,
) => <String, dynamic>{
  'entryId': instance.entryId,
  'newName': instance.newName,
};

_$BatchFileRenameTaskImpl _$$BatchFileRenameTaskImplFromJson(
  Map<String, dynamic> json,
) => _$BatchFileRenameTaskImpl(
  instructions: (json['instructions'] as List<dynamic>)
      .map((e) => RenameInstruction.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$BatchFileRenameTaskImplToJson(
  _$BatchFileRenameTaskImpl instance,
) => <String, dynamic>{'instructions': instance.instructions};
