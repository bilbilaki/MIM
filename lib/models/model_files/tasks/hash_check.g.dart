// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hash_check.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HashCheckResultImpl _$$HashCheckResultImplFromJson(
  Map<String, dynamic> json,
) => _$HashCheckResultImpl(
  fileId: json['fileId'] as String,
  computedHash: json['computedHash'] as String?,
  expectedHash: json['expectedHash'] as String?,
  matches: json['matches'] as bool?,
  error: json['error'] as String?,
  algorithm: json['algorithm'] as String,
);

Map<String, dynamic> _$$HashCheckResultImplToJson(
  _$HashCheckResultImpl instance,
) => <String, dynamic>{
  'fileId': instance.fileId,
  'computedHash': instance.computedHash,
  'expectedHash': instance.expectedHash,
  'matches': instance.matches,
  'error': instance.error,
  'algorithm': instance.algorithm,
};

_$HashCheckTaskImpl _$$HashCheckTaskImplFromJson(Map<String, dynamic> json) =>
    _$HashCheckTaskImpl(
      fileIds: (json['fileIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      algorithm: json['algorithm'] as String? ?? 'sha256',
      expectedHashes:
          (json['expectedHashes'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const <String, String>{},
    );

Map<String, dynamic> _$$HashCheckTaskImplToJson(_$HashCheckTaskImpl instance) =>
    <String, dynamic>{
      'fileIds': instance.fileIds,
      'algorithm': instance.algorithm,
      'expectedHashes': instance.expectedHashes,
    };
