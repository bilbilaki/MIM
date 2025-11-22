// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'batch_file_opration_move.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BatchFileMoveResult _$BatchFileMoveResultFromJson(Map<String, dynamic> json) {
  return _BatchFileMoveResult.fromJson(json);
}

/// @nodoc
mixin _$BatchFileMoveResult {
  /// Number of entries successfully moved
  int get movedCount => throw _privateConstructorUsedError;

  /// Number of entries that were skipped due to conflicts
  int get skippedCount => throw _privateConstructorUsedError;

  /// Number of entries that failed to move
  int get failedCount => throw _privateConstructorUsedError;

  /// Detailed results for each source entry
  List<BatchFileMoveEntryResult> get entryResults =>
      throw _privateConstructorUsedError;

  /// Serializes this BatchFileMoveResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchFileMoveResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchFileMoveResultCopyWith<BatchFileMoveResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchFileMoveResultCopyWith<$Res> {
  factory $BatchFileMoveResultCopyWith(
    BatchFileMoveResult value,
    $Res Function(BatchFileMoveResult) then,
  ) = _$BatchFileMoveResultCopyWithImpl<$Res, BatchFileMoveResult>;
  @useResult
  $Res call({
    int movedCount,
    int skippedCount,
    int failedCount,
    List<BatchFileMoveEntryResult> entryResults,
  });
}

