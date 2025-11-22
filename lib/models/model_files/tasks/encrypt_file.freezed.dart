// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypt_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EncryptFileTask _$EncryptFileTaskFromJson(Map<String, dynamic> json) {
  return _EncryptFileTask.fromJson(json);
}

/// @nodoc
mixin _$EncryptFileTask {
  /// ID of the source file to encrypt
  String get sourceFileId => throw _privateConstructorUsedError;

  /// Encryption algorithm to use (e.g., 'AES-256', 'ChaCha20')
  String get algorithm => throw _privateConstructorUsedError;

  /// Encryption key or parameters (abstract representation)
  Map<String, dynamic> get encryptionParams =>
      throw _privateConstructorUsedError;

  /// Whether to overwrite the original file or create a new encrypted file
  bool get overwriteOriginal => throw _privateConstructorUsedError;

  /// Optional target folder ID if creating a new file
  String? get targetFolderId => throw _privateConstructorUsedError;

  /// Optional name for the encrypted file (if not overwriting)
  String? get encryptedFileName => throw _privateConstructorUsedError;

  /// Conflict resolution policy when target file exists
  EncryptConflictPolicy get conflictPolicy =>
      throw _privateConstructorUsedError;

  /// Serializes this EncryptFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncryptFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncryptFileTaskCopyWith<EncryptFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptFileTaskCopyWith<$Res> {
  factory $EncryptFileTaskCopyWith(
    EncryptFileTask value,
    $Res Function(EncryptFileTask) then,
  ) = _$EncryptFileTaskCopyWithImpl<$Res, EncryptFileTask>;
  @useResult
  $Res call({
    String sourceFileId,
    String algorithm,
    Map<String, dynamic> encryptionParams,
    bool overwriteOriginal,
    String? targetFolderId,
    String? encryptedFileName,
    EncryptConflictPolicy conflictPolicy,
  });
}

