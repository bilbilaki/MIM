// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'batch_file_opration_remove.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BatchFileRemoveTask _$BatchFileRemoveTaskFromJson(Map<String, dynamic> json) {
  return _BatchFileRemoveTask.fromJson(json);
}

/// @nodoc
mixin _$BatchFileRemoveTask {
  /// IDs of entries to remove
  List<String> get entryIds => throw _privateConstructorUsedError;

  /// Removal mode: soft delete (mark as deleted) vs hard delete (permanent)
  RemoveMode get mode => throw _privateConstructorUsedError;

  /// Whether to skip validation and force removal
  bool get force => throw _privateConstructorUsedError;

  /// Serializes this BatchFileRemoveTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchFileRemoveTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchFileRemoveTaskCopyWith<BatchFileRemoveTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchFileRemoveTaskCopyWith<$Res> {
  factory $BatchFileRemoveTaskCopyWith(
    BatchFileRemoveTask value,
    $Res Function(BatchFileRemoveTask) then,
  ) = _$BatchFileRemoveTaskCopyWithImpl<$Res, BatchFileRemoveTask>;
  @useResult
  $Res call({List<String> entryIds, RemoveMode mode, bool force});
}

/// @nodoc
class _$BatchFileRemoveTaskCopyWithImpl<$Res, $Val extends BatchFileRemoveTask>
    implements $BatchFileRemoveTaskCopyWith<$Res> {
  _$BatchFileRemoveTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchFileRemoveTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryIds = null,
    Object? mode = null,
    Object? force = null,
  }) {
    return _then(
      _value.copyWith(
            entryIds: null == entryIds
                ? _value.entryIds
                : entryIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            mode: null == mode
                ? _value.mode
                : mode // ignore: cast_nullable_to_non_nullable
                      as RemoveMode,
            force: null == force
                ? _value.force
                : force // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BatchFileRemoveTaskImplCopyWith<$Res>
    implements $BatchFileRemoveTaskCopyWith<$Res> {
  factory _$$BatchFileRemoveTaskImplCopyWith(
    _$BatchFileRemoveTaskImpl value,
    $Res Function(_$BatchFileRemoveTaskImpl) then,
  ) = __$$BatchFileRemoveTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> entryIds, RemoveMode mode, bool force});
}

/// @nodoc
class __$$BatchFileRemoveTaskImplCopyWithImpl<$Res>
    extends _$BatchFileRemoveTaskCopyWithImpl<$Res, _$BatchFileRemoveTaskImpl>
    implements _$$BatchFileRemoveTaskImplCopyWith<$Res> {
  __$$BatchFileRemoveTaskImplCopyWithImpl(
    _$BatchFileRemoveTaskImpl _value,
    $Res Function(_$BatchFileRemoveTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchFileRemoveTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryIds = null,
    Object? mode = null,
    Object? force = null,
  }) {
    return _then(
      _$BatchFileRemoveTaskImpl(
        entryIds: null == entryIds
            ? _value._entryIds
            : entryIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        mode: null == mode
            ? _value.mode
            : mode // ignore: cast_nullable_to_non_nullable
                  as RemoveMode,
        force: null == force
            ? _value.force
            : force // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchFileRemoveTaskImpl extends _BatchFileRemoveTask {
  const _$BatchFileRemoveTaskImpl({
    required final List<String> entryIds,
    this.mode = RemoveMode.soft,
    this.force = false,
  }) : _entryIds = entryIds,
       super._();

  factory _$BatchFileRemoveTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchFileRemoveTaskImplFromJson(json);

  /// IDs of entries to remove
  final List<String> _entryIds;

  /// IDs of entries to remove
  @override
  List<String> get entryIds {
    if (_entryIds is EqualUnmodifiableListView) return _entryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entryIds);
  }

  /// Removal mode: soft delete (mark as deleted) vs hard delete (permanent)
  @override
  @JsonKey()
  final RemoveMode mode;

  /// Whether to skip validation and force removal
  @override
  @JsonKey()
  final bool force;

  @override
  String toString() {
    return 'BatchFileRemoveTask(entryIds: $entryIds, mode: $mode, force: $force)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchFileRemoveTaskImpl &&
            const DeepCollectionEquality().equals(other._entryIds, _entryIds) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.force, force) || other.force == force));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_entryIds),
    mode,
    force,
  );

  /// Create a copy of BatchFileRemoveTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchFileRemoveTaskImplCopyWith<_$BatchFileRemoveTaskImpl> get copyWith =>
      __$$BatchFileRemoveTaskImplCopyWithImpl<_$BatchFileRemoveTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchFileRemoveTaskImplToJson(this);
  }
}

