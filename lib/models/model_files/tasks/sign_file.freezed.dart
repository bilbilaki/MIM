// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SignFileTask _$SignFileTaskFromJson(Map<String, dynamic> json) {
  return _SignFileTask.fromJson(json);
}

/// @nodoc
mixin _$SignFileTask {
  /// The ID of the file to sign
  String get fileId => throw _privateConstructorUsedError;

  /// Signing parameters (key identifier, algorithm, etc.)
  Map<String, dynamic> get signingParams => throw _privateConstructorUsedError;

  /// Whether to create a separate signature file or embed in metadata
  bool get createSeparateSignature => throw _privateConstructorUsedError;

  /// Optional target folder for signature file (if createSeparateSignature is true)
  String? get targetFolderId => throw _privateConstructorUsedError;

  /// Optional name for signature file
  String? get signatureFileName => throw _privateConstructorUsedError;

  /// Serializes this SignFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignFileTaskCopyWith<SignFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignFileTaskCopyWith<$Res> {
  factory $SignFileTaskCopyWith(
    SignFileTask value,
    $Res Function(SignFileTask) then,
  ) = _$SignFileTaskCopyWithImpl<$Res, SignFileTask>;
  @useResult
  $Res call({
    String fileId,
    Map<String, dynamic> signingParams,
    bool createSeparateSignature,
    String? targetFolderId,
    String? signatureFileName,
  });
}

