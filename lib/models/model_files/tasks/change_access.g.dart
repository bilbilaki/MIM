// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_access.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangeAccessTaskImpl _$$ChangeAccessTaskImplFromJson(
  Map<String, dynamic> json,
) => _$ChangeAccessTaskImpl(
  entryIds: (json['entryIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  newAccess: EntryAccess.fromJson(json['newAccess'] as Map<String, dynamic>),
  recursive: json['recursive'] as bool? ?? false,
);

Map<String, dynamic> _$$ChangeAccessTaskImplToJson(
  _$ChangeAccessTaskImpl instance,
) => <String, dynamic>{
  'entryIds': instance.entryIds,
  'newAccess': instance.newAccess,
  'recursive': instance.recursive,
};

_$ChangeAccessEntryResultImpl _$$ChangeAccessEntryResultImplFromJson(
  Map<String, dynamic> json,
) => _$ChangeAccessEntryResultImpl(
  entryId: json['entryId'] as String,
  success: json['success'] as bool,
  newAccess: json['newAccess'] == null
      ? null
      : EntryAccess.fromJson(json['newAccess'] as Map<String, dynamic>),
  error: json['error'] as String?,
);

Map<String, dynamic> _$$ChangeAccessEntryResultImplToJson(
  _$ChangeAccessEntryResultImpl instance,
) => <String, dynamic>{
  'entryId': instance.entryId,
  'success': instance.success,
  'newAccess': instance.newAccess,
  'error': instance.error,
};

_$ChangeAccessResultImpl _$$ChangeAccessResultImplFromJson(
  Map<String, dynamic> json,
) => _$ChangeAccessResultImpl(
  results: (json['results'] as List<dynamic>)
      .map((e) => ChangeAccessEntryResult.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalProcessed: (json['totalProcessed'] as num).toInt(),
  successfulCount: (json['successfulCount'] as num).toInt(),
  failedCount: (json['failedCount'] as num).toInt(),
);

Map<String, dynamic> _$$ChangeAccessResultImplToJson(
  _$ChangeAccessResultImpl instance,
) => <String, dynamic>{
  'results': instance.results,
  'totalProcessed': instance.totalProcessed,
  'successfulCount': instance.successfulCount,
  'failedCount': instance.failedCount,
};
