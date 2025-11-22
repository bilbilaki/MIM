// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decrypt_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DecryptFileTask _$DecryptFileTaskFromJson(Map<String, dynamic> json) {
  return _DecryptFileTask.fromJson(json);
}

/// @nodoc
mixin _$DecryptFileTask {
  /// ID of the encrypted source file
  String get sourceFileId => throw _privateConstructorUsedError;

  /// Target folder ID where decrypted file will be placed
  String get targetFolderId => throw _privateConstructorUsedError;

  /// Optional new name for the decrypted file (uses original name if null)
  String? get newName => throw _privateConstructorUsedError;

  /// Whether to overwrite existing file with same name in target folder
  bool get overwrite => throw _privateConstructorUsedError;

  /// Decryption parameters (abstract representation)
  Map<String, dynamic> get decryptionParams =>
      throw _privateConstructorUsedError;

  /// Serializes this DecryptFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DecryptFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DecryptFileTaskCopyWith<DecryptFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecryptFileTaskCopyWith<$Res> {
  factory $DecryptFileTaskCopyWith(
    DecryptFileTask value,
    $Res Function(DecryptFileTask) then,
  ) = _$DecryptFileTaskCopyWithImpl<$Res, DecryptFileTask>;
  @useResult
  $Res call({
    String sourceFileId,
    String targetFolderId,
    String? newName,
    bool overwrite,
    Map<String, dynamic> decryptionParams,
  });
}

