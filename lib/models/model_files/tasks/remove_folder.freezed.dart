// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_folder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RemoveFolderResult _$RemoveFolderResultFromJson(Map<String, dynamic> json) {
  return _RemoveFolderResult.fromJson(json);
}

/// @nodoc
mixin _$RemoveFolderResult {
  /// ID of the removed folder
  String get folderId => throw _privateConstructorUsedError;

  /// Number of entries removed (including the folder itself)
  int get entriesRemoved => throw _privateConstructorUsedError;

  /// Whether the operation was successful
  bool get success => throw _privateConstructorUsedError;

  /// Error message if the operation failed
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this RemoveFolderResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoveFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveFolderResultCopyWith<RemoveFolderResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveFolderResultCopyWith<$Res> {
  factory $RemoveFolderResultCopyWith(
    RemoveFolderResult value,
    $Res Function(RemoveFolderResult) then,
  ) = _$RemoveFolderResultCopyWithImpl<$Res, RemoveFolderResult>;
  @useResult
  $Res call({String folderId, int entriesRemoved, bool success, String? error});
}

/// @nodoc
class _$RemoveFolderResultCopyWithImpl<$Res, $Val extends RemoveFolderResult>
    implements $RemoveFolderResultCopyWith<$Res> {
  _$RemoveFolderResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = null,
    Object? entriesRemoved = null,
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            folderId: null == folderId
                ? _value.folderId
                : folderId // ignore: cast_nullable_to_non_nullable
                      as String,
            entriesRemoved: null == entriesRemoved
                ? _value.entriesRemoved
                : entriesRemoved // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RemoveFolderResultImplCopyWith<$Res>
    implements $RemoveFolderResultCopyWith<$Res> {
  factory _$$RemoveFolderResultImplCopyWith(
    _$RemoveFolderResultImpl value,
    $Res Function(_$RemoveFolderResultImpl) then,
  ) = __$$RemoveFolderResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String folderId, int entriesRemoved, bool success, String? error});
}

