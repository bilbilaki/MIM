// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RemoveFileTask _$RemoveFileTaskFromJson(Map<String, dynamic> json) {
  return _RemoveFileTask.fromJson(json);
}

/// @nodoc
mixin _$RemoveFileTask {
  /// ID of the file to remove
  String get fileId => throw _privateConstructorUsedError;

  /// Whether to perform soft delete (mark as deleted) or hard delete (permanent removal)
  bool get hardDelete => throw _privateConstructorUsedError;

  /// Serializes this RemoveFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveFileTaskCopyWith<RemoveFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveFileTaskCopyWith<$Res> {
  factory $RemoveFileTaskCopyWith(
    RemoveFileTask value,
    $Res Function(RemoveFileTask) then,
  ) = _$RemoveFileTaskCopyWithImpl<$Res, RemoveFileTask>;
  @useResult
  $Res call({String fileId, bool hardDelete});
}

/// @nodoc
class _$RemoveFileTaskCopyWithImpl<$Res, $Val extends RemoveFileTask>
    implements $RemoveFileTaskCopyWith<$Res> {
  _$RemoveFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fileId = null, Object? hardDelete = null}) {
    return _then(
      _value.copyWith(
            fileId: null == fileId
                ? _value.fileId
                : fileId // ignore: cast_nullable_to_non_nullable
                      as String,
            hardDelete: null == hardDelete
                ? _value.hardDelete
                : hardDelete // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RemoveFileTaskImplCopyWith<$Res>
    implements $RemoveFileTaskCopyWith<$Res> {
  factory _$$RemoveFileTaskImplCopyWith(
    _$RemoveFileTaskImpl value,
    $Res Function(_$RemoveFileTaskImpl) then,
  ) = __$$RemoveFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileId, bool hardDelete});
}

/// @nodoc
class __$$RemoveFileTaskImplCopyWithImpl<$Res>
    extends _$RemoveFileTaskCopyWithImpl<$Res, _$RemoveFileTaskImpl>
    implements _$$RemoveFileTaskImplCopyWith<$Res> {
  __$$RemoveFileTaskImplCopyWithImpl(
    _$RemoveFileTaskImpl _value,
    $Res Function(_$RemoveFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemoveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fileId = null, Object? hardDelete = null}) {
    return _then(
      _$RemoveFileTaskImpl(
        fileId: null == fileId
            ? _value.fileId
            : fileId // ignore: cast_nullable_to_non_nullable
                  as String,
        hardDelete: null == hardDelete
            ? _value.hardDelete
            : hardDelete // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveFileTaskImpl implements _RemoveFileTask {
  const _$RemoveFileTaskImpl({required this.fileId, this.hardDelete = false});

  factory _$RemoveFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveFileTaskImplFromJson(json);

  /// ID of the file to remove
  @override
  final String fileId;

  /// Whether to perform soft delete (mark as deleted) or hard delete (permanent removal)
  @override
  @JsonKey()
  final bool hardDelete;

  @override
  String toString() {
    return 'RemoveFileTask(fileId: $fileId, hardDelete: $hardDelete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFileTaskImpl &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.hardDelete, hardDelete) ||
                other.hardDelete == hardDelete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileId, hardDelete);

  /// Create a copy of RemoveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFileTaskImplCopyWith<_$RemoveFileTaskImpl> get copyWith =>
      __$$RemoveFileTaskImplCopyWithImpl<_$RemoveFileTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveFileTaskImplToJson(this);
  }
}

abstract class _RemoveFileTask implements RemoveFileTask {
  const factory _RemoveFileTask({
    required final String fileId,
    final bool hardDelete,
  }) = _$RemoveFileTaskImpl;

  factory _RemoveFileTask.fromJson(Map<String, dynamic> json) =
      _$RemoveFileTaskImpl.fromJson;

  /// ID of the file to remove
  @override
  String get fileId;

  /// Whether to perform soft delete (mark as deleted) or hard delete (permanent removal)
  @override
  bool get hardDelete;

  /// Create a copy of RemoveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFileTaskImplCopyWith<_$RemoveFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RemoveFileResult _$RemoveFileResultFromJson(Map<String, dynamic> json) {
  return _RemoveFileResult.fromJson(json);
}

/// @nodoc
mixin _$RemoveFileResult {
  /// ID of the removed file
  String get removedFileId => throw _privateConstructorUsedError;

  /// Whether the operation was successful
  bool get success => throw _privateConstructorUsedError;

  /// Error message if the operation failed
  String? get error => throw _privateConstructorUsedError;

  /// Path of the removed file (for reference)
  String? get filePath => throw _privateConstructorUsedError;

  /// Serializes this RemoveFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoveFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveFileResultCopyWith<RemoveFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveFileResultCopyWith<$Res> {
  factory $RemoveFileResultCopyWith(
    RemoveFileResult value,
    $Res Function(RemoveFileResult) then,
  ) = _$RemoveFileResultCopyWithImpl<$Res, RemoveFileResult>;
  @useResult
  $Res call({
    String removedFileId,
    bool success,
    String? error,
    String? filePath,
  });
}

/// @nodoc
class _$RemoveFileResultCopyWithImpl<$Res, $Val extends RemoveFileResult>
    implements $RemoveFileResultCopyWith<$Res> {
  _$RemoveFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? removedFileId = null,
    Object? success = null,
    Object? error = freezed,
    Object? filePath = freezed,
  }) {
    return _then(
      _value.copyWith(
            removedFileId: null == removedFileId
                ? _value.removedFileId
                : removedFileId // ignore: cast_nullable_to_non_nullable
                      as String,
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            filePath: freezed == filePath
                ? _value.filePath
                : filePath // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RemoveFileResultImplCopyWith<$Res>
    implements $RemoveFileResultCopyWith<$Res> {
  factory _$$RemoveFileResultImplCopyWith(
    _$RemoveFileResultImpl value,
    $Res Function(_$RemoveFileResultImpl) then,
  ) = __$$RemoveFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String removedFileId,
    bool success,
    String? error,
    String? filePath,
  });
}

/// @nodoc
class __$$RemoveFileResultImplCopyWithImpl<$Res>
    extends _$RemoveFileResultCopyWithImpl<$Res, _$RemoveFileResultImpl>
    implements _$$RemoveFileResultImplCopyWith<$Res> {
  __$$RemoveFileResultImplCopyWithImpl(
    _$RemoveFileResultImpl _value,
    $Res Function(_$RemoveFileResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemoveFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? removedFileId = null,
    Object? success = null,
    Object? error = freezed,
    Object? filePath = freezed,
  }) {
    return _then(
      _$RemoveFileResultImpl(
        removedFileId: null == removedFileId
            ? _value.removedFileId
            : removedFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        filePath: freezed == filePath
            ? _value.filePath
            : filePath // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveFileResultImpl implements _RemoveFileResult {
  const _$RemoveFileResultImpl({
    required this.removedFileId,
    required this.success,
    this.error,
    this.filePath,
  });

  factory _$RemoveFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveFileResultImplFromJson(json);

  /// ID of the removed file
  @override
  final String removedFileId;

  /// Whether the operation was successful
  @override
  final bool success;

  /// Error message if the operation failed
  @override
  final String? error;

  /// Path of the removed file (for reference)
  @override
  final String? filePath;

  @override
  String toString() {
    return 'RemoveFileResult(removedFileId: $removedFileId, success: $success, error: $error, filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFileResultImpl &&
            (identical(other.removedFileId, removedFileId) ||
                other.removedFileId == removedFileId) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, removedFileId, success, error, filePath);

  /// Create a copy of RemoveFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFileResultImplCopyWith<_$RemoveFileResultImpl> get copyWith =>
      __$$RemoveFileResultImplCopyWithImpl<_$RemoveFileResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveFileResultImplToJson(this);
  }
}

abstract class _RemoveFileResult implements RemoveFileResult {
  const factory _RemoveFileResult({
    required final String removedFileId,
    required final bool success,
    final String? error,
    final String? filePath,
  }) = _$RemoveFileResultImpl;

  factory _RemoveFileResult.fromJson(Map<String, dynamic> json) =
      _$RemoveFileResultImpl.fromJson;

  /// ID of the removed file
  @override
  String get removedFileId;

  /// Whether the operation was successful
  @override
  bool get success;

  /// Error message if the operation failed
  @override
  String? get error;

  /// Path of the removed file (for reference)
  @override
  String? get filePath;

  /// Create a copy of RemoveFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFileResultImplCopyWith<_$RemoveFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
