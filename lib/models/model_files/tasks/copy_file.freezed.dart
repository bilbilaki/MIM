// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'copy_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CopyFileResult _$CopyFileResultFromJson(Map<String, dynamic> json) {
  return _CopyFileResult.fromJson(json);
}

/// @nodoc
mixin _$CopyFileResult {
  /// ID of the newly created file copy
  String get copiedFileId => throw _privateConstructorUsedError;

  /// Path where the file was copied to
  String get targetPath => throw _privateConstructorUsedError;

  /// Whether the operation was successful
  bool get success => throw _privateConstructorUsedError;

  /// Error message if operation failed
  String? get error => throw _privateConstructorUsedError;

  /// Size of the copied file in bytes
  int? get copiedSize => throw _privateConstructorUsedError;

  /// Serializes this CopyFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CopyFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CopyFileResultCopyWith<CopyFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopyFileResultCopyWith<$Res> {
  factory $CopyFileResultCopyWith(
    CopyFileResult value,
    $Res Function(CopyFileResult) then,
  ) = _$CopyFileResultCopyWithImpl<$Res, CopyFileResult>;
  @useResult
  $Res call({
    String copiedFileId,
    String targetPath,
    bool success,
    String? error,
    int? copiedSize,
  });
}

/// @nodoc
class _$CopyFileResultCopyWithImpl<$Res, $Val extends CopyFileResult>
    implements $CopyFileResultCopyWith<$Res> {
  _$CopyFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CopyFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copiedFileId = null,
    Object? targetPath = null,
    Object? success = null,
    Object? error = freezed,
    Object? copiedSize = freezed,
  }) {
    return _then(
      _value.copyWith(
            copiedFileId: null == copiedFileId
                ? _value.copiedFileId
                : copiedFileId // ignore: cast_nullable_to_non_nullable
                      as String,
            targetPath: null == targetPath
                ? _value.targetPath
                : targetPath // ignore: cast_nullable_to_non_nullable
                      as String,
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            copiedSize: freezed == copiedSize
                ? _value.copiedSize
                : copiedSize // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CopyFileResultImplCopyWith<$Res>
    implements $CopyFileResultCopyWith<$Res> {
  factory _$$CopyFileResultImplCopyWith(
    _$CopyFileResultImpl value,
    $Res Function(_$CopyFileResultImpl) then,
  ) = __$$CopyFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String copiedFileId,
    String targetPath,
    bool success,
    String? error,
    int? copiedSize,
  });
}

/// @nodoc
class __$$CopyFileResultImplCopyWithImpl<$Res>
    extends _$CopyFileResultCopyWithImpl<$Res, _$CopyFileResultImpl>
    implements _$$CopyFileResultImplCopyWith<$Res> {
  __$$CopyFileResultImplCopyWithImpl(
    _$CopyFileResultImpl _value,
    $Res Function(_$CopyFileResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CopyFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copiedFileId = null,
    Object? targetPath = null,
    Object? success = null,
    Object? error = freezed,
    Object? copiedSize = freezed,
  }) {
    return _then(
      _$CopyFileResultImpl(
        copiedFileId: null == copiedFileId
            ? _value.copiedFileId
            : copiedFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        targetPath: null == targetPath
            ? _value.targetPath
            : targetPath // ignore: cast_nullable_to_non_nullable
                  as String,
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        copiedSize: freezed == copiedSize
            ? _value.copiedSize
            : copiedSize // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CopyFileResultImpl implements _CopyFileResult {
  const _$CopyFileResultImpl({
    required this.copiedFileId,
    required this.targetPath,
    required this.success,
    this.error,
    this.copiedSize,
  });

  factory _$CopyFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CopyFileResultImplFromJson(json);

  /// ID of the newly created file copy
  @override
  final String copiedFileId;

  /// Path where the file was copied to
  @override
  final String targetPath;

  /// Whether the operation was successful
  @override
  final bool success;

  /// Error message if operation failed
  @override
  final String? error;

  /// Size of the copied file in bytes
  @override
  final int? copiedSize;

  @override
  String toString() {
    return 'CopyFileResult(copiedFileId: $copiedFileId, targetPath: $targetPath, success: $success, error: $error, copiedSize: $copiedSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyFileResultImpl &&
            (identical(other.copiedFileId, copiedFileId) ||
                other.copiedFileId == copiedFileId) &&
            (identical(other.targetPath, targetPath) ||
                other.targetPath == targetPath) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.copiedSize, copiedSize) ||
                other.copiedSize == copiedSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    copiedFileId,
    targetPath,
    success,
    error,
    copiedSize,
  );

  /// Create a copy of CopyFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyFileResultImplCopyWith<_$CopyFileResultImpl> get copyWith =>
      __$$CopyFileResultImplCopyWithImpl<_$CopyFileResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CopyFileResultImplToJson(this);
  }
}

abstract class _CopyFileResult implements CopyFileResult {
  const factory _CopyFileResult({
    required final String copiedFileId,
    required final String targetPath,
    required final bool success,
    final String? error,
    final int? copiedSize,
  }) = _$CopyFileResultImpl;

  factory _CopyFileResult.fromJson(Map<String, dynamic> json) =
      _$CopyFileResultImpl.fromJson;

  /// ID of the newly created file copy
  @override
  String get copiedFileId;

  /// Path where the file was copied to
  @override
  String get targetPath;

  /// Whether the operation was successful
  @override
  bool get success;

  /// Error message if operation failed
  @override
  String? get error;

  /// Size of the copied file in bytes
  @override
  int? get copiedSize;

  /// Create a copy of CopyFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CopyFileResultImplCopyWith<_$CopyFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CopyFileTask _$CopyFileTaskFromJson(Map<String, dynamic> json) {
  return _CopyFileTask.fromJson(json);
}

/// @nodoc
mixin _$CopyFileTask {
  /// ID of the source file to copy
  String get sourceFileId => throw _privateConstructorUsedError;

  /// ID of the target folder where the file should be copied
  String get targetFolderId => throw _privateConstructorUsedError;

  /// Optional new name for the copied file (if different from original)
  String? get newName => throw _privateConstructorUsedError;

  /// Policy for handling naming conflicts
  CopyConflictPolicy get conflictPolicy => throw _privateConstructorUsedError;

  /// Serializes this CopyFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CopyFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CopyFileTaskCopyWith<CopyFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopyFileTaskCopyWith<$Res> {
  factory $CopyFileTaskCopyWith(
    CopyFileTask value,
    $Res Function(CopyFileTask) then,
  ) = _$CopyFileTaskCopyWithImpl<$Res, CopyFileTask>;
  @useResult
  $Res call({
    String sourceFileId,
    String targetFolderId,
    String? newName,
    CopyConflictPolicy conflictPolicy,
  });
}

/// @nodoc
class _$CopyFileTaskCopyWithImpl<$Res, $Val extends CopyFileTask>
    implements $CopyFileTaskCopyWith<$Res> {
  _$CopyFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CopyFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFileId = null,
    Object? targetFolderId = null,
    Object? newName = freezed,
    Object? conflictPolicy = null,
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
            conflictPolicy: null == conflictPolicy
                ? _value.conflictPolicy
                : conflictPolicy // ignore: cast_nullable_to_non_nullable
                      as CopyConflictPolicy,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CopyFileTaskImplCopyWith<$Res>
    implements $CopyFileTaskCopyWith<$Res> {
  factory _$$CopyFileTaskImplCopyWith(
    _$CopyFileTaskImpl value,
    $Res Function(_$CopyFileTaskImpl) then,
  ) = __$$CopyFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sourceFileId,
    String targetFolderId,
    String? newName,
    CopyConflictPolicy conflictPolicy,
  });
}

/// @nodoc
class __$$CopyFileTaskImplCopyWithImpl<$Res>
    extends _$CopyFileTaskCopyWithImpl<$Res, _$CopyFileTaskImpl>
    implements _$$CopyFileTaskImplCopyWith<$Res> {
  __$$CopyFileTaskImplCopyWithImpl(
    _$CopyFileTaskImpl _value,
    $Res Function(_$CopyFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CopyFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFileId = null,
    Object? targetFolderId = null,
    Object? newName = freezed,
    Object? conflictPolicy = null,
  }) {
    return _then(
      _$CopyFileTaskImpl(
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
        conflictPolicy: null == conflictPolicy
            ? _value.conflictPolicy
            : conflictPolicy // ignore: cast_nullable_to_non_nullable
                  as CopyConflictPolicy,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CopyFileTaskImpl extends _CopyFileTask {
  const _$CopyFileTaskImpl({
    required this.sourceFileId,
    required this.targetFolderId,
    this.newName,
    this.conflictPolicy = CopyConflictPolicy.fail,
  }) : super._();

  factory _$CopyFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$CopyFileTaskImplFromJson(json);

  /// ID of the source file to copy
  @override
  final String sourceFileId;

  /// ID of the target folder where the file should be copied
  @override
  final String targetFolderId;

  /// Optional new name for the copied file (if different from original)
  @override
  final String? newName;

  /// Policy for handling naming conflicts
  @override
  @JsonKey()
  final CopyConflictPolicy conflictPolicy;

  @override
  String toString() {
    return 'CopyFileTask(sourceFileId: $sourceFileId, targetFolderId: $targetFolderId, newName: $newName, conflictPolicy: $conflictPolicy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyFileTaskImpl &&
            (identical(other.sourceFileId, sourceFileId) ||
                other.sourceFileId == sourceFileId) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            (identical(other.newName, newName) || other.newName == newName) &&
            (identical(other.conflictPolicy, conflictPolicy) ||
                other.conflictPolicy == conflictPolicy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sourceFileId,
    targetFolderId,
    newName,
    conflictPolicy,
  );

  /// Create a copy of CopyFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyFileTaskImplCopyWith<_$CopyFileTaskImpl> get copyWith =>
      __$$CopyFileTaskImplCopyWithImpl<_$CopyFileTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CopyFileTaskImplToJson(this);
  }
}

abstract class _CopyFileTask extends CopyFileTask {
  const factory _CopyFileTask({
    required final String sourceFileId,
    required final String targetFolderId,
    final String? newName,
    final CopyConflictPolicy conflictPolicy,
  }) = _$CopyFileTaskImpl;
  const _CopyFileTask._() : super._();

  factory _CopyFileTask.fromJson(Map<String, dynamic> json) =
      _$CopyFileTaskImpl.fromJson;

  /// ID of the source file to copy
  @override
  String get sourceFileId;

  /// ID of the target folder where the file should be copied
  @override
  String get targetFolderId;

  /// Optional new name for the copied file (if different from original)
  @override
  String? get newName;

  /// Policy for handling naming conflicts
  @override
  CopyConflictPolicy get conflictPolicy;

  /// Create a copy of CopyFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CopyFileTaskImplCopyWith<_$CopyFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