/// @nodoc
class __$$RemoveFolderResultImplCopyWithImpl<$Res>
    extends _$RemoveFolderResultCopyWithImpl<$Res, _$RemoveFolderResultImpl>
    implements _$$RemoveFolderResultImplCopyWith<$Res> {
  __$$RemoveFolderResultImplCopyWithImpl(
    _$RemoveFolderResultImpl _value,
    $Res Function(_$RemoveFolderResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemoveFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = null,
    Object? entriesRemoved = null,
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(
      _$RemoveFolderResultImpl(
        folderId: null == folderId
            ? _value.folderId
            : folderId // ignore: cast_nullable_to_non_nullable
                  as String,
        entriesRemoved: null == entriesRemoved
            ? _value.entriesRemoved
            : entriesRemoved // ignore: cast_nullable_to_non_nullable
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
class _$RemoveFolderResultImpl implements _RemoveFolderResult {
  const _$RemoveFolderResultImpl({
    required this.folderId,
    required this.entriesRemoved,
    required this.success,
    this.error,
  });

  factory _$RemoveFolderResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveFolderResultImplFromJson(json);

  /// ID of the removed folder
  @override
  final String folderId;

  /// Number of entries removed (including the folder itself)
  @override
  final int entriesRemoved;

  /// Whether the operation was successful
  @override
  final bool success;

  /// Error message if the operation failed
  @override
  final String? error;

  @override
  String toString() {
    return 'RemoveFolderResult(folderId: $folderId, entriesRemoved: $entriesRemoved, success: $success, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFolderResultImpl &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId) &&
            (identical(other.entriesRemoved, entriesRemoved) ||
                other.entriesRemoved == entriesRemoved) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, folderId, entriesRemoved, success, error);

  /// Create a copy of RemoveFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFolderResultImplCopyWith<_$RemoveFolderResultImpl> get copyWith =>
      __$$RemoveFolderResultImplCopyWithImpl<_$RemoveFolderResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveFolderResultImplToJson(this);
  }
}

abstract class _RemoveFolderResult implements RemoveFolderResult {
  const factory _RemoveFolderResult({
    required final String folderId,
    required final int entriesRemoved,
    required final bool success,
    final String? error,
  }) = _$RemoveFolderResultImpl;

  factory _RemoveFolderResult.fromJson(Map<String, dynamic> json) =
      _$RemoveFolderResultImpl.fromJson;

  /// ID of the removed folder
  @override
  String get folderId;

  /// Number of entries removed (including the folder itself)
  @override
  int get entriesRemoved;

  /// Whether the operation was successful
  @override
  bool get success;

  /// Error message if the operation failed
  @override
  String? get error;

  /// Create a copy of RemoveFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFolderResultImplCopyWith<_$RemoveFolderResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RemoveFolderTask _$RemoveFolderTaskFromJson(Map<String, dynamic> json) {
  return _RemoveFolderTask.fromJson(json);
}

/// @nodoc
mixin _$RemoveFolderTask {
  /// ID of the folder to remove
  String get folderId => throw _privateConstructorUsedError;

  /// Whether to perform soft delete (mark as deleted) or hard delete (permanent removal)
  bool get softDelete => throw _privateConstructorUsedError;

  /// Whether to require the folder to be empty before removal
  /// If false, will recursively remove all contents
  bool get requireEmpty => throw _privateConstructorUsedError;

  /// Serializes this RemoveFolderTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoveFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveFolderTaskCopyWith<RemoveFolderTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveFolderTaskCopyWith<$Res> {
  factory $RemoveFolderTaskCopyWith(
    RemoveFolderTask value,
    $Res Function(RemoveFolderTask) then,
  ) = _$RemoveFolderTaskCopyWithImpl<$Res, RemoveFolderTask>;
  @useResult
  $Res call({String folderId, bool softDelete, bool requireEmpty});
}

/// @nodoc
class _$RemoveFolderTaskCopyWithImpl<$Res, $Val extends RemoveFolderTask>
    implements $RemoveFolderTaskCopyWith<$Res> {
  _$RemoveFolderTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = null,
    Object? softDelete = null,
    Object? requireEmpty = null,
  }) {
    return _then(
      _value.copyWith(
            folderId: null == folderId
                ? _value.folderId
                : folderId // ignore: cast_nullable_to_non_nullable
                      as String,
            softDelete: null == softDelete
                ? _value.softDelete
                : softDelete // ignore: cast_nullable_to_non_nullable
                      as bool,
            requireEmpty: null == requireEmpty
                ? _value.requireEmpty
                : requireEmpty // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RemoveFolderTaskImplCopyWith<$Res>
    implements $RemoveFolderTaskCopyWith<$Res> {
  factory _$$RemoveFolderTaskImplCopyWith(
    _$RemoveFolderTaskImpl value,
    $Res Function(_$RemoveFolderTaskImpl) then,
  ) = __$$RemoveFolderTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String folderId, bool softDelete, bool requireEmpty});
}

/// @nodoc
class __$$RemoveFolderTaskImplCopyWithImpl<$Res>
    extends _$RemoveFolderTaskCopyWithImpl<$Res, _$RemoveFolderTaskImpl>
    implements _$$RemoveFolderTaskImplCopyWith<$Res> {
  __$$RemoveFolderTaskImplCopyWithImpl(
    _$RemoveFolderTaskImpl _value,
    $Res Function(_$RemoveFolderTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemoveFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = null,
    Object? softDelete = null,
    Object? requireEmpty = null,
  }) {
    return _then(
      _$RemoveFolderTaskImpl(
        folderId: null == folderId
            ? _value.folderId
            : folderId // ignore: cast_nullable_to_non_nullable
                  as String,
        softDelete: null == softDelete
            ? _value.softDelete
            : softDelete // ignore: cast_nullable_to_non_nullable
                  as bool,
        requireEmpty: null == requireEmpty
            ? _value.requireEmpty
            : requireEmpty // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveFolderTaskImpl extends _RemoveFolderTask {
  const _$RemoveFolderTaskImpl({
    required this.folderId,
    this.softDelete = false,
    this.requireEmpty = false,
  }) : super._();

  factory _$RemoveFolderTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveFolderTaskImplFromJson(json);

  /// ID of the folder to remove
  @override
  final String folderId;

  /// Whether to perform soft delete (mark as deleted) or hard delete (permanent removal)
  @override
  @JsonKey()
  final bool softDelete;

  /// Whether to require the folder to be empty before removal
  /// If false, will recursively remove all contents
  @override
  @JsonKey()
  final bool requireEmpty;

  @override
  String toString() {
    return 'RemoveFolderTask(folderId: $folderId, softDelete: $softDelete, requireEmpty: $requireEmpty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFolderTaskImpl &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId) &&
            (identical(other.softDelete, softDelete) ||
                other.softDelete == softDelete) &&
            (identical(other.requireEmpty, requireEmpty) ||
                other.requireEmpty == requireEmpty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, folderId, softDelete, requireEmpty);

  /// Create a copy of RemoveFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFolderTaskImplCopyWith<_$RemoveFolderTaskImpl> get copyWith =>
      __$$RemoveFolderTaskImplCopyWithImpl<_$RemoveFolderTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveFolderTaskImplToJson(this);
  }
}

abstract class _RemoveFolderTask extends RemoveFolderTask {
  const factory _RemoveFolderTask({
    required final String folderId,
    final bool softDelete,
    final bool requireEmpty,
  }) = _$RemoveFolderTaskImpl;
  const _RemoveFolderTask._() : super._();

  factory _RemoveFolderTask.fromJson(Map<String, dynamic> json) =
      _$RemoveFolderTaskImpl.fromJson;

  /// ID of the folder to remove
  @override
  String get folderId;

  /// Whether to perform soft delete (mark as deleted) or hard delete (permanent removal)
  @override
  bool get softDelete;

  /// Whether to require the folder to be empty before removal
  /// If false, will recursively remove all contents
  @override
  bool get requireEmpty;

  /// Create a copy of RemoveFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFolderTaskImplCopyWith<_$RemoveFolderTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