abstract class _BatchFileRemoveTask extends BatchFileRemoveTask {
  const factory _BatchFileRemoveTask({
    required final List<String> entryIds,
    final RemoveMode mode,
    final bool force,
  }) = _$BatchFileRemoveTaskImpl;
  const _BatchFileRemoveTask._() : super._();

  factory _BatchFileRemoveTask.fromJson(Map<String, dynamic> json) =
      _$BatchFileRemoveTaskImpl.fromJson;

  /// IDs of entries to remove
  @override
  List<String> get entryIds;

  /// Removal mode: soft delete (mark as deleted) vs hard delete (permanent)
  @override
  RemoveMode get mode;

  /// Whether to skip validation and force removal
  @override
  bool get force;

  /// Create a copy of BatchFileRemoveTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchFileRemoveTaskImplCopyWith<_$BatchFileRemoveTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BatchFileRemoveResult _$BatchFileRemoveResultFromJson(
  Map<String, dynamic> json,
) {
  return _BatchFileRemoveResult.fromJson(json);
}

/// @nodoc
mixin _$BatchFileRemoveResult {
  /// Total number of entries processed
  int get totalCount => throw _privateConstructorUsedError;

  /// Number of entries successfully removed
  int get removedCount => throw _privateConstructorUsedError;

  /// Number of entries that failed to remove
  int get failedCount => throw _privateConstructorUsedError;

  /// Detailed results for each entry
  List<RemoveEntryResult> get entries => throw _privateConstructorUsedError;

  /// Summary message
  String? get summary => throw _privateConstructorUsedError;

  /// Serializes this BatchFileRemoveResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchFileRemoveResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchFileRemoveResultCopyWith<BatchFileRemoveResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchFileRemoveResultCopyWith<$Res> {
  factory $BatchFileRemoveResultCopyWith(
    BatchFileRemoveResult value,
    $Res Function(BatchFileRemoveResult) then,
  ) = _$BatchFileRemoveResultCopyWithImpl<$Res, BatchFileRemoveResult>;
  @useResult
  $Res call({
    int totalCount,
    int removedCount,
    int failedCount,
    List<RemoveEntryResult> entries,
    String? summary,
  });
}

/// @nodoc
class _$BatchFileRemoveResultCopyWithImpl<
  $Res,
  $Val extends BatchFileRemoveResult