/// @nodoc
class _$SignFileTaskCopyWithImpl<$Res, $Val extends SignFileTask>
    implements $SignFileTaskCopyWith<$Res> {
  _$SignFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? signingParams = null,
    Object? createSeparateSignature = null,
    Object? targetFolderId = freezed,
    Object? signatureFileName = freezed,
  }) {
    return _then(
      _value.copyWith(
            fileId: null == fileId
                ? _value.fileId
                : fileId // ignore: cast_nullable_to_non_nullable
                      as String,
            signingParams: null == signingParams
                ? _value.signingParams
                : signingParams // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            createSeparateSignature: null == createSeparateSignature
                ? _value.createSeparateSignature
                : createSeparateSignature // ignore: cast_nullable_to_non_nullable
                      as bool,
            targetFolderId: freezed == targetFolderId
                ? _value.targetFolderId
                : targetFolderId // ignore: cast_nullable_to_non_nullable
                      as String?,
            signatureFileName: freezed == signatureFileName
                ? _value.signatureFileName
                : signatureFileName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignFileTaskImplCopyWith<$Res>
    implements $SignFileTaskCopyWith<$Res> {
  factory _$$SignFileTaskImplCopyWith(
    _$SignFileTaskImpl value,
    $Res Function(_$SignFileTaskImpl) then,
  ) = __$$SignFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String fileId,
    Map<String, dynamic> signingParams,
    bool createSeparateSignature,
    String? targetFolderId,
    String? signatureFileName,
  });
}

/// @nodoc
class __$$SignFileTaskImplCopyWithImpl<$Res>
    extends _$SignFileTaskCopyWithImpl<$Res, _$SignFileTaskImpl>
    implements _$$SignFileTaskImplCopyWith<$Res> {
  __$$SignFileTaskImplCopyWithImpl(
    _$SignFileTaskImpl _value,
    $Res Function(_$SignFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? signingParams = null,
    Object? createSeparateSignature = null,
    Object? targetFolderId = freezed,
    Object? signatureFileName = freezed,
  }) {
    return _then(
      _$SignFileTaskImpl(
        fileId: null == fileId
            ? _value.fileId
            : fileId // ignore: cast_nullable_to_non_nullable
                  as String,
        signingParams: null == signingParams
            ? _value._signingParams
            : signingParams // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        createSeparateSignature: null == createSeparateSignature
            ? _value.createSeparateSignature
            : createSeparateSignature // ignore: cast_nullable_to_non_nullable
                  as bool,
        targetFolderId: freezed == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String?,
        signatureFileName: freezed == signatureFileName
            ? _value.signatureFileName
            : signatureFileName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SignFileTaskImpl extends _SignFileTask {
  const _$SignFileTaskImpl({
    required this.fileId,
    required final Map<String, dynamic> signingParams,
    this.createSeparateSignature = false,
    this.targetFolderId,
    this.signatureFileName,
  }) : _signingParams = signingParams,
       super._();

  factory _$SignFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignFileTaskImplFromJson(json);

  /// The ID of the file to sign
  @override
  final String fileId;

  /// Signing parameters (key identifier, algorithm, etc.)
  final Map<String, dynamic> _signingParams;

  /// Signing parameters (key identifier, algorithm, etc.)
  @override
  Map<String, dynamic> get signingParams {
    if (_signingParams is EqualUnmodifiableMapView) return _signingParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_signingParams);
  }

  /// Whether to create a separate signature file or embed in metadata
  @override
  @JsonKey()
  final bool createSeparateSignature;

  /// Optional target folder for signature file (if createSeparateSignature is true)
  @override
  final String? targetFolderId;

  /// Optional name for signature file
  @override
  final String? signatureFileName;

  @override
  String toString() {
    return 'SignFileTask(fileId: $fileId, signingParams: $signingParams, createSeparateSignature: $createSeparateSignature, targetFolderId: $targetFolderId, signatureFileName: $signatureFileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignFileTaskImpl &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            const DeepCollectionEquality().equals(
              other._signingParams,
              _signingParams,
            ) &&
            (identical(
                  other.createSeparateSignature,
                  createSeparateSignature,
                ) ||
                other.createSeparateSignature == createSeparateSignature) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            (identical(other.signatureFileName, signatureFileName) ||
                other.signatureFileName == signatureFileName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    fileId,
    const DeepCollectionEquality().hash(_signingParams),
    createSeparateSignature,
    targetFolderId,
    signatureFileName,
  );

  /// Create a copy of SignFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignFileTaskImplCopyWith<_$SignFileTaskImpl> get copyWith =>
      __$$SignFileTaskImplCopyWithImpl<_$SignFileTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignFileTaskImplToJson(this);
  }
}

abstract class _SignFileTask extends SignFileTask {
  const factory _SignFileTask({
    required final String fileId,
    required final Map<String, dynamic> signingParams,
    final bool createSeparateSignature,
    final String? targetFolderId,
    final String? signatureFileName,
  }) = _$SignFileTaskImpl;
  const _SignFileTask._() : super._();

  factory _SignFileTask.fromJson(Map<String, dynamic> json) =
      _$SignFileTaskImpl.fromJson;

  /// The ID of the file to sign
  @override
  String get fileId;

  /// Signing parameters (key identifier, algorithm, etc.)
  @override
  Map<String, dynamic> get signingParams;

  /// Whether to create a separate signature file or embed in metadata
  @override
  bool get createSeparateSignature;

  /// Optional target folder for signature file (if createSeparateSignature is true)
  @override
  String? get targetFolderId;

  /// Optional name for signature file
  @override
  String? get signatureFileName;

  /// Create a copy of SignFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignFileTaskImplCopyWith<_$SignFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignFileResult _$SignFileResultFromJson(Map<String, dynamic> json) {
  return _SignFileResult.fromJson(json);
}

/// @nodoc
mixin _$SignFileResult {
  /// ID of the signed file (or signature file if separate)
  String get signedEntryId => throw _privateConstructorUsedError;

  /// The signing algorithm used
  String get algorithm => throw _privateConstructorUsedError;

  /// Timestamp of signing
  DateTime get signedAt => throw _privateConstructorUsedError;

  /// Digital signature data (hex encoded or base64)
  String? get signatureData => throw _privateConstructorUsedError;

  /// Optional certificate or public key info
  Map<String, dynamic>? get certificateInfo =>
      throw _privateConstructorUsedError;

  /// Serializes this SignFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignFileResultCopyWith<SignFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignFileResultCopyWith<$Res> {
  factory $SignFileResultCopyWith(
    SignFileResult value,
    $Res Function(SignFileResult) then,
  ) = _$SignFileResultCopyWithImpl<$Res, SignFileResult>;
  @useResult
  $Res call({
    String signedEntryId,
    String algorithm,
    DateTime signedAt,
    String? signatureData,
    Map<String, dynamic>? certificateInfo,
  });
}

/// @nodoc
class _$SignFileResultCopyWithImpl<$Res, $Val extends SignFileResult>
    implements $SignFileResultCopyWith<$Res> {
  _$SignFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedEntryId = null,
    Object? algorithm = null,
    Object? signedAt = null,
    Object? signatureData = freezed,
    Object? certificateInfo = freezed,
  }) {
    return _then(
      _value.copyWith(
            signedEntryId: null == signedEntryId
                ? _value.signedEntryId
                : signedEntryId // ignore: cast_nullable_to_non_nullable
                      as String,
            algorithm: null == algorithm
                ? _value.algorithm
                : algorithm // ignore: cast_nullable_to_non_nullable
                      as String,
            signedAt: null == signedAt
                ? _value.signedAt
                : signedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            signatureData: freezed == signatureData
                ? _value.signatureData
                : signatureData // ignore: cast_nullable_to_non_nullable
                      as String?,
            certificateInfo: freezed == certificateInfo
                ? _value.certificateInfo
                : certificateInfo // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignFileResultImplCopyWith<$Res>
    implements $SignFileResultCopyWith<$Res> {
  factory _$$SignFileResultImplCopyWith(
    _$SignFileResultImpl value,
    $Res Function(_$SignFileResultImpl) then,
  ) = __$$SignFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String signedEntryId,
    String algorithm,
    DateTime signedAt,
    String? signatureData,
    Map<String, dynamic>? certificateInfo,
  });
}

/// @nodoc
class __$$SignFileResultImplCopyWithImpl<$Res>
    extends _$SignFileResultCopyWithImpl<$Res, _$SignFileResultImpl>
    implements _$$SignFileResultImplCopyWith<$Res> {
  __$$SignFileResultImplCopyWithImpl(
    _$SignFileResultImpl _value,
    $Res Function(_$SignFileResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedEntryId = null,
    Object? algorithm = null,
    Object? signedAt = null,
    Object? signatureData = freezed,
    Object? certificateInfo = freezed,
  }) {
    return _then(
      _$SignFileResultImpl(
        signedEntryId: null == signedEntryId
            ? _value.signedEntryId
            : signedEntryId // ignore: cast_nullable_to_non_nullable
                  as String,
        algorithm: null == algorithm
            ? _value.algorithm
            : algorithm // ignore: cast_nullable_to_non_nullable
                  as String,
        signedAt: null == signedAt
            ? _value.signedAt
            : signedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        signatureData: freezed == signatureData
            ? _value.signatureData
            : signatureData // ignore: cast_nullable_to_non_nullable
                  as String?,
        certificateInfo: freezed == certificateInfo
            ? _value._certificateInfo
            : certificateInfo // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SignFileResultImpl implements _SignFileResult {
  const _$SignFileResultImpl({
    required this.signedEntryId,
    required this.algorithm,
    required this.signedAt,
    this.signatureData,
    final Map<String, dynamic>? certificateInfo,
  }) : _certificateInfo = certificateInfo;

  factory _$SignFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignFileResultImplFromJson(json);

  /// ID of the signed file (or signature file if separate)
  @override
  final String signedEntryId;

  /// The signing algorithm used
  @override
  final String algorithm;

  /// Timestamp of signing
  @override
  final DateTime signedAt;

  /// Digital signature data (hex encoded or base64)
  @override
  final String? signatureData;

  /// Optional certificate or public key info
  final Map<String, dynamic>? _certificateInfo;

  /// Optional certificate or public key info
  @override
  Map<String, dynamic>? get certificateInfo {
    final value = _certificateInfo;
    if (value == null) return null;
    if (_certificateInfo is EqualUnmodifiableMapView) return _certificateInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SignFileResult(signedEntryId: $signedEntryId, algorithm: $algorithm, signedAt: $signedAt, signatureData: $signatureData, certificateInfo: $certificateInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignFileResultImpl &&
            (identical(other.signedEntryId, signedEntryId) ||
                other.signedEntryId == signedEntryId) &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm) &&
            (identical(other.signedAt, signedAt) ||
                other.signedAt == signedAt) &&
            (identical(other.signatureData, signatureData) ||
                other.signatureData == signatureData) &&
            const DeepCollectionEquality().equals(
              other._certificateInfo,
              _certificateInfo,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    signedEntryId,
    algorithm,
    signedAt,
    signatureData,
    const DeepCollectionEquality().hash(_certificateInfo),
  );

  /// Create a copy of SignFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignFileResultImplCopyWith<_$SignFileResultImpl> get copyWith =>
      __$$SignFileResultImplCopyWithImpl<_$SignFileResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SignFileResultImplToJson(this);
  }
}

abstract class _SignFileResult implements SignFileResult {
  const factory _SignFileResult({
    required final String signedEntryId,
    required final String algorithm,
    required final DateTime signedAt,
    final String? signatureData,
    final Map<String, dynamic>? certificateInfo,
  }) = _$SignFileResultImpl;

  factory _SignFileResult.fromJson(Map<String, dynamic> json) =
      _$SignFileResultImpl.fromJson;

  /// ID of the signed file (or signature file if separate)
  @override
  String get signedEntryId;

  /// The signing algorithm used
  @override
  String get algorithm;

  /// Timestamp of signing
  @override
  DateTime get signedAt;

  /// Digital signature data (hex encoded or base64)
  @override
  String? get signatureData;

  /// Optional certificate or public key info
  @override
  Map<String, dynamic>? get certificateInfo;

  /// Create a copy of SignFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignFileResultImplCopyWith<_$SignFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
