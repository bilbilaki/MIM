// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChangeOwnerTask _$ChangeOwnerTaskFromJson(Map<String, dynamic> json) {
  return _ChangeOwnerTask.fromJson(json);
}

/// @nodoc
mixin _$ChangeOwnerTask {
  /// IDs of entries to modify
  List<String> get entryIds => throw _privateConstructorUsedError;

  /// New owner user ID (null to keep current)
  String? get ownerUserId => throw _privateConstructorUsedError;

  /// New owner group ID (null to keep current)
  String? get ownerGroupId => throw _privateConstructorUsedError;

  /// Serializes this ChangeOwnerTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangeOwnerTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeOwnerTaskCopyWith<ChangeOwnerTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeOwnerTaskCopyWith<$Res> {
  factory $ChangeOwnerTaskCopyWith(
    ChangeOwnerTask value,
    $Res Function(ChangeOwnerTask) then,
  ) = _$ChangeOwnerTaskCopyWithImpl<$Res, ChangeOwnerTask>;
  @useResult
  $Res call({List<String> entryIds, String? ownerUserId, String? ownerGroupId});
}

/// @nodoc
class _$ChangeOwnerTaskCopyWithImpl<$Res, $Val extends ChangeOwnerTask>
    implements $ChangeOwnerTaskCopyWith<$Res> {
  _$ChangeOwnerTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeOwnerTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryIds = null,
    Object? ownerUserId = freezed,
    Object? ownerGroupId = freezed,
  }) {
    return _then(
      _value.copyWith(
            entryIds: null == entryIds
                ? _value.entryIds
                : entryIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            ownerUserId: freezed == ownerUserId
                ? _value.ownerUserId
                : ownerUserId // ignore: cast_nullable_to_non_nullable
                      as String?,
            ownerGroupId: freezed == ownerGroupId
                ? _value.ownerGroupId
                : ownerGroupId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChangeOwnerTaskImplCopyWith<$Res>
    implements $ChangeOwnerTaskCopyWith<$Res> {
  factory _$$ChangeOwnerTaskImplCopyWith(
    _$ChangeOwnerTaskImpl value,
    $Res Function(_$ChangeOwnerTaskImpl) then,
  ) = __$$ChangeOwnerTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> entryIds, String? ownerUserId, String? ownerGroupId});
}

/// @nodoc
class __$$ChangeOwnerTaskImplCopyWithImpl<$Res>
    extends _$ChangeOwnerTaskCopyWithImpl<$Res, _$ChangeOwnerTaskImpl>
    implements _$$ChangeOwnerTaskImplCopyWith<$Res> {
  __$$ChangeOwnerTaskImplCopyWithImpl(
    _$ChangeOwnerTaskImpl _value,
    $Res Function(_$ChangeOwnerTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangeOwnerTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryIds = null,
    Object? ownerUserId = freezed,
    Object? ownerGroupId = freezed,
  }) {
    return _then(
      _$ChangeOwnerTaskImpl(
        entryIds: null == entryIds
            ? _value._entryIds
            : entryIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        ownerUserId: freezed == ownerUserId
            ? _value.ownerUserId
            : ownerUserId // ignore: cast_nullable_to_non_nullable
                  as String?,
        ownerGroupId: freezed == ownerGroupId
            ? _value.ownerGroupId
            : ownerGroupId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeOwnerTaskImpl implements _ChangeOwnerTask {
  const _$ChangeOwnerTaskImpl({
    required final List<String> entryIds,
    this.ownerUserId,
    this.ownerGroupId,
  }) : _entryIds = entryIds;

  factory _$ChangeOwnerTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeOwnerTaskImplFromJson(json);

  /// IDs of entries to modify
  final List<String> _entryIds;

  /// IDs of entries to modify
  @override
  List<String> get entryIds {
    if (_entryIds is EqualUnmodifiableListView) return _entryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entryIds);
  }

  /// New owner user ID (null to keep current)
  @override
  final String? ownerUserId;

  /// New owner group ID (null to keep current)
  @override
  final String? ownerGroupId;

  @override
  String toString() {
    return 'ChangeOwnerTask(entryIds: $entryIds, ownerUserId: $ownerUserId, ownerGroupId: $ownerGroupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeOwnerTaskImpl &&
            const DeepCollectionEquality().equals(other._entryIds, _entryIds) &&
            (identical(other.ownerUserId, ownerUserId) ||
                other.ownerUserId == ownerUserId) &&
            (identical(other.ownerGroupId, ownerGroupId) ||
                other.ownerGroupId == ownerGroupId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_entryIds),
    ownerUserId,
    ownerGroupId,
  );

  /// Create a copy of ChangeOwnerTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeOwnerTaskImplCopyWith<_$ChangeOwnerTaskImpl> get copyWith =>
      __$$ChangeOwnerTaskImplCopyWithImpl<_$ChangeOwnerTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeOwnerTaskImplToJson(this);
  }
}

abstract class _ChangeOwnerTask implements ChangeOwnerTask {
  const factory _ChangeOwnerTask({
    required final List<String> entryIds,
    final String? ownerUserId,
    final String? ownerGroupId,
  }) = _$ChangeOwnerTaskImpl;

  factory _ChangeOwnerTask.fromJson(Map<String, dynamic> json) =
      _$ChangeOwnerTaskImpl.fromJson;

  /// IDs of entries to modify
  @override
  List<String> get entryIds;

  /// New owner user ID (null to keep current)
  @override
  String? get ownerUserId;

  /// New owner group ID (null to keep current)
  @override
  String? get ownerGroupId;

  /// Create a copy of ChangeOwnerTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeOwnerTaskImplCopyWith<_$ChangeOwnerTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChangeOwnerResult _$ChangeOwnerResultFromJson(Map<String, dynamic> json) {
  return _ChangeOwnerResult.fromJson(json);
}

/// @nodoc
mixin _$ChangeOwnerResult {
  /// List of results for each entry processed
  List<ChangeOwnerEntryResult> get results =>
      throw _privateConstructorUsedError;

  /// Total count of successfully updated entries
  int get successCount => throw _privateConstructorUsedError;

  /// Total count of entries that failed to update
  int get failureCount => throw _privateConstructorUsedError;

  /// Serializes this ChangeOwnerResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangeOwnerResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeOwnerResultCopyWith<ChangeOwnerResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeOwnerResultCopyWith<$Res> {
  factory $ChangeOwnerResultCopyWith(
    ChangeOwnerResult value,
    $Res Function(ChangeOwnerResult) then,
  ) = _$ChangeOwnerResultCopyWithImpl<$Res, ChangeOwnerResult>;
  @useResult
  $Res call({
    List<ChangeOwnerEntryResult> results,
    int successCount,
    int failureCount,
  });
}

/// @nodoc
class _$ChangeOwnerResultCopyWithImpl<$Res, $Val extends ChangeOwnerResult>
    implements $ChangeOwnerResultCopyWith<$Res> {
  _$ChangeOwnerResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeOwnerResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? successCount = null,
    Object? failureCount = null,
  }) {
    return _then(
      _value.copyWith(
            results: null == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as List<ChangeOwnerEntryResult>,
            successCount: null == successCount
                ? _value.successCount
                : successCount // ignore: cast_nullable_to_non_nullable
                      as int,
            failureCount: null == failureCount
                ? _value.failureCount
                : failureCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChangeOwnerResultImplCopyWith<$Res>
    implements $ChangeOwnerResultCopyWith<$Res> {
  factory _$$ChangeOwnerResultImplCopyWith(
    _$ChangeOwnerResultImpl value,
    $Res Function(_$ChangeOwnerResultImpl) then,
  ) = __$$ChangeOwnerResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ChangeOwnerEntryResult> results,
    int successCount,
    int failureCount,
  });
}

/// @nodoc
class __$$ChangeOwnerResultImplCopyWithImpl<$Res>
    extends _$ChangeOwnerResultCopyWithImpl<$Res, _$ChangeOwnerResultImpl>
    implements _$$ChangeOwnerResultImplCopyWith<$Res> {
  __$$ChangeOwnerResultImplCopyWithImpl(
    _$ChangeOwnerResultImpl _value,
    $Res Function(_$ChangeOwnerResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangeOwnerResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? successCount = null,
    Object? failureCount = null,
  }) {
    return _then(
      _$ChangeOwnerResultImpl(
        results: null == results
            ? _value._results
            : results // ignore: cast_nullable_to_non_nullable
                  as List<ChangeOwnerEntryResult>,
        successCount: null == successCount
            ? _value.successCount
            : successCount // ignore: cast_nullable_to_non_nullable
                  as int,
        failureCount: null == failureCount
            ? _value.failureCount
            : failureCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeOwnerResultImpl implements _ChangeOwnerResult {
  const _$ChangeOwnerResultImpl({
    required final List<ChangeOwnerEntryResult> results,
    this.successCount = 0,
    this.failureCount = 0,
  }) : _results = results;

  factory _$ChangeOwnerResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeOwnerResultImplFromJson(json);

  /// List of results for each entry processed
  final List<ChangeOwnerEntryResult> _results;

  /// List of results for each entry processed
  @override
  List<ChangeOwnerEntryResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  /// Total count of successfully updated entries
  @override
  @JsonKey()
  final int successCount;

  /// Total count of entries that failed to update
  @override
  @JsonKey()
  final int failureCount;

  @override
  String toString() {
    return 'ChangeOwnerResult(results: $results, successCount: $successCount, failureCount: $failureCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeOwnerResultImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.successCount, successCount) ||
                other.successCount == successCount) &&
            (identical(other.failureCount, failureCount) ||
                other.failureCount == failureCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_results),
    successCount,
    failureCount,
  );

  /// Create a copy of ChangeOwnerResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeOwnerResultImplCopyWith<_$ChangeOwnerResultImpl> get copyWith =>
      __$$ChangeOwnerResultImplCopyWithImpl<_$ChangeOwnerResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeOwnerResultImplToJson(this);
  }
}

abstract class _ChangeOwnerResult implements ChangeOwnerResult {
  const factory _ChangeOwnerResult({
    required final List<ChangeOwnerEntryResult> results,
    final int successCount,
    final int failureCount,
  }) = _$ChangeOwnerResultImpl;

  factory _ChangeOwnerResult.fromJson(Map<String, dynamic> json) =
      _$ChangeOwnerResultImpl.fromJson;

  /// List of results for each entry processed
  @override
  List<ChangeOwnerEntryResult> get results;

  /// Total count of successfully updated entries
  @override
  int get successCount;

  /// Total count of entries that failed to update
  @override
  int get failureCount;

  /// Create a copy of ChangeOwnerResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeOwnerResultImplCopyWith<_$ChangeOwnerResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChangeOwnerEntryResult _$ChangeOwnerEntryResultFromJson(
  Map<String, dynamic> json,
) {
  return _ChangeOwnerEntryResult.fromJson(json);
}

/// @nodoc
mixin _$ChangeOwnerEntryResult {
  /// ID of the entry that was processed
  String get entryId => throw _privateConstructorUsedError;

  /// Whether the ownership change was successful
  bool get success => throw _privateConstructorUsedError;

  /// Error message if the operation failed
  String? get error => throw _privateConstructorUsedError;

  /// The updated entry (if successful)
  FsEntry? get updatedEntry => throw _privateConstructorUsedError;

  /// Serializes this ChangeOwnerEntryResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangeOwnerEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeOwnerEntryResultCopyWith<ChangeOwnerEntryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeOwnerEntryResultCopyWith<$Res> {
  factory $ChangeOwnerEntryResultCopyWith(
    ChangeOwnerEntryResult value,
    $Res Function(ChangeOwnerEntryResult) then,
  ) = _$ChangeOwnerEntryResultCopyWithImpl<$Res, ChangeOwnerEntryResult>;
  @useResult
  $Res call({
    String entryId,
    bool success,
    String? error,
    FsEntry? updatedEntry,
  });

  $FsEntryCopyWith<$Res>? get updatedEntry;
}

/// @nodoc
class _$ChangeOwnerEntryResultCopyWithImpl<
  $Res,
  $Val extends ChangeOwnerEntryResult
>
    implements $ChangeOwnerEntryResultCopyWith<$Res> {
  _$ChangeOwnerEntryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeOwnerEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? success = null,
    Object? error = freezed,
    Object? updatedEntry = freezed,
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
            updatedEntry: freezed == updatedEntry
                ? _value.updatedEntry
                : updatedEntry // ignore: cast_nullable_to_non_nullable
                      as FsEntry?,
          )
          as $Val,
    );
  }

  /// Create a copy of ChangeOwnerEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FsEntryCopyWith<$Res>? get updatedEntry {
    if (_value.updatedEntry == null) {
      return null;
    }

    return $FsEntryCopyWith<$Res>(_value.updatedEntry!, (value) {
      return _then(_value.copyWith(updatedEntry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangeOwnerEntryResultImplCopyWith<$Res>
    implements $ChangeOwnerEntryResultCopyWith<$Res> {
  factory _$$ChangeOwnerEntryResultImplCopyWith(
    _$ChangeOwnerEntryResultImpl value,
    $Res Function(_$ChangeOwnerEntryResultImpl) then,
  ) = __$$ChangeOwnerEntryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String entryId,
    bool success,
    String? error,
    FsEntry? updatedEntry,
  });

  @override
  $FsEntryCopyWith<$Res>? get updatedEntry;
}

/// @nodoc
class __$$ChangeOwnerEntryResultImplCopyWithImpl<$Res>
    extends
        _$ChangeOwnerEntryResultCopyWithImpl<$Res, _$ChangeOwnerEntryResultImpl>
    implements _$$ChangeOwnerEntryResultImplCopyWith<$Res> {
  __$$ChangeOwnerEntryResultImplCopyWithImpl(
    _$ChangeOwnerEntryResultImpl _value,
    $Res Function(_$ChangeOwnerEntryResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangeOwnerEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? success = null,
    Object? error = freezed,
    Object? updatedEntry = freezed,
  }) {
    return _then(
      _$ChangeOwnerEntryResultImpl(
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
        updatedEntry: freezed == updatedEntry
            ? _value.updatedEntry
            : updatedEntry // ignore: cast_nullable_to_non_nullable
                  as FsEntry?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeOwnerEntryResultImpl implements _ChangeOwnerEntryResult {
  const _$ChangeOwnerEntryResultImpl({
    required this.entryId,
    required this.success,
    this.error,
    this.updatedEntry,
  });

  factory _$ChangeOwnerEntryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeOwnerEntryResultImplFromJson(json);

  /// ID of the entry that was processed
  @override
  final String entryId;

  /// Whether the ownership change was successful
  @override
  final bool success;

  /// Error message if the operation failed
  @override
  final String? error;

  /// The updated entry (if successful)
  @override
  final FsEntry? updatedEntry;

  @override
  String toString() {
    return 'ChangeOwnerEntryResult(entryId: $entryId, success: $success, error: $error, updatedEntry: $updatedEntry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeOwnerEntryResultImpl &&
            (identical(other.entryId, entryId) || other.entryId == entryId) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.updatedEntry, updatedEntry) ||
                other.updatedEntry == updatedEntry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, entryId, success, error, updatedEntry);

  /// Create a copy of ChangeOwnerEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeOwnerEntryResultImplCopyWith<_$ChangeOwnerEntryResultImpl>
  get copyWith =>
      __$$ChangeOwnerEntryResultImplCopyWithImpl<_$ChangeOwnerEntryResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeOwnerEntryResultImplToJson(this);
  }
}

abstract class _ChangeOwnerEntryResult implements ChangeOwnerEntryResult {
  const factory _ChangeOwnerEntryResult({
    required final String entryId,
    required final bool success,
    final String? error,
    final FsEntry? updatedEntry,
  }) = _$ChangeOwnerEntryResultImpl;

  factory _ChangeOwnerEntryResult.fromJson(Map<String, dynamic> json) =
      _$ChangeOwnerEntryResultImpl.fromJson;

  /// ID of the entry that was processed
  @override
  String get entryId;

  /// Whether the ownership change was successful
  @override
  bool get success;

  /// Error message if the operation failed
  @override
  String? get error;

  /// The updated entry (if successful)
  @override
  FsEntry? get updatedEntry;

  /// Create a copy of ChangeOwnerEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeOwnerEntryResultImplCopyWith<_$ChangeOwnerEntryResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}
