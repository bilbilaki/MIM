// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'batch_file_opration_copy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BatchCopyResult _$BatchCopyResultFromJson(Map<String, dynamic> json) {
  return _BatchCopyResult.fromJson(json);
}

/// @nodoc
mixin _$BatchCopyResult {
  /// Original source entry ID
  String get sourceId => throw _privateConstructorUsedError;

  /// ID of the newly created copy (null if failed)
  String? get targetId => throw _privateConstructorUsedError;

  /// Path of the newly created copy (null if failed)
  String? get targetPath => throw _privateConstructorUsedError;

  /// Whether the copy operation succeeded
  bool get success => throw _privateConstructorUsedError;

  /// Error message if operation failed
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this BatchCopyResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchCopyResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchCopyResultCopyWith<BatchCopyResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchCopyResultCopyWith<$Res> {
  factory $BatchCopyResultCopyWith(
    BatchCopyResult value,
    $Res Function(BatchCopyResult) then,
  ) = _$BatchCopyResultCopyWithImpl<$Res, BatchCopyResult>;
  @useResult
  $Res call({
    String sourceId,
    String? targetId,
    String? targetPath,
    bool success,
    String? error,
  });
}

/// @nodoc
class _$BatchCopyResultCopyWithImpl<$Res, $Val extends BatchCopyResult>
    implements $BatchCopyResultCopyWith<$Res> {
  _$BatchCopyResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchCopyResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? targetId = freezed,
    Object? targetPath = freezed,
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            sourceId: null == sourceId
                ? _value.sourceId
                : sourceId // ignore: cast_nullable_to_non_nullable
                      as String,
            targetId: freezed == targetId
                ? _value.targetId
                : targetId // ignore: cast_nullable_to_non_nullable
                      as String?,
            targetPath: freezed == targetPath
                ? _value.targetPath
                : targetPath // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$BatchCopyResultImplCopyWith<$Res>
    implements $BatchCopyResultCopyWith<$Res> {
  factory _$$BatchCopyResultImplCopyWith(
    _$BatchCopyResultImpl value,
    $Res Function(_$BatchCopyResultImpl) then,
  ) = __$$BatchCopyResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sourceId,
    String? targetId,
    String? targetPath,
    bool success,
    String? error,
  });
}