/// @nodoc
class _$EncryptFileTaskCopyWithImpl<$Res, $Val extends EncryptFileTask>
    implements $EncryptFileTaskCopyWith<$Res> {
  _$EncryptFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncryptFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFileId = null,
    Object? algorithm = null,
    Object? encryptionParams = null,
    Object? overwriteOriginal = null,
    Object? targetFolderId = freezed,
    Object? encryptedFileName = freezed,
    Object? conflictPolicy = null,
  }) {
    return _then(
      _value.copyWith(
            sourceFileId: null == sourceFileId
                ? _value.sourceFileId
                : sourceFileId // ignore: cast_nullable_to_non_nullable
                      as String,
            algorithm: null == algorithm
                ? _value.algorithm
                : algorithm // ignore: cast_nullable_to_non_nullable
                      as String,
            encryptionParams: null == encryptionParams
                ? _value.encryptionParams
                : encryptionParams // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            overwriteOriginal: null == overwriteOriginal
                ? _value.overwriteOriginal
                : overwriteOriginal // ignore: cast_nullable_to_non_nullable
                      as bool,
            targetFolderId: freezed == targetFolderId
                ? _value.targetFolderId
                : targetFolderId // ignore: cast_nullable_to_non_nullable
                      as String?,
            encryptedFileName: freezed == encryptedFileName
                ? _value.encryptedFileName
                : encryptedFileName // ignore: cast_nullable_to_non_nullable
                      as String?,
            conflictPolicy: null == conflictPolicy
                ? _value.conflictPolicy
                : conflictPolicy // ignore: cast_nullable_to_non_nullable
                      as EncryptConflictPolicy,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EncryptFileTaskImplCopyWith<$Res>
    implements $EncryptFileTaskCopyWith<$Res> {
  factory _$$EncryptFileTaskImplCopyWith(
    _$EncryptFileTaskImpl value,
    $Res Function(_$EncryptFileTaskImpl) then,
  ) = __$$EncryptFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sourceFileId,
    String algorithm,
    Map<String, dynamic> encryptionParams,
    bool overwriteOriginal,
    String? targetFolderId,
    String? encryptedFileName,
    EncryptConflictPolicy conflictPolicy,
  });
}

/// @nodoc
class __$$EncryptFileTaskImplCopyWithImpl<$Res>
    extends _$EncryptFileTaskCopyWithImpl<$Res, _$EncryptFileTaskImpl>
    implements _$$EncryptFileTaskImplCopyWith<$Res> {
  __$$EncryptFileTaskImplCopyWithImpl(
    _$EncryptFileTaskImpl _value,
    $Res Function(_$EncryptFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EncryptFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFileId = null,
    Object? algorithm = null,
    Object? encryptionParams = null,
    Object? overwriteOriginal = null,
    Object? targetFolderId = freezed,
    Object? encryptedFileName = freezed,
    Object? conflictPolicy = null,
  }) {
    return _then(
      _$EncryptFileTaskImpl(
        sourceFileId: null == sourceFileId
            ? _value.sourceFileId
            : sourceFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        algorithm: null == algorithm
            ? _value.algorithm
            : algorithm // ignore: cast_nullable_to_non_nullable
                  as String,
        encryptionParams: null == encryptionParams
            ? _value._encryptionParams
            : encryptionParams // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        overwriteOriginal: null == overwriteOriginal
            ? _value.overwriteOriginal
            : overwriteOriginal // ignore: cast_nullable_to_non_nullable
                  as bool,
        targetFolderId: freezed == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String?,
        encryptedFileName: freezed == encryptedFileName
            ? _value.encryptedFileName
            : encryptedFileName // ignore: cast_nullable_to_non_nullable
                  as String?,
        conflictPolicy: null == conflictPolicy
            ? _value.conflictPolicy
            : conflictPolicy // ignore: cast_nullable_to_non_nullable
                  as EncryptConflictPolicy,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EncryptFileTaskImpl extends _EncryptFileTask {
  const _$EncryptFileTaskImpl({
    required this.sourceFileId,
    required this.algorithm,
    required final Map<String, dynamic> encryptionParams,
    this.overwriteOriginal = false,
    this.targetFolderId,
    this.encryptedFileName,
    this.conflictPolicy = EncryptConflictPolicy.rename,
  }) : _encryptionParams = encryptionParams,
       super._();

  factory _$EncryptFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptFileTaskImplFromJson(json);

  /// ID of the source file to encrypt
  @override
  final String sourceFileId;

  /// Encryption algorithm to use (e.g., 'AES-256', 'ChaCha20')
  @override
  final String algorithm;

  /// Encryption key or parameters (abstract representation)
  final Map<String, dynamic> _encryptionParams;

  /// Encryption key or parameters (abstract representation)
  @override
  Map<String, dynamic> get encryptionParams {
    if (_encryptionParams is EqualUnmodifiableMapView) return _encryptionParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_encryptionParams);
  }

  /// Whether to overwrite the original file or create a new encrypted file
  @override
  @JsonKey()
  final bool overwriteOriginal;

  /// Optional target folder ID if creating a new file
  @override
  final String? targetFolderId;

  /// Optional name for the encrypted file (if not overwriting)
  @override
  final String? encryptedFileName;

  /// Conflict resolution policy when target file exists
  @override
  @JsonKey()
  final EncryptConflictPolicy conflictPolicy;

  @override
  String toString() {
    return 'EncryptFileTask(sourceFileId: $sourceFileId, algorithm: $algorithm, encryptionParams: $encryptionParams, overwriteOriginal: $overwriteOriginal, targetFolderId: $targetFolderId, encryptedFileName: $encryptedFileName, conflictPolicy: $conflictPolicy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptFileTaskImpl &&
            (identical(other.sourceFileId, sourceFileId) ||
                other.sourceFileId == sourceFileId) &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm) &&
            const DeepCollectionEquality().equals(
              other._encryptionParams,
              _encryptionParams,
            ) &&
            (identical(other.overwriteOriginal, overwriteOriginal) ||
                other.overwriteOriginal == overwriteOriginal) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            (identical(other.encryptedFileName, encryptedFileName) ||
                other.encryptedFileName == encryptedFileName) &&
            (identical(other.conflictPolicy, conflictPolicy) ||
                other.conflictPolicy == conflictPolicy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sourceFileId,
    algorithm,
    const DeepCollectionEquality().hash(_encryptionParams),
    overwriteOriginal,
    targetFolderId,
    encryptedFileName,
    conflictPolicy,
  );

  /// Create a copy of EncryptFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptFileTaskImplCopyWith<_$EncryptFileTaskImpl> get copyWith =>
      __$$EncryptFileTaskImplCopyWithImpl<_$EncryptFileTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptFileTaskImplToJson(this);
  }
}

abstract class _EncryptFileTask extends EncryptFileTask {
  const factory _EncryptFileTask({
    required final String sourceFileId,
    required final String algorithm,
    required final Map<String, dynamic> encryptionParams,
    final bool overwriteOriginal,
    final String? targetFolderId,
    final String? encryptedFileName,
    final EncryptConflictPolicy conflictPolicy,
  }) = _$EncryptFileTaskImpl;
  const _EncryptFileTask._() : super._();

  factory _EncryptFileTask.fromJson(Map<String, dynamic> json) =
      _$EncryptFileTaskImpl.fromJson;

  /// ID of the source file to encrypt
  @override
  String get sourceFileId;

  /// Encryption algorithm to use (e.g., 'AES-256', 'ChaCha20')
  @override
  String get algorithm;

  /// Encryption key or parameters (abstract representation)
  @override
  Map<String, dynamic> get encryptionParams;

  /// Whether to overwrite the original file or create a new encrypted file
  @override
  bool get overwriteOriginal;

  /// Optional target folder ID if creating a new file
  @override
  String? get targetFolderId;

  /// Optional name for the encrypted file (if not overwriting)
  @override
  String? get encryptedFileName;

  /// Conflict resolution policy when target file exists
  @override
  EncryptConflictPolicy get conflictPolicy;

  /// Create a copy of EncryptFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptFileTaskImplCopyWith<_$EncryptFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EncryptFileResult _$EncryptFileResultFromJson(Map<String, dynamic> json) {
  return _EncryptFileResult.fromJson(json);
}

/// @nodoc
mixin _$EncryptFileResult {
  /// ID of the encrypted file (may be same as source if overwritten)
  String get encryptedFileId => throw _privateConstructorUsedError;

  /// Path to the encrypted file
  String get encryptedFilePath => throw _privateConstructorUsedError;

  /// Whether the operation created a new file or modified existing
  bool get createdNewFile => throw _privateConstructorUsedError;

  /// Original file ID that was encrypted
  String get originalFileId => throw _privateConstructorUsedError;

  /// Encryption algorithm used
  String get algorithm => throw _privateConstructorUsedError;

  /// Any additional metadata about the encryption process
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this EncryptFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncryptFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncryptFileResultCopyWith<EncryptFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptFileResultCopyWith<$Res> {
  factory $EncryptFileResultCopyWith(
    EncryptFileResult value,
    $Res Function(EncryptFileResult) then,
  ) = _$EncryptFileResultCopyWithImpl<$Res, EncryptFileResult>;
  @useResult
  $Res call({
    String encryptedFileId,
    String encryptedFilePath,
    bool createdNewFile,
    String originalFileId,
    String algorithm,
    Map<String, dynamic> metadata,
  });
}

/// @nodoc
class _$EncryptFileResultCopyWithImpl<$Res, $Val extends EncryptFileResult>
    implements $EncryptFileResultCopyWith<$Res> {
  _$EncryptFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncryptFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encryptedFileId = null,
    Object? encryptedFilePath = null,
    Object? createdNewFile = null,
    Object? originalFileId = null,
    Object? algorithm = null,
    Object? metadata = null,
  }) {
    return _then(
      _value.copyWith(
            encryptedFileId: null == encryptedFileId
                ? _value.encryptedFileId
                : encryptedFileId // ignore: cast_nullable_to_non_nullable
                      as String,
            encryptedFilePath: null == encryptedFilePath
                ? _value.encryptedFilePath
                : encryptedFilePath // ignore: cast_nullable_to_non_nullable
                      as String,
            createdNewFile: null == createdNewFile
                ? _value.createdNewFile
                : createdNewFile // ignore: cast_nullable_to_non_nullable
                      as bool,
            originalFileId: null == originalFileId
                ? _value.originalFileId
                : originalFileId // ignore: cast_nullable_to_non_nullable
                      as String,
            algorithm: null == algorithm
                ? _value.algorithm
                : algorithm // ignore: cast_nullable_to_non_nullable
                      as String,
            metadata: null == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EncryptFileResultImplCopyWith<$Res>
    implements $EncryptFileResultCopyWith<$Res> {
  factory _$$EncryptFileResultImplCopyWith(
    _$EncryptFileResultImpl value,
    $Res Function(_$EncryptFileResultImpl) then,
  ) = __$$EncryptFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String encryptedFileId,
    String encryptedFilePath,
    bool createdNewFile,
    String originalFileId,
    String algorithm,
    Map<String, dynamic> metadata,
  });
}

/// @nodoc
class __$$EncryptFileResultImplCopyWithImpl<$Res>
    extends _$EncryptFileResultCopyWithImpl<$Res, _$EncryptFileResultImpl>
    implements _$$EncryptFileResultImplCopyWith<$Res> {
  __$$EncryptFileResultImplCopyWithImpl(
    _$EncryptFileResultImpl _value,
    $Res Function(_$EncryptFileResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EncryptFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encryptedFileId = null,
    Object? encryptedFilePath = null,
    Object? createdNewFile = null,
    Object? originalFileId = null,
    Object? algorithm = null,
    Object? metadata = null,
  }) {
    return _then(
      _$EncryptFileResultImpl(
        encryptedFileId: null == encryptedFileId
            ? _value.encryptedFileId
            : encryptedFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        encryptedFilePath: null == encryptedFilePath
            ? _value.encryptedFilePath
            : encryptedFilePath // ignore: cast_nullable_to_non_nullable
                  as String,
        createdNewFile: null == createdNewFile
            ? _value.createdNewFile
            : createdNewFile // ignore: cast_nullable_to_non_nullable
                  as bool,
        originalFileId: null == originalFileId
            ? _value.originalFileId
            : originalFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        algorithm: null == algorithm
            ? _value.algorithm
            : algorithm // ignore: cast_nullable_to_non_nullable
                  as String,
        metadata: null == metadata
            ? _value._metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EncryptFileResultImpl implements _EncryptFileResult {
  const _$EncryptFileResultImpl({
    required this.encryptedFileId,
    required this.encryptedFilePath,
    required this.createdNewFile,
    required this.originalFileId,
    required this.algorithm,
    final Map<String, dynamic> metadata = const <String, dynamic>{},
  }) : _metadata = metadata;

  factory _$EncryptFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptFileResultImplFromJson(json);

  /// ID of the encrypted file (may be same as source if overwritten)
  @override
  final String encryptedFileId;

  /// Path to the encrypted file
  @override
  final String encryptedFilePath;

  /// Whether the operation created a new file or modified existing
  @override
  final bool createdNewFile;

  /// Original file ID that was encrypted
  @override
  final String originalFileId;

  /// Encryption algorithm used
  @override
  final String algorithm;

  /// Any additional metadata about the encryption process
  final Map<String, dynamic> _metadata;

  /// Any additional metadata about the encryption process
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'EncryptFileResult(encryptedFileId: $encryptedFileId, encryptedFilePath: $encryptedFilePath, createdNewFile: $createdNewFile, originalFileId: $originalFileId, algorithm: $algorithm, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptFileResultImpl &&
            (identical(other.encryptedFileId, encryptedFileId) ||
                other.encryptedFileId == encryptedFileId) &&
            (identical(other.encryptedFilePath, encryptedFilePath) ||
                other.encryptedFilePath == encryptedFilePath) &&
            (identical(other.createdNewFile, createdNewFile) ||
                other.createdNewFile == createdNewFile) &&
            (identical(other.originalFileId, originalFileId) ||
                other.originalFileId == originalFileId) &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    encryptedFileId,
    encryptedFilePath,
    createdNewFile,
    originalFileId,
    algorithm,
    const DeepCollectionEquality().hash(_metadata),
  );

  /// Create a copy of EncryptFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptFileResultImplCopyWith<_$EncryptFileResultImpl> get copyWith =>
      __$$EncryptFileResultImplCopyWithImpl<_$EncryptFileResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptFileResultImplToJson(this);
  }
}

abstract class _EncryptFileResult implements EncryptFileResult {
  const factory _EncryptFileResult({
    required final String encryptedFileId,
    required final String encryptedFilePath,
    required final bool createdNewFile,
    required final String originalFileId,
    required final String algorithm,
    final Map<String, dynamic> metadata,
  }) = _$EncryptFileResultImpl;

  factory _EncryptFileResult.fromJson(Map<String, dynamic> json) =
      _$EncryptFileResultImpl.fromJson;

  /// ID of the encrypted file (may be same as source if overwritten)
  @override
  String get encryptedFileId;

  /// Path to the encrypted file
  @override
  String get encryptedFilePath;

  /// Whether the operation created a new file or modified existing
  @override
  bool get createdNewFile;

  /// Original file ID that was encrypted
  @override
  String get originalFileId;

  /// Encryption algorithm used
  @override
  String get algorithm;

  /// Any additional metadata about the encryption process
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of EncryptFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptFileResultImplCopyWith<_$EncryptFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