/// @nodoc
class _$DecryptFileTaskCopyWithImpl<$Res, $Val extends DecryptFileTask>
    implements $DecryptFileTaskCopyWith<$Res> {
  _$DecryptFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DecryptFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFileId = null,
    Object? targetFolderId = null,
    Object? newName = freezed,
    Object? overwrite = null,
    Object? decryptionParams = null,
  }) {
    return _then(
      _value.copyWith(
            sourceFileId: null == sourceFileId
                ? _value.sourceFileId
                : sourceFileId // ignore: cast_nullable_to_non_nullable
                      as String,
            targetFolderId: null == targetFolderId
                ? _value.targetFolderId
                : targetFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            newName: freezed == newName
                ? _value.newName
                : newName // ignore: cast_nullable_to_non_nullable
                      as String?,
            overwrite: null == overwrite
                ? _value.overwrite
                : overwrite // ignore: cast_nullable_to_non_nullable
                      as bool,
            decryptionParams: null == decryptionParams
                ? _value.decryptionParams
                : decryptionParams // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DecryptFileTaskImplCopyWith<$Res>
    implements $DecryptFileTaskCopyWith<$Res> {
  factory _$$DecryptFileTaskImplCopyWith(
    _$DecryptFileTaskImpl value,
    $Res Function(_$DecryptFileTaskImpl) then,
  ) = __$$DecryptFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sourceFileId,
    String targetFolderId,
    String? newName,
    bool overwrite,
    Map<String, dynamic> decryptionParams,
  });
}

/// @nodoc
class __$$DecryptFileTaskImplCopyWithImpl<$Res>
    extends _$DecryptFileTaskCopyWithImpl<$Res, _$DecryptFileTaskImpl>
    implements _$$DecryptFileTaskImplCopyWith<$Res> {
  __$$DecryptFileTaskImplCopyWithImpl(
    _$DecryptFileTaskImpl _value,
    $Res Function(_$DecryptFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DecryptFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFileId = null,
    Object? targetFolderId = null,
    Object? newName = freezed,
    Object? overwrite = null,
    Object? decryptionParams = null,
  }) {
    return _then(
      _$DecryptFileTaskImpl(
        sourceFileId: null == sourceFileId
            ? _value.sourceFileId
            : sourceFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        targetFolderId: null == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        newName: freezed == newName
            ? _value.newName
            : newName // ignore: cast_nullable_to_non_nullable
                  as String?,
        overwrite: null == overwrite
            ? _value.overwrite
            : overwrite // ignore: cast_nullable_to_non_nullable
                  as bool,
        decryptionParams: null == decryptionParams
            ? _value._decryptionParams
            : decryptionParams // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DecryptFileTaskImpl extends _DecryptFileTask {
  const _$DecryptFileTaskImpl({
    required this.sourceFileId,
    required this.targetFolderId,
    this.newName,
    this.overwrite = false,
    final Map<String, dynamic> decryptionParams = const <String, dynamic>{},
  }) : _decryptionParams = decryptionParams,
       super._();

  factory _$DecryptFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecryptFileTaskImplFromJson(json);

  /// ID of the encrypted source file
  @override
  final String sourceFileId;

  /// Target folder ID where decrypted file will be placed
  @override
  final String targetFolderId;

  /// Optional new name for the decrypted file (uses original name if null)
  @override
  final String? newName;

  /// Whether to overwrite existing file with same name in target folder
  @override
  @JsonKey()
  final bool overwrite;

  /// Decryption parameters (abstract representation)
  final Map<String, dynamic> _decryptionParams;

  /// Decryption parameters (abstract representation)
  @override
  @JsonKey()
  Map<String, dynamic> get decryptionParams {
    if (_decryptionParams is EqualUnmodifiableMapView) return _decryptionParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_decryptionParams);
  }

  @override
  String toString() {
    return 'DecryptFileTask(sourceFileId: $sourceFileId, targetFolderId: $targetFolderId, newName: $newName, overwrite: $overwrite, decryptionParams: $decryptionParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecryptFileTaskImpl &&
            (identical(other.sourceFileId, sourceFileId) ||
                other.sourceFileId == sourceFileId) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            (identical(other.newName, newName) || other.newName == newName) &&
            (identical(other.overwrite, overwrite) ||
                other.overwrite == overwrite) &&
            const DeepCollectionEquality().equals(
              other._decryptionParams,
              _decryptionParams,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sourceFileId,
    targetFolderId,
    newName,
    overwrite,
    const DeepCollectionEquality().hash(_decryptionParams),
  );

  /// Create a copy of DecryptFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecryptFileTaskImplCopyWith<_$DecryptFileTaskImpl> get copyWith =>
      __$$DecryptFileTaskImplCopyWithImpl<_$DecryptFileTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DecryptFileTaskImplToJson(this);
  }
}

abstract class _DecryptFileTask extends DecryptFileTask {
  const factory _DecryptFileTask({
    required final String sourceFileId,
    required final String targetFolderId,
    final String? newName,
    final bool overwrite,
    final Map<String, dynamic> decryptionParams,
  }) = _$DecryptFileTaskImpl;
  const _DecryptFileTask._() : super._();

  factory _DecryptFileTask.fromJson(Map<String, dynamic> json) =
      _$DecryptFileTaskImpl.fromJson;

  /// ID of the encrypted source file
  @override
  String get sourceFileId;

  /// Target folder ID where decrypted file will be placed
  @override
  String get targetFolderId;

  /// Optional new name for the decrypted file (uses original name if null)
  @override
  String? get newName;

  /// Whether to overwrite existing file with same name in target folder
  @override
  bool get overwrite;

  /// Decryption parameters (abstract representation)
  @override
  Map<String, dynamic> get decryptionParams;

  /// Create a copy of DecryptFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecryptFileTaskImplCopyWith<_$DecryptFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DecryptFileResult _$DecryptFileResultFromJson(Map<String, dynamic> json) {
  return _DecryptFileResult.fromJson(json);
}

/// @nodoc
mixin _$DecryptFileResult {
  /// ID of the newly created decrypted file
  String get decryptedFileId => throw _privateConstructorUsedError;

  /// Path to the decrypted file
  String get decryptedFilePath => throw _privateConstructorUsedError;

  /// Original encrypted file ID
  String get originalFileId => throw _privateConstructorUsedError;

  /// Size of the decrypted file in bytes
  int get decryptedSizeBytes => throw _privateConstructorUsedError;

  /// Whether the operation was successful
  bool get success => throw _privateConstructorUsedError;

  /// Error message if operation failed
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this DecryptFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DecryptFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DecryptFileResultCopyWith<DecryptFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecryptFileResultCopyWith<$Res> {
  factory $DecryptFileResultCopyWith(
    DecryptFileResult value,
    $Res Function(DecryptFileResult) then,
  ) = _$DecryptFileResultCopyWithImpl<$Res, DecryptFileResult>;
  @useResult
  $Res call({
    String decryptedFileId,
    String decryptedFilePath,
    String originalFileId,
    int decryptedSizeBytes,
    bool success,
    String? error,
  });
}

/// @nodoc
class _$DecryptFileResultCopyWithImpl<$Res, $Val extends DecryptFileResult>
    implements $DecryptFileResultCopyWith<$Res> {
  _$DecryptFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DecryptFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decryptedFileId = null,
    Object? decryptedFilePath = null,
    Object? originalFileId = null,
    Object? decryptedSizeBytes = null,
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            decryptedFileId: null == decryptedFileId
                ? _value.decryptedFileId
                : decryptedFileId // ignore: cast_nullable_to_non_nullable
                      as String,
            decryptedFilePath: null == decryptedFilePath
                ? _value.decryptedFilePath
                : decryptedFilePath // ignore: cast_nullable_to_non_nullable
                      as String,
            originalFileId: null == originalFileId
                ? _value.originalFileId
                : originalFileId // ignore: cast_nullable_to_non_nullable
                      as String,
            decryptedSizeBytes: null == decryptedSizeBytes
                ? _value.decryptedSizeBytes
                : decryptedSizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DecryptFileResultImplCopyWith<$Res>
    implements $DecryptFileResultCopyWith<$Res> {
  factory _$$DecryptFileResultImplCopyWith(
    _$DecryptFileResultImpl value,
    $Res Function(_$DecryptFileResultImpl) then,
  ) = __$$DecryptFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String decryptedFileId,
    String decryptedFilePath,
    String originalFileId,
    int decryptedSizeBytes,
    bool success,
    String? error,
  });
}

/// @nodoc
class __$$DecryptFileResultImplCopyWithImpl<$Res>
    extends _$DecryptFileResultCopyWithImpl<$Res, _$DecryptFileResultImpl>
    implements _$$DecryptFileResultImplCopyWith<$Res> {
  __$$DecryptFileResultImplCopyWithImpl(
    _$DecryptFileResultImpl _value,
    $Res Function(_$DecryptFileResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DecryptFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decryptedFileId = null,
    Object? decryptedFilePath = null,
    Object? originalFileId = null,
    Object? decryptedSizeBytes = null,
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(
      _$DecryptFileResultImpl(
        decryptedFileId: null == decryptedFileId
            ? _value.decryptedFileId
            : decryptedFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        decryptedFilePath: null == decryptedFilePath
            ? _value.decryptedFilePath
            : decryptedFilePath // ignore: cast_nullable_to_non_nullable
                  as String,
        originalFileId: null == originalFileId
            ? _value.originalFileId
            : originalFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        decryptedSizeBytes: null == decryptedSizeBytes
            ? _value.decryptedSizeBytes
            : decryptedSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DecryptFileResultImpl implements _DecryptFileResult {
  const _$DecryptFileResultImpl({
    required this.decryptedFileId,
    required this.decryptedFilePath,
    required this.originalFileId,
    required this.decryptedSizeBytes,
    this.success = true,
    this.error,
  });

  factory _$DecryptFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecryptFileResultImplFromJson(json);

  /// ID of the newly created decrypted file
  @override
  final String decryptedFileId;

  /// Path to the decrypted file
  @override
  final String decryptedFilePath;

  /// Original encrypted file ID
  @override
  final String originalFileId;

  /// Size of the decrypted file in bytes
  @override
  final int decryptedSizeBytes;

  /// Whether the operation was successful
  @override
  @JsonKey()
  final bool success;

  /// Error message if operation failed
  @override
  final String? error;

  @override
  String toString() {
    return 'DecryptFileResult(decryptedFileId: $decryptedFileId, decryptedFilePath: $decryptedFilePath, originalFileId: $originalFileId, decryptedSizeBytes: $decryptedSizeBytes, success: $success, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecryptFileResultImpl &&
            (identical(other.decryptedFileId, decryptedFileId) ||
                other.decryptedFileId == decryptedFileId) &&
            (identical(other.decryptedFilePath, decryptedFilePath) ||
                other.decryptedFilePath == decryptedFilePath) &&
            (identical(other.originalFileId, originalFileId) ||
                other.originalFileId == originalFileId) &&
            (identical(other.decryptedSizeBytes, decryptedSizeBytes) ||
                other.decryptedSizeBytes == decryptedSizeBytes) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    decryptedFileId,
    decryptedFilePath,
    originalFileId,
    decryptedSizeBytes,
    success,
    error,
  );

  /// Create a copy of DecryptFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecryptFileResultImplCopyWith<_$DecryptFileResultImpl> get copyWith =>
      __$$DecryptFileResultImplCopyWithImpl<_$DecryptFileResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DecryptFileResultImplToJson(this);
  }
}

abstract class _DecryptFileResult implements DecryptFileResult {
  const factory _DecryptFileResult({
    required final String decryptedFileId,
    required final String decryptedFilePath,
    required final String originalFileId,
    required final int decryptedSizeBytes,
    final bool success,
    final String? error,
  }) = _$DecryptFileResultImpl;

  factory _DecryptFileResult.fromJson(Map<String, dynamic> json) =
      _$DecryptFileResultImpl.fromJson;

  /// ID of the newly created decrypted file
  @override
  String get decryptedFileId;

  /// Path to the decrypted file
  @override
  String get decryptedFilePath;

  /// Original encrypted file ID
  @override
  String get originalFileId;

  /// Size of the decrypted file in bytes
  @override
  int get decryptedSizeBytes;

  /// Whether the operation was successful
  @override
  bool get success;

  /// Error message if operation failed
  @override
  String? get error;

  /// Create a copy of DecryptFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecryptFileResultImplCopyWith<_$DecryptFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
