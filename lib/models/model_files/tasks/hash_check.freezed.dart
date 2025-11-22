// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hash_check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HashCheckResult _$HashCheckResultFromJson(Map<String, dynamic> json) {
  return _HashCheckResult.fromJson(json);
}

/// @nodoc
mixin _$HashCheckResult {
  /// The file ID that was processed
  String get fileId => throw _privateConstructorUsedError;

  /// Computed hash value (hex string)
  String? get computedHash => throw _privateConstructorUsedError;

  /// Expected hash value for verification (optional)
  String? get expectedHash => throw _privateConstructorUsedError;

  /// Whether the computed hash matches the expected hash
  bool? get matches => throw _privateConstructorUsedError;

  /// Error message if hash computation failed
  String? get error => throw _privateConstructorUsedError;

  /// Algorithm used for hashing
  String get algorithm => throw _privateConstructorUsedError;

  /// Serializes this HashCheckResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HashCheckResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HashCheckResultCopyWith<HashCheckResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HashCheckResultCopyWith<$Res> {
  factory $HashCheckResultCopyWith(
    HashCheckResult value,
    $Res Function(HashCheckResult) then,
  ) = _$HashCheckResultCopyWithImpl<$Res, HashCheckResult>;
  @useResult
  $Res call({
    String fileId,
    String? computedHash,
    String? expectedHash,
    bool? matches,
    String? error,
    String algorithm,
  });
}