>
    implements $BatchFileRemoveResultCopyWith<$Res> {
  _$BatchFileRemoveResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchFileRemoveResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? removedCount = null,
    Object? failedCount = null,
    Object? entries = null,
    Object? summary = freezed,
  }) {
    return _then(
      _value.copyWith(
            totalCount: null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                      as int,
            removedCount: null == removedCount
                ? _value.removedCount
                : removedCount // ignore: cast_nullable_to_non_nullable
                      as int,
            failedCount: null == failedCount
                ? _value.failedCount
                : failedCount // ignore: cast_nullable_to_non_nullable
                      as int,
            entries: null == entries
                ? _value.entries
                : entries // ignore: cast_nullable_to_non_nullable
                      as List<RemoveEntryResult>,
            summary: freezed == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BatchFileRemoveResultImplCopyWith<$Res>
    implements $BatchFileRemoveResultCopyWith<$Res> {
  factory _$$BatchFileRemoveResultImplCopyWith(
    _$BatchFileRemoveResultImpl value,
    $Res Function(_$BatchFileRemoveResultImpl) then,
  ) = __$$BatchFileRemoveResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int totalCount,
    int removedCount,
    int failedCount,
    List<RemoveEntryResult> entries,
    String? summary,
  });
}

/// @nodoc
class __$$BatchFileRemoveResultImplCopyWithImpl<$Res>
    extends
        _$BatchFileRemoveResultCopyWithImpl<$Res, _$BatchFileRemoveResultImpl>
    implements _$$BatchFileRemoveResultImplCopyWith<$Res> {
  __$$BatchFileRemoveResultImplCopyWithImpl(
    _$BatchFileRemoveResultImpl _value,
    $Res Function(_$BatchFileRemoveResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchFileRemoveResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? removedCount = null,
    Object? failedCount = null,
    Object? entries = null,
    Object? summary = freezed,
  }) {
    return _then(
      _$BatchFileRemoveResultImpl(
        totalCount: null == totalCount
            ? _value.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
        removedCount: null == removedCount
            ? _value.removedCount
            : removedCount // ignore: cast_nullable_to_non_nullable
                  as int,
        failedCount: null == failedCount
            ? _value.failedCount
            : failedCount // ignore: cast_nullable_to_non_nullable
                  as int,
        entries: null == entries
            ? _value._entries
            : entries // ignore: cast_nullable_to_non_nullable
                  as List<RemoveEntryResult>,
        summary: freezed == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchFileRemoveResultImpl implements _BatchFileRemoveResult {
  const _$BatchFileRemoveResultImpl({
    required this.totalCount,
    required this.removedCount,
    required this.failedCount,
    required final List<RemoveEntryResult> entries,
    this.summary,
  }) : _entries = entries;

  factory _$BatchFileRemoveResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchFileRemoveResultImplFromJson(json);

  /// Total number of entries processed
  @override
  final int totalCount;

  /// Number of entries successfully removed
  @override
  final int removedCount;

  /// Number of entries that failed to remove
  @override
  final int failedCount;

  /// Detailed results for each entry
  final List<RemoveEntryResult> _entries;

  /// Detailed results for each entry
  @override
  List<RemoveEntryResult> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  /// Summary message
  @override
  final String? summary;

  @override
  String toString() {
    return 'BatchFileRemoveResult(totalCount: $totalCount, removedCount: $removedCount, failedCount: $failedCount, entries: $entries, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchFileRemoveResultImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.removedCount, removedCount) ||
                other.removedCount == removedCount) &&
            (identical(other.failedCount, failedCount) ||
                other.failedCount == failedCount) &&
            const DeepCollectionEquality().equals(other._entries, _entries) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalCount,
    removedCount,
    failedCount,
    const DeepCollectionEquality().hash(_entries),
    summary,
  );

  /// Create a copy of BatchFileRemoveResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchFileRemoveResultImplCopyWith<_$BatchFileRemoveResultImpl>
  get copyWith =>
      __$$BatchFileRemoveResultImplCopyWithImpl<_$BatchFileRemoveResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchFileRemoveResultImplToJson(this);
  }
}

abstract class _BatchFileRemoveResult implements BatchFileRemoveResult {
  const factory _BatchFileRemoveResult({
    required final int totalCount,
    required final int removedCount,
    required final int failedCount,
    required final List<RemoveEntryResult> entries,
    final String? summary,
  }) = _$BatchFileRemoveResultImpl;

  factory _BatchFileRemoveResult.fromJson(Map<String, dynamic> json) =
      _$BatchFileRemoveResultImpl.fromJson;

  /// Total number of entries processed
  @override
  int get totalCount;

  /// Number of entries successfully removed
  @override
  int get removedCount;

  /// Number of entries that failed to remove
  @override
  int get failedCount;

  /// Detailed results for each entry
  @override
  List<RemoveEntryResult> get entries;

  /// Summary message
  @override
  String? get summary;

  /// Create a copy of BatchFileRemoveResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchFileRemoveResultImplCopyWith<_$BatchFileRemoveResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}

RemoveEntryResult _$RemoveEntryResultFromJson(Map<String, dynamic> json) {
  return _RemoveEntryResult.fromJson(json);
}

/// @nodoc
mixin _$RemoveEntryResult {
  /// ID of the entry that was processed
  String get entryId => throw _privateConstructorUsedError;

  /// Whether removal was successful
  bool get success => throw _privateConstructorUsedError;

  /// Error message if removal failed
  String? get error => throw _privateConstructorUsedError;

  /// The entry that was removed (for soft delete, this is the updated entry)
  FsEntry? get removedEntry => throw _privateConstructorUsedError;

  /// Serializes this RemoveEntryResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoveEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveEntryResultCopyWith<RemoveEntryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveEntryResultCopyWith<$Res> {
  factory $RemoveEntryResultCopyWith(
    RemoveEntryResult value,
    $Res Function(RemoveEntryResult) then,
  ) = _$RemoveEntryResultCopyWithImpl<$Res, RemoveEntryResult>;
  @useResult
  $Res call({
    String entryId,
    bool success,
    String? error,
    FsEntry? removedEntry,
  });

  $FsEntryCopyWith<$Res>? get removedEntry;
}

/// @nodoc
class _$RemoveEntryResultCopyWithImpl<$Res, $Val extends RemoveEntryResult>
    implements $RemoveEntryResultCopyWith<$Res> {
  _$RemoveEntryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? success = null,
    Object? error = freezed,
    Object? removedEntry = freezed,
  }) {
    return _then(
      _value.copyWith(
            entryId: null == entryId
                ? _value.entryId
                : entryId // ignore: cast_nullable_to_non_nullable
                      as String,
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            removedEntry: freezed == removedEntry
                ? _value.removedEntry
                : removedEntry // ignore: cast_nullable_to_non_nullable
                      as FsEntry?,
          )
          as $Val,
    );
  }

  /// Create a copy of RemoveEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FsEntryCopyWith<$Res>? get removedEntry {
    if (_value.removedEntry == null) {
      return null;
    }

    return $FsEntryCopyWith<$Res>(_value.removedEntry!, (value) {
      return _then(_value.copyWith(removedEntry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemoveEntryResultImplCopyWith<$Res>
    implements $RemoveEntryResultCopyWith<$Res> {
  factory _$$RemoveEntryResultImplCopyWith(
    _$RemoveEntryResultImpl value,
    $Res Function(_$RemoveEntryResultImpl) then,
  ) = __$$RemoveEntryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String entryId,
    bool success,
    String? error,
    FsEntry? removedEntry,
  });

  @override
  $FsEntryCopyWith<$Res>? get removedEntry;
}

/// @nodoc
class __$$RemoveEntryResultImplCopyWithImpl<$Res>
    extends _$RemoveEntryResultCopyWithImpl<$Res, _$RemoveEntryResultImpl>
    implements _$$RemoveEntryResultImplCopyWith<$Res> {
  __$$RemoveEntryResultImplCopyWithImpl(
    _$RemoveEntryResultImpl _value,
    $Res Function(_$RemoveEntryResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemoveEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? success = null,
    Object? error = freezed,
    Object? removedEntry = freezed,
  }) {
    return _then(
      _$RemoveEntryResultImpl(
        entryId: null == entryId
            ? _value.entryId
            : entryId // ignore: cast_nullable_to_non_nullable
                  as String,
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        removedEntry: freezed == removedEntry
            ? _value.removedEntry
            : removedEntry // ignore: cast_nullable_to_non_nullable
                  as FsEntry?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveEntryResultImpl implements _RemoveEntryResult {
  const _$RemoveEntryResultImpl({
    required this.entryId,
    required this.success,
    this.error,
    this.removedEntry,
  });

  factory _$RemoveEntryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveEntryResultImplFromJson(json);

  /// ID of the entry that was processed
  @override
  final String entryId;

  /// Whether removal was successful
  @override
  final bool success;

  /// Error message if removal failed
  @override
  final String? error;

  /// The entry that was removed (for soft delete, this is the updated entry)
  @override
  final FsEntry? removedEntry;

  @override
  String toString() {
    return 'RemoveEntryResult(entryId: $entryId, success: $success, error: $error, removedEntry: $removedEntry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveEntryResultImpl &&
            (identical(other.entryId, entryId) || other.entryId == entryId) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.removedEntry, removedEntry) ||
                other.removedEntry == removedEntry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, entryId, success, error, removedEntry);

  /// Create a copy of RemoveEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveEntryResultImplCopyWith<_$RemoveEntryResultImpl> get copyWith =>
      __$$RemoveEntryResultImplCopyWithImpl<_$RemoveEntryResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveEntryResultImplToJson(this);
  }
}

abstract class _RemoveEntryResult implements RemoveEntryResult {
  const factory _RemoveEntryResult({
    required final String entryId,
    required final bool success,
    final String? error,
    final FsEntry? removedEntry,
  }) = _$RemoveEntryResultImpl;

  factory _RemoveEntryResult.fromJson(Map<String, dynamic> json) =
      _$RemoveEntryResultImpl.fromJson;

  /// ID of the entry that was processed
  @override
  String get entryId;

  /// Whether removal was successful
  @override
  bool get success;

  /// Error message if removal failed
  @override
  String? get error;

  /// The entry that was removed (for soft delete, this is the updated entry)
  @override
  FsEntry? get removedEntry;

  /// Create a copy of RemoveEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveEntryResultImplCopyWith<_$RemoveEntryResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
