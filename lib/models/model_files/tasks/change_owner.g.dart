// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangeOwnerTaskImpl _$$ChangeOwnerTaskImplFromJson(
  Map<String, dynamic> json,
) => _$ChangeOwnerTaskImpl(
  entryIds: (json['entryIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  ownerUserId: json['ownerUserId'] as String?,
  ownerGroupId: json['ownerGroupId'] as String?,
);

Map<String, dynamic> _$$ChangeOwnerTaskImplToJson(
  _$ChangeOwnerTaskImpl instance,
) => <String, dynamic>{
  'entryIds': instance.entryIds,
  'ownerUserId': instance.ownerUserId,
  'ownerGroupId': instance.ownerGroupId,
};

_$ChangeOwnerResultImpl _$$ChangeOwnerResultImplFromJson(
  Map<String, dynamic> json,
) => _$ChangeOwnerResultImpl(
  results: (json['results'] as List<dynamic>)
      .map((e) => ChangeOwnerEntryResult.fromJson(e as Map<String, dynamic>))
      .toList(),
  successCount: (json['successCount'] as num?)?.toInt() ?? 0,
  failureCount: (json['failureCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$ChangeOwnerResultImplToJson(
  _$ChangeOwnerResultImpl instance,
) => <String, dynamic>{
  'results': instance.results,
  'successCount': instance.successCount,
  'failureCount': instance.failureCount,
};

_$ChangeOwnerEntryResultImpl _$$ChangeOwnerEntryResultImplFromJson(
  Map<String, dynamic> json,
) => _$ChangeOwnerEntryResultImpl(
  entryId: json['entryId'] as String,
  success: json['success'] as bool,
  error: json['error'] as String?,
  updatedEntry: json['updatedEntry'] == null
      ? null
      : FsEntry.fromJson(json['updatedEntry'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ChangeOwnerEntryResultImplToJson(
  _$ChangeOwnerEntryResultImpl instance,
) => <String, dynamic>{
  'entryId': instance.entryId,
  'success': instance.success,
  'error': instance.error,
  'updatedEntry': instance.updatedEntry,
};