/// @nodoc
class _$HashCheckResultCopyWithImpl<$Res, $Val extends HashCheckResult>
    implements $HashCheckResultCopyWith<$Res> {
  _$HashCheckResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HashCheckResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? computedHash = freezed,
    Object? expectedHash = freezed,
    Object? matches = freezed,
    Object? error = freezed,
    Object? algorithm = null,
  }) {
    return _then(
      _value.copyWith(
            fileId: null == fileId
                ? _value.fileId
                : fileId // ignore: cast_nullable_to_non_nullable
                      as String,
            computedHash: freezed == computedHash
                ? _value.computedHash
                : computedHash // ignore: cast_nullable_to_non_nullable
                      as String?,
            expectedHash: freezed == expectedHash
                ? _value.expectedHash
                : expectedHash // ignore: cast_nullable_to_non_nullable
                      as String?,
            matches: freezed == matches
                ? _value.matches
                : matches // ignore: cast_nullable_to_non_nullable
                      as bool?,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            algorithm: null == algorithm
                ? _value.algorithm
                : algorithm // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HashCheckResultImplCopyWith<$Res>
    implements $HashCheckResultCopyWith<$Res> {
  factory _$$HashCheckResultImplCopyWith(
    _$HashCheckResultImpl value,
    $Res Function(_$HashCheckResultImpl) then,
  ) = __$$HashCheckResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String fileId,
    String? computedHash,
    String? expectedHash,
    bool? matches,
    String? error,
    String algorithm,
  });
}

/// @nodoc
class __$$HashCheckResultImplCopyWithImpl<$Res>
    extends _$HashCheckResultCopyWithImpl<$Res, _$HashCheckResultImpl>
    implements _$$HashCheckResultImplCopyWith<$Res> {
  __$$HashCheckResultImplCopyWithImpl(
    _$HashCheckResultImpl _value,
    $Res Function(_$HashCheckResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HashCheckResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? computedHash = freezed,
    Object? expectedHash = freezed,
    Object? matches = freezed,
    Object? error = freezed,
    Object? algorithm = null,
  }) {
    return _then(
      _$HashCheckResultImpl(
        fileId: null == fileId
            ? _value.fileId
            : fileId // ignore: cast_nullable_to_non_nullable
                  as String,
        computedHash: freezed == computedHash
            ? _value.computedHash
            : computedHash // ignore: cast_nullable_to_non_nullable
                  as String?,
        expectedHash: freezed == expectedHash
            ? _value.expectedHash
            : expectedHash // ignore: cast_nullable_to_non_nullable
                  as String?,
        matches: freezed == matches
            ? _value.matches
            : matches // ignore: cast_nullable_to_non_nullable
                  as bool?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        algorithm: null == algorithm
            ? _value.algorithm
            : algorithm // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HashCheckResultImpl implements _HashCheckResult {
  const _$HashCheckResultImpl({
    required this.fileId,
    this.computedHash,
    this.expectedHash,
    this.matches,
    this.error,
    required this.algorithm,
  });

  factory _$HashCheckResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$HashCheckResultImplFromJson(json);

  /// The file ID that was processed
  @override
  final String fileId;

  /// Computed hash value (hex string)
  @override
  final String? computedHash;

  /// Expected hash value for verification (optional)
  @override
  final String? expectedHash;

  /// Whether the computed hash matches the expected hash
  @override
  final bool? matches;

  /// Error message if hash computation failed
  @override
  final String? error;

  /// Algorithm used for hashing
  @override
  final String algorithm;

  @override
  String toString() {
    return 'HashCheckResult(fileId: $fileId, computedHash: $computedHash, expectedHash: $expectedHash, matches: $matches, error: $error, algorithm: $algorithm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HashCheckResultImpl &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.computedHash, computedHash) ||
                other.computedHash == computedHash) &&
            (identical(other.expectedHash, expectedHash) ||
                other.expectedHash == expectedHash) &&
            (identical(other.matches, matches) || other.matches == matches) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    fileId,
    computedHash,
    expectedHash,
    matches,
    error,
    algorithm,
  );

  /// Create a copy of HashCheckResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HashCheckResultImplCopyWith<_$HashCheckResultImpl> get copyWith =>
      __$$HashCheckResultImplCopyWithImpl<_$HashCheckResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HashCheckResultImplToJson(this);
  }
}

abstract class _HashCheckResult implements HashCheckResult {
  const factory _HashCheckResult({
    required final String fileId,
    final String? computedHash,
    final String? expectedHash,
    final bool? matches,
    final String? error,
    required final String algorithm,
  }) = _$HashCheckResultImpl;

  factory _HashCheckResult.fromJson(Map<String, dynamic> json) =
      _$HashCheckResultImpl.fromJson;

  /// The file ID that was processed
  @override
  String get fileId;

  /// Computed hash value (hex string)
  @override
  String? get computedHash;

  /// Expected hash value for verification (optional)
  @override
  String? get expectedHash;

  /// Whether the computed hash matches the expected hash
  @override
  bool? get matches;

  /// Error message if hash computation failed
  @override
  String? get error;

  /// Algorithm used for hashing
  @override
  String get algorithm;

  /// Create a copy of HashCheckResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HashCheckResultImplCopyWith<_$HashCheckResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HashCheckTask _$HashCheckTaskFromJson(Map<String, dynamic> json) {
  return _HashCheckTask.fromJson(json);
}

/// @nodoc
mixin _$HashCheckTask {
  /// IDs of files to hash/verify
  List<String> get fileIds => throw _privateConstructorUsedError;

  /// Hash algorithm to use (e.g., 'md5', 'sha1', 'sha256')
  String get algorithm => throw _privateConstructorUsedError;

  /// Optional expected hashes for verification, keyed by file ID
  Map<String, String> get expectedHashes => throw _privateConstructorUsedError;

  /// Serializes this HashCheckTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HashCheckTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HashCheckTaskCopyWith<HashCheckTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HashCheckTaskCopyWith<$Res> {
  factory $HashCheckTaskCopyWith(
    HashCheckTask value,
    $Res Function(HashCheckTask) then,
  ) = _$HashCheckTaskCopyWithImpl<$Res, HashCheckTask>;
  @useResult
  $Res call({
    List<String> fileIds,
    String algorithm,
    Map<String, String> expectedHashes,
  });
}

/// @nodoc
class _$HashCheckTaskCopyWithImpl<$Res, $Val extends HashCheckTask>
    implements $HashCheckTaskCopyWith<$Res> {
  _$HashCheckTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HashCheckTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileIds = null,
    Object? algorithm = null,
    Object? expectedHashes = null,
  }) {
    return _then(
      _value.copyWith(
            fileIds: null == fileIds
                ? _value.fileIds
                : fileIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            algorithm: null == algorithm
                ? _value.algorithm
                : algorithm // ignore: cast_nullable_to_non_nullable
                      as String,
            expectedHashes: null == expectedHashes
                ? _value.expectedHashes
                : expectedHashes // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HashCheckTaskImplCopyWith<$Res>
    implements $HashCheckTaskCopyWith<$Res> {
  factory _$$HashCheckTaskImplCopyWith(
    _$HashCheckTaskImpl value,
    $Res Function(_$HashCheckTaskImpl) then,
  ) = __$$HashCheckTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> fileIds,
    String algorithm,
    Map<String, String> expectedHashes,
  });
}

/// @nodoc
class __$$HashCheckTaskImplCopyWithImpl<$Res>
    extends _$HashCheckTaskCopyWithImpl<$Res, _$HashCheckTaskImpl>
    implements _$$HashCheckTaskImplCopyWith<$Res> {
  __$$HashCheckTaskImplCopyWithImpl(
    _$HashCheckTaskImpl _value,
    $Res Function(_$HashCheckTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HashCheckTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileIds = null,
    Object? algorithm = null,
    Object? expectedHashes = null,
  }) {
    return _then(
      _$HashCheckTaskImpl(
        fileIds: null == fileIds
            ? _value._fileIds
            : fileIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        algorithm: null == algorithm
            ? _value.algorithm
            : algorithm // ignore: cast_nullable_to_non_nullable
                  as String,
        expectedHashes: null == expectedHashes
            ? _value._expectedHashes
            : expectedHashes // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HashCheckTaskImpl extends _HashCheckTask {
  const _$HashCheckTaskImpl({
    required final List<String> fileIds,
    this.algorithm = 'sha256',
    final Map<String, String> expectedHashes = const <String, String>{},
  }) : _fileIds = fileIds,
       _expectedHashes = expectedHashes,
       super._();

  factory _$HashCheckTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$HashCheckTaskImplFromJson(json);

  /// IDs of files to hash/verify
  final List<String> _fileIds;

  /// IDs of files to hash/verify
  @override
  List<String> get fileIds {
    if (_fileIds is EqualUnmodifiableListView) return _fileIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileIds);
  }

  /// Hash algorithm to use (e.g., 'md5', 'sha1', 'sha256')
  @override
  @JsonKey()
  final String algorithm;

  /// Optional expected hashes for verification, keyed by file ID
  final Map<String, String> _expectedHashes;

  /// Optional expected hashes for verification, keyed by file ID
  @override
  @JsonKey()
  Map<String, String> get expectedHashes {
    if (_expectedHashes is EqualUnmodifiableMapView) return _expectedHashes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_expectedHashes);
  }

  @override
  String toString() {
    return 'HashCheckTask(fileIds: $fileIds, algorithm: $algorithm, expectedHashes: $expectedHashes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HashCheckTaskImpl &&
            const DeepCollectionEquality().equals(other._fileIds, _fileIds) &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm) &&
            const DeepCollectionEquality().equals(
              other._expectedHashes,
              _expectedHashes,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_fileIds),
    algorithm,
    const DeepCollectionEquality().hash(_expectedHashes),
  );

  /// Create a copy of HashCheckTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HashCheckTaskImplCopyWith<_$HashCheckTaskImpl> get copyWith =>
      __$$HashCheckTaskImplCopyWithImpl<_$HashCheckTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HashCheckTaskImplToJson(this);
  }
}

abstract class _HashCheckTask extends HashCheckTask {
  const factory _HashCheckTask({
    required final List<String> fileIds,
    final String algorithm,
    final Map<String, String> expectedHashes,
  }) = _$HashCheckTaskImpl;
  const _HashCheckTask._() : super._();

  factory _HashCheckTask.fromJson(Map<String, dynamic> json) =
      _$HashCheckTaskImpl.fromJson;

  /// IDs of files to hash/verify
  @override
  List<String> get fileIds;

  /// Hash algorithm to use (e.g., 'md5', 'sha1', 'sha256')
  @override
  String get algorithm;

  /// Optional expected hashes for verification, keyed by file ID
  @override
  Map<String, String> get expectedHashes;

  /// Create a copy of HashCheckTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HashCheckTaskImplCopyWith<_$HashCheckTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