/// @nodoc
class __$$BatchCopyResultImplCopyWithImpl<$Res>
    extends _$BatchCopyResultCopyWithImpl<$Res, _$BatchCopyResultImpl>
    implements _$$BatchCopyResultImplCopyWith<$Res> {
  __$$BatchCopyResultImplCopyWithImpl(
    _$BatchCopyResultImpl _value,
    $Res Function(_$BatchCopyResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchCopyResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? targetId = freezed,
    Object? targetPath = freezed,
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(
      _$BatchCopyResultImpl(
        sourceId: null == sourceId
            ? _value.sourceId
            : sourceId // ignore: cast_nullable_to_non_nullable
                  as String,
        targetId: freezed == targetId
            ? _value.targetId
            : targetId // ignore: cast_nullable_to_non_nullable
                  as String?,
        targetPath: freezed == targetPath
            ? _value.targetPath
            : targetPath // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$BatchCopyResultImpl implements _BatchCopyResult {
  const _$BatchCopyResultImpl({
    required this.sourceId,
    this.targetId,
    this.targetPath,
    required this.success,
    this.error,
  });

  factory _$BatchCopyResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchCopyResultImplFromJson(json);

  /// Original source entry ID
  @override
  final String sourceId;

  /// ID of the newly created copy (null if failed)
  @override
  final String? targetId;

  /// Path of the newly created copy (null if failed)
  @override
  final String? targetPath;

  /// Whether the copy operation succeeded
  @override
  final bool success;

  /// Error message if operation failed
  @override
  final String? error;

  @override
  String toString() {
    return 'BatchCopyResult(sourceId: $sourceId, targetId: $targetId, targetPath: $targetPath, success: $success, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchCopyResultImpl &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.targetPath, targetPath) ||
                other.targetPath == targetPath) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sourceId, targetId, targetPath, success, error);

  /// Create a copy of BatchCopyResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchCopyResultImplCopyWith<_$BatchCopyResultImpl> get copyWith =>
      __$$BatchCopyResultImplCopyWithImpl<_$BatchCopyResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchCopyResultImplToJson(this);
  }
}

abstract class _BatchCopyResult implements BatchCopyResult {
  const factory _BatchCopyResult({
    required final String sourceId,
    final String? targetId,
    final String? targetPath,
    required final bool success,
    final String? error,
  }) = _$BatchCopyResultImpl;

  factory _BatchCopyResult.fromJson(Map<String, dynamic> json) =
      _$BatchCopyResultImpl.fromJson;

  /// Original source entry ID
  @override
  String get sourceId;

  /// ID of the newly created copy (null if failed)
  @override
  String? get targetId;

  /// Path of the newly created copy (null if failed)
  @override
  String? get targetPath;

  /// Whether the copy operation succeeded
  @override
  bool get success;

  /// Error message if operation failed
  @override
  String? get error;

  /// Create a copy of BatchCopyResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchCopyResultImplCopyWith<_$BatchCopyResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BatchFileCopyTask _$BatchFileCopyTaskFromJson(Map<String, dynamic> json) {
  return _BatchFileCopyTask.fromJson(json);
}

/// @nodoc
mixin _$BatchFileCopyTask {
  /// IDs of entries to copy
  List<String> get sourceEntryIds => throw _privateConstructorUsedError;

  /// ID of target folder where copies will be placed
  String get targetFolderId => throw _privateConstructorUsedError;

  /// How to handle naming conflicts
  CopyConflictPolicy get conflictPolicy => throw _privateConstructorUsedError;

  /// Whether to copy folder contents recursively
  bool get recursive => throw _privateConstructorUsedError;

  /// Serializes this BatchFileCopyTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchFileCopyTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchFileCopyTaskCopyWith<BatchFileCopyTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchFileCopyTaskCopyWith<$Res> {
  factory $BatchFileCopyTaskCopyWith(
    BatchFileCopyTask value,
    $Res Function(BatchFileCopyTask) then,
  ) = _$BatchFileCopyTaskCopyWithImpl<$Res, BatchFileCopyTask>;
  @useResult
  $Res call({
    List<String> sourceEntryIds,
    String targetFolderId,
    CopyConflictPolicy conflictPolicy,
    bool recursive,
  });
}

/// @nodoc
class _$BatchFileCopyTaskCopyWithImpl<$Res, $Val extends BatchFileCopyTask>
    implements $BatchFileCopyTaskCopyWith<$Res> {
  _$BatchFileCopyTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchFileCopyTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceEntryIds = null,
    Object? targetFolderId = null,
    Object? conflictPolicy = null,
    Object? recursive = null,
  }) {
    return _then(
      _value.copyWith(
            sourceEntryIds: null == sourceEntryIds
                ? _value.sourceEntryIds
                : sourceEntryIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            targetFolderId: null == targetFolderId
                ? _value.targetFolderId
                : targetFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            conflictPolicy: null == conflictPolicy
                ? _value.conflictPolicy
                : conflictPolicy // ignore: cast_nullable_to_non_nullable
                      as CopyConflictPolicy,
            recursive: null == recursive
                ? _value.recursive
                : recursive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BatchFileCopyTaskImplCopyWith<$Res>
    implements $BatchFileCopyTaskCopyWith<$Res> {
  factory _$$BatchFileCopyTaskImplCopyWith(
    _$BatchFileCopyTaskImpl value,
    $Res Function(_$BatchFileCopyTaskImpl) then,
  ) = __$$BatchFileCopyTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> sourceEntryIds,
    String targetFolderId,
    CopyConflictPolicy conflictPolicy,
    bool recursive,
  });
}

/// @nodoc
class __$$BatchFileCopyTaskImplCopyWithImpl<$Res>
    extends _$BatchFileCopyTaskCopyWithImpl<$Res, _$BatchFileCopyTaskImpl>
    implements _$$BatchFileCopyTaskImplCopyWith<$Res> {
  __$$BatchFileCopyTaskImplCopyWithImpl(
    _$BatchFileCopyTaskImpl _value,
    $Res Function(_$BatchFileCopyTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchFileCopyTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceEntryIds = null,
    Object? targetFolderId = null,
    Object? conflictPolicy = null,
    Object? recursive = null,
  }) {
    return _then(
      _$BatchFileCopyTaskImpl(
        sourceEntryIds: null == sourceEntryIds
            ? _value._sourceEntryIds
            : sourceEntryIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        targetFolderId: null == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        conflictPolicy: null == conflictPolicy
            ? _value.conflictPolicy
            : conflictPolicy // ignore: cast_nullable_to_non_nullable
                  as CopyConflictPolicy,
        recursive: null == recursive
            ? _value.recursive
            : recursive // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchFileCopyTaskImpl extends _BatchFileCopyTask {
  const _$BatchFileCopyTaskImpl({
    required final List<String> sourceEntryIds,
    required this.targetFolderId,
    this.conflictPolicy = CopyConflictPolicy.rename,
    this.recursive = true,
  }) : _sourceEntryIds = sourceEntryIds,
       super._();

  factory _$BatchFileCopyTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchFileCopyTaskImplFromJson(json);

  /// IDs of entries to copy
  final List<String> _sourceEntryIds;

  /// IDs of entries to copy
  @override
  List<String> get sourceEntryIds {
    if (_sourceEntryIds is EqualUnmodifiableListView) return _sourceEntryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sourceEntryIds);
  }

  /// ID of target folder where copies will be placed
  @override
  final String targetFolderId;

  /// How to handle naming conflicts
  @override
  @JsonKey()
  final CopyConflictPolicy conflictPolicy;

  /// Whether to copy folder contents recursively
  @override
  @JsonKey()
  final bool recursive;

  @override
  String toString() {
    return 'BatchFileCopyTask(sourceEntryIds: $sourceEntryIds, targetFolderId: $targetFolderId, conflictPolicy: $conflictPolicy, recursive: $recursive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchFileCopyTaskImpl &&
            const DeepCollectionEquality().equals(
              other._sourceEntryIds,
              _sourceEntryIds,
            ) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            (identical(other.conflictPolicy, conflictPolicy) ||
                other.conflictPolicy == conflictPolicy) &&
            (identical(other.recursive, recursive) ||
                other.recursive == recursive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_sourceEntryIds),
    targetFolderId,
    conflictPolicy,
    recursive,
  );

  /// Create a copy of BatchFileCopyTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchFileCopyTaskImplCopyWith<_$BatchFileCopyTaskImpl> get copyWith =>
      __$$BatchFileCopyTaskImplCopyWithImpl<_$BatchFileCopyTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchFileCopyTaskImplToJson(this);
  }
}

abstract class _BatchFileCopyTask extends BatchFileCopyTask {
  const factory _BatchFileCopyTask({
    required final List<String> sourceEntryIds,
    required final String targetFolderId,
    final CopyConflictPolicy conflictPolicy,
    final bool recursive,
  }) = _$BatchFileCopyTaskImpl;
  const _BatchFileCopyTask._() : super._();

  factory _BatchFileCopyTask.fromJson(Map<String, dynamic> json) =
      _$BatchFileCopyTaskImpl.fromJson;

  /// IDs of entries to copy
  @override
  List<String> get sourceEntryIds;

  /// ID of target folder where copies will be placed
  @override
  String get targetFolderId;

  /// How to handle naming conflicts
  @override
  CopyConflictPolicy get conflictPolicy;

  /// Whether to copy folder contents recursively
  @override
  bool get recursive;

  /// Create a copy of BatchFileCopyTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchFileCopyTaskImplCopyWith<_$BatchFileCopyTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