/// @nodoc
class _$BatchFileMoveResultCopyWithImpl<$Res, $Val extends BatchFileMoveResult>
    implements $BatchFileMoveResultCopyWith<$Res> {
  _$BatchFileMoveResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchFileMoveResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movedCount = null,
    Object? skippedCount = null,
    Object? failedCount = null,
    Object? entryResults = null,
  }) {
    return _then(
      _value.copyWith(
            movedCount: null == movedCount
                ? _value.movedCount
                : movedCount // ignore: cast_nullable_to_non_nullable
                      as int,
            skippedCount: null == skippedCount
                ? _value.skippedCount
                : skippedCount // ignore: cast_nullable_to_non_nullable
                      as int,
            failedCount: null == failedCount
                ? _value.failedCount
                : failedCount // ignore: cast_nullable_to_non_nullable
                      as int,
            entryResults: null == entryResults
                ? _value.entryResults
                : entryResults // ignore: cast_nullable_to_non_nullable
                      as List<BatchFileMoveEntryResult>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BatchFileMoveResultImplCopyWith<$Res>
    implements $BatchFileMoveResultCopyWith<$Res> {
  factory _$$BatchFileMoveResultImplCopyWith(
    _$BatchFileMoveResultImpl value,
    $Res Function(_$BatchFileMoveResultImpl) then,
  ) = __$$BatchFileMoveResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int movedCount,
    int skippedCount,
    int failedCount,
    List<BatchFileMoveEntryResult> entryResults,
  });
}

/// @nodoc
class __$$BatchFileMoveResultImplCopyWithImpl<$Res>
    extends _$BatchFileMoveResultCopyWithImpl<$Res, _$BatchFileMoveResultImpl>
    implements _$$BatchFileMoveResultImplCopyWith<$Res> {
  __$$BatchFileMoveResultImplCopyWithImpl(
    _$BatchFileMoveResultImpl _value,
    $Res Function(_$BatchFileMoveResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchFileMoveResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movedCount = null,
    Object? skippedCount = null,
    Object? failedCount = null,
    Object? entryResults = null,
  }) {
    return _then(
      _$BatchFileMoveResultImpl(
        movedCount: null == movedCount
            ? _value.movedCount
            : movedCount // ignore: cast_nullable_to_non_nullable
                  as int,
        skippedCount: null == skippedCount
            ? _value.skippedCount
            : skippedCount // ignore: cast_nullable_to_non_nullable
                  as int,
        failedCount: null == failedCount
            ? _value.failedCount
            : failedCount // ignore: cast_nullable_to_non_nullable
                  as int,
        entryResults: null == entryResults
            ? _value._entryResults
            : entryResults // ignore: cast_nullable_to_non_nullable
                  as List<BatchFileMoveEntryResult>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchFileMoveResultImpl implements _BatchFileMoveResult {
  const _$BatchFileMoveResultImpl({
    required this.movedCount,
    required this.skippedCount,
    required this.failedCount,
    required final List<BatchFileMoveEntryResult> entryResults,
  }) : _entryResults = entryResults;

  factory _$BatchFileMoveResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchFileMoveResultImplFromJson(json);

  /// Number of entries successfully moved
  @override
  final int movedCount;

  /// Number of entries that were skipped due to conflicts
  @override
  final int skippedCount;

  /// Number of entries that failed to move
  @override
  final int failedCount;

  /// Detailed results for each source entry
  final List<BatchFileMoveEntryResult> _entryResults;

  /// Detailed results for each source entry
  @override
  List<BatchFileMoveEntryResult> get entryResults {
    if (_entryResults is EqualUnmodifiableListView) return _entryResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entryResults);
  }

  @override
  String toString() {
    return 'BatchFileMoveResult(movedCount: $movedCount, skippedCount: $skippedCount, failedCount: $failedCount, entryResults: $entryResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchFileMoveResultImpl &&
            (identical(other.movedCount, movedCount) ||
                other.movedCount == movedCount) &&
            (identical(other.skippedCount, skippedCount) ||
                other.skippedCount == skippedCount) &&
            (identical(other.failedCount, failedCount) ||
                other.failedCount == failedCount) &&
            const DeepCollectionEquality().equals(
              other._entryResults,
              _entryResults,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    movedCount,
    skippedCount,
    failedCount,
    const DeepCollectionEquality().hash(_entryResults),
  );

  /// Create a copy of BatchFileMoveResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchFileMoveResultImplCopyWith<_$BatchFileMoveResultImpl> get copyWith =>
      __$$BatchFileMoveResultImplCopyWithImpl<_$BatchFileMoveResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchFileMoveResultImplToJson(this);
  }
}

abstract class _BatchFileMoveResult implements BatchFileMoveResult {
  const factory _BatchFileMoveResult({
    required final int movedCount,
    required final int skippedCount,
    required final int failedCount,
    required final List<BatchFileMoveEntryResult> entryResults,
  }) = _$BatchFileMoveResultImpl;

  factory _BatchFileMoveResult.fromJson(Map<String, dynamic> json) =
      _$BatchFileMoveResultImpl.fromJson;

  /// Number of entries successfully moved
  @override
  int get movedCount;

  /// Number of entries that were skipped due to conflicts
  @override
  int get skippedCount;

  /// Number of entries that failed to move
  @override
  int get failedCount;

  /// Detailed results for each source entry
  @override
  List<BatchFileMoveEntryResult> get entryResults;

  /// Create a copy of BatchFileMoveResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchFileMoveResultImplCopyWith<_$BatchFileMoveResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BatchFileMoveEntryResult _$BatchFileMoveEntryResultFromJson(
  Map<String, dynamic> json,
) {
  return _BatchFileMoveEntryResult.fromJson(json);
}

/// @nodoc
mixin _$BatchFileMoveEntryResult {
  /// ID of the source entry
  String get sourceId => throw _privateConstructorUsedError;

  /// Status of the move operation for this entry
  BatchMoveStatus get status => throw _privateConstructorUsedError;

  /// ID of the moved entry (if successful)
  String? get movedId => throw _privateConstructorUsedError;

  /// Error message if the move failed
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this BatchFileMoveEntryResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchFileMoveEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchFileMoveEntryResultCopyWith<BatchFileMoveEntryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchFileMoveEntryResultCopyWith<$Res> {
  factory $BatchFileMoveEntryResultCopyWith(
    BatchFileMoveEntryResult value,
    $Res Function(BatchFileMoveEntryResult) then,
  ) = _$BatchFileMoveEntryResultCopyWithImpl<$Res, BatchFileMoveEntryResult>;
  @useResult
  $Res call({
    String sourceId,
    BatchMoveStatus status,
    String? movedId,
    String? error,
  });
}

/// @nodoc
class _$BatchFileMoveEntryResultCopyWithImpl<
  $Res,
  $Val extends BatchFileMoveEntryResult
>
    implements $BatchFileMoveEntryResultCopyWith<$Res> {
  _$BatchFileMoveEntryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchFileMoveEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? status = null,
    Object? movedId = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            sourceId: null == sourceId
                ? _value.sourceId
                : sourceId // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as BatchMoveStatus,
            movedId: freezed == movedId
                ? _value.movedId
                : movedId // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$BatchFileMoveEntryResultImplCopyWith<$Res>
    implements $BatchFileMoveEntryResultCopyWith<$Res> {
  factory _$$BatchFileMoveEntryResultImplCopyWith(
    _$BatchFileMoveEntryResultImpl value,
    $Res Function(_$BatchFileMoveEntryResultImpl) then,
  ) = __$$BatchFileMoveEntryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sourceId,
    BatchMoveStatus status,
    String? movedId,
    String? error,
  });
}

/// @nodoc
class __$$BatchFileMoveEntryResultImplCopyWithImpl<$Res>
    extends
        _$BatchFileMoveEntryResultCopyWithImpl<
          $Res,
          _$BatchFileMoveEntryResultImpl
        >
    implements _$$BatchFileMoveEntryResultImplCopyWith<$Res> {
  __$$BatchFileMoveEntryResultImplCopyWithImpl(
    _$BatchFileMoveEntryResultImpl _value,
    $Res Function(_$BatchFileMoveEntryResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchFileMoveEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? status = null,
    Object? movedId = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$BatchFileMoveEntryResultImpl(
        sourceId: null == sourceId
            ? _value.sourceId
            : sourceId // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as BatchMoveStatus,
        movedId: freezed == movedId
            ? _value.movedId
            : movedId // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$BatchFileMoveEntryResultImpl implements _BatchFileMoveEntryResult {
  const _$BatchFileMoveEntryResultImpl({
    required this.sourceId,
    required this.status,
    this.movedId,
    this.error,
  });

  factory _$BatchFileMoveEntryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchFileMoveEntryResultImplFromJson(json);

  /// ID of the source entry
  @override
  final String sourceId;

  /// Status of the move operation for this entry
  @override
  final BatchMoveStatus status;

  /// ID of the moved entry (if successful)
  @override
  final String? movedId;

  /// Error message if the move failed
  @override
  final String? error;

  @override
  String toString() {
    return 'BatchFileMoveEntryResult(sourceId: $sourceId, status: $status, movedId: $movedId, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchFileMoveEntryResultImpl &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.movedId, movedId) || other.movedId == movedId) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sourceId, status, movedId, error);

  /// Create a copy of BatchFileMoveEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchFileMoveEntryResultImplCopyWith<_$BatchFileMoveEntryResultImpl>
  get copyWith =>
      __$$BatchFileMoveEntryResultImplCopyWithImpl<
        _$BatchFileMoveEntryResultImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchFileMoveEntryResultImplToJson(this);
  }
}

abstract class _BatchFileMoveEntryResult implements BatchFileMoveEntryResult {
  const factory _BatchFileMoveEntryResult({
    required final String sourceId,
    required final BatchMoveStatus status,
    final String? movedId,
    final String? error,
  }) = _$BatchFileMoveEntryResultImpl;

  factory _BatchFileMoveEntryResult.fromJson(Map<String, dynamic> json) =
      _$BatchFileMoveEntryResultImpl.fromJson;

  /// ID of the source entry
  @override
  String get sourceId;

  /// Status of the move operation for this entry
  @override
  BatchMoveStatus get status;

  /// ID of the moved entry (if successful)
  @override
  String? get movedId;

  /// Error message if the move failed
  @override
  String? get error;

  /// Create a copy of BatchFileMoveEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchFileMoveEntryResultImplCopyWith<_$BatchFileMoveEntryResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}

BatchFileMoveTask _$BatchFileMoveTaskFromJson(Map<String, dynamic> json) {
  return _BatchFileMoveTask.fromJson(json);
}

/// @nodoc
mixin _$BatchFileMoveTask {
  /// IDs of the entries to move
  List<String> get sourceEntryIds => throw _privateConstructorUsedError;

  /// ID of the target folder where entries will be moved
  String get targetFolderId => throw _privateConstructorUsedError;

  /// Policy for handling name conflicts
  MoveConflictPolicy get conflictPolicy => throw _privateConstructorUsedError;

  /// Serializes this BatchFileMoveTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchFileMoveTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchFileMoveTaskCopyWith<BatchFileMoveTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchFileMoveTaskCopyWith<$Res> {
  factory $BatchFileMoveTaskCopyWith(
    BatchFileMoveTask value,
    $Res Function(BatchFileMoveTask) then,
  ) = _$BatchFileMoveTaskCopyWithImpl<$Res, BatchFileMoveTask>;
  @useResult
  $Res call({
    List<String> sourceEntryIds,
    String targetFolderId,
    MoveConflictPolicy conflictPolicy,
  });
}

/// @nodoc
class _$BatchFileMoveTaskCopyWithImpl<$Res, $Val extends BatchFileMoveTask>
    implements $BatchFileMoveTaskCopyWith<$Res> {
  _$BatchFileMoveTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchFileMoveTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceEntryIds = null,
    Object? targetFolderId = null,
    Object? conflictPolicy = null,
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
                      as MoveConflictPolicy,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BatchFileMoveTaskImplCopyWith<$Res>
    implements $BatchFileMoveTaskCopyWith<$Res> {
  factory _$$BatchFileMoveTaskImplCopyWith(
    _$BatchFileMoveTaskImpl value,
    $Res Function(_$BatchFileMoveTaskImpl) then,
  ) = __$$BatchFileMoveTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> sourceEntryIds,
    String targetFolderId,
    MoveConflictPolicy conflictPolicy,
  });
}

/// @nodoc
class __$$BatchFileMoveTaskImplCopyWithImpl<$Res>
    extends _$BatchFileMoveTaskCopyWithImpl<$Res, _$BatchFileMoveTaskImpl>
    implements _$$BatchFileMoveTaskImplCopyWith<$Res> {
  __$$BatchFileMoveTaskImplCopyWithImpl(
    _$BatchFileMoveTaskImpl _value,
    $Res Function(_$BatchFileMoveTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchFileMoveTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceEntryIds = null,
    Object? targetFolderId = null,
    Object? conflictPolicy = null,
  }) {
    return _then(
      _$BatchFileMoveTaskImpl(
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
                  as MoveConflictPolicy,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchFileMoveTaskImpl extends _BatchFileMoveTask {
  const _$BatchFileMoveTaskImpl({
    required final List<String> sourceEntryIds,
    required this.targetFolderId,
    this.conflictPolicy = MoveConflictPolicy.rename,
  }) : _sourceEntryIds = sourceEntryIds,
       super._();

  factory _$BatchFileMoveTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchFileMoveTaskImplFromJson(json);

  /// IDs of the entries to move
  final List<String> _sourceEntryIds;

  /// IDs of the entries to move
  @override
  List<String> get sourceEntryIds {
    if (_sourceEntryIds is EqualUnmodifiableListView) return _sourceEntryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sourceEntryIds);
  }

  /// ID of the target folder where entries will be moved
  @override
  final String targetFolderId;

  /// Policy for handling name conflicts
  @override
  @JsonKey()
  final MoveConflictPolicy conflictPolicy;

  @override
  String toString() {
    return 'BatchFileMoveTask(sourceEntryIds: $sourceEntryIds, targetFolderId: $targetFolderId, conflictPolicy: $conflictPolicy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchFileMoveTaskImpl &&
            const DeepCollectionEquality().equals(
              other._sourceEntryIds,
              _sourceEntryIds,
            ) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            (identical(other.conflictPolicy, conflictPolicy) ||
                other.conflictPolicy == conflictPolicy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_sourceEntryIds),
    targetFolderId,
    conflictPolicy,
  );

  /// Create a copy of BatchFileMoveTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchFileMoveTaskImplCopyWith<_$BatchFileMoveTaskImpl> get copyWith =>
      __$$BatchFileMoveTaskImplCopyWithImpl<_$BatchFileMoveTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchFileMoveTaskImplToJson(this);
  }
}

abstract class _BatchFileMoveTask extends BatchFileMoveTask {
  const factory _BatchFileMoveTask({
    required final List<String> sourceEntryIds,
    required final String targetFolderId,
    final MoveConflictPolicy conflictPolicy,
  }) = _$BatchFileMoveTaskImpl;
  const _BatchFileMoveTask._() : super._();

  factory _BatchFileMoveTask.fromJson(Map<String, dynamic> json) =
      _$BatchFileMoveTaskImpl.fromJson;

  /// IDs of the entries to move
  @override
  List<String> get sourceEntryIds;

  /// ID of the target folder where entries will be moved
  @override
  String get targetFolderId;

  /// Policy for handling name conflicts
  @override
  MoveConflictPolicy get conflictPolicy;

  /// Create a copy of BatchFileMoveTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchFileMoveTaskImplCopyWith<_$BatchFileMoveTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
