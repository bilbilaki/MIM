// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_access.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChangeAccessTask _$ChangeAccessTaskFromJson(Map<String, dynamic> json) {
  return _ChangeAccessTask.fromJson(json);
}

/// @nodoc
mixin _$ChangeAccessTask {
  /// IDs of entries to modify access for
  List<String> get entryIds => throw _privateConstructorUsedError;

  /// New access configuration to apply
  EntryAccess get newAccess => throw _privateConstructorUsedError;

  /// Whether to apply changes recursively to folder contents
  bool get recursive => throw _privateConstructorUsedError;

  /// Serializes this ChangeAccessTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangeAccessTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeAccessTaskCopyWith<ChangeAccessTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeAccessTaskCopyWith<$Res> {
  factory $ChangeAccessTaskCopyWith(
    ChangeAccessTask value,
    $Res Function(ChangeAccessTask) then,
  ) = _$ChangeAccessTaskCopyWithImpl<$Res, ChangeAccessTask>;
  @useResult
  $Res call({List<String> entryIds, EntryAccess newAccess, bool recursive});

  $EntryAccessCopyWith<$Res> get newAccess;
}

/// @nodoc
class _$ChangeAccessTaskCopyWithImpl<$Res, $Val extends ChangeAccessTask>
    implements $ChangeAccessTaskCopyWith<$Res> {
  _$ChangeAccessTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeAccessTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryIds = null,
    Object? newAccess = null,
    Object? recursive = null,
  }) {
    return _then(
      _value.copyWith(
            entryIds: null == entryIds
                ? _value.entryIds
                : entryIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            newAccess: null == newAccess
                ? _value.newAccess
                : newAccess // ignore: cast_nullable_to_non_nullable
                      as EntryAccess,
            recursive: null == recursive
                ? _value.recursive
                : recursive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ChangeAccessTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntryAccessCopyWith<$Res> get newAccess {
    return $EntryAccessCopyWith<$Res>(_value.newAccess, (value) {
      return _then(_value.copyWith(newAccess: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangeAccessTaskImplCopyWith<$Res>
    implements $ChangeAccessTaskCopyWith<$Res> {
  factory _$$ChangeAccessTaskImplCopyWith(
    _$ChangeAccessTaskImpl value,
    $Res Function(_$ChangeAccessTaskImpl) then,
  ) = __$$ChangeAccessTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> entryIds, EntryAccess newAccess, bool recursive});

  @override
  $EntryAccessCopyWith<$Res> get newAccess;
}

/// @nodoc
class __$$ChangeAccessTaskImplCopyWithImpl<$Res>
    extends _$ChangeAccessTaskCopyWithImpl<$Res, _$ChangeAccessTaskImpl>
    implements _$$ChangeAccessTaskImplCopyWith<$Res> {
  __$$ChangeAccessTaskImplCopyWithImpl(
    _$ChangeAccessTaskImpl _value,
    $Res Function(_$ChangeAccessTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangeAccessTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryIds = null,
    Object? newAccess = null,
    Object? recursive = null,
  }) {
    return _then(
      _$ChangeAccessTaskImpl(
        entryIds: null == entryIds
            ? _value._entryIds
            : entryIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        newAccess: null == newAccess
            ? _value.newAccess
            : newAccess // ignore: cast_nullable_to_non_nullable
                  as EntryAccess,
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
class _$ChangeAccessTaskImpl extends _ChangeAccessTask {
  const _$ChangeAccessTaskImpl({
    required final List<String> entryIds,
    required this.newAccess,
    this.recursive = false,
  }) : _entryIds = entryIds,
       super._();

  factory _$ChangeAccessTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeAccessTaskImplFromJson(json);

  /// IDs of entries to modify access for
  final List<String> _entryIds;

  /// IDs of entries to modify access for
  @override
  List<String> get entryIds {
    if (_entryIds is EqualUnmodifiableListView) return _entryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entryIds);
  }

  /// New access configuration to apply
  @override
  final EntryAccess newAccess;

  /// Whether to apply changes recursively to folder contents
  @override
  @JsonKey()
  final bool recursive;

  @override
  String toString() {
    return 'ChangeAccessTask(entryIds: $entryIds, newAccess: $newAccess, recursive: $recursive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAccessTaskImpl &&
            const DeepCollectionEquality().equals(other._entryIds, _entryIds) &&
            (identical(other.newAccess, newAccess) ||
                other.newAccess == newAccess) &&
            (identical(other.recursive, recursive) ||
                other.recursive == recursive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_entryIds),
    newAccess,
    recursive,
  );

  /// Create a copy of ChangeAccessTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAccessTaskImplCopyWith<_$ChangeAccessTaskImpl> get copyWith =>
      __$$ChangeAccessTaskImplCopyWithImpl<_$ChangeAccessTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeAccessTaskImplToJson(this);
  }
}

abstract class _ChangeAccessTask extends ChangeAccessTask {
  const factory _ChangeAccessTask({
    required final List<String> entryIds,
    required final EntryAccess newAccess,
    final bool recursive,
  }) = _$ChangeAccessTaskImpl;
  const _ChangeAccessTask._() : super._();

  factory _ChangeAccessTask.fromJson(Map<String, dynamic> json) =
      _$ChangeAccessTaskImpl.fromJson;

  /// IDs of entries to modify access for
  @override
  List<String> get entryIds;

  /// New access configuration to apply
  @override
  EntryAccess get newAccess;

  /// Whether to apply changes recursively to folder contents
  @override
  bool get recursive;

  /// Create a copy of ChangeAccessTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeAccessTaskImplCopyWith<_$ChangeAccessTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChangeAccessEntryResult _$ChangeAccessEntryResultFromJson(
  Map<String, dynamic> json,
) {
  return _ChangeAccessEntryResult.fromJson(json);
}

/// @nodoc
mixin _$ChangeAccessEntryResult {
  String get entryId => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  EntryAccess? get newAccess => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this ChangeAccessEntryResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangeAccessEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeAccessEntryResultCopyWith<ChangeAccessEntryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeAccessEntryResultCopyWith<$Res> {
  factory $ChangeAccessEntryResultCopyWith(
    ChangeAccessEntryResult value,
    $Res Function(ChangeAccessEntryResult) then,
  ) = _$ChangeAccessEntryResultCopyWithImpl<$Res, ChangeAccessEntryResult>;
  @useResult
  $Res call({
    String entryId,
    bool success,
    EntryAccess? newAccess,
    String? error,
  });

  $EntryAccessCopyWith<$Res>? get newAccess;
}

/// @nodoc
class _$ChangeAccessEntryResultCopyWithImpl<
  $Res,
  $Val extends ChangeAccessEntryResult
>
    implements $ChangeAccessEntryResultCopyWith<$Res> {
  _$ChangeAccessEntryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeAccessEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? success = null,
    Object? newAccess = freezed,
    Object? error = freezed,
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
            newAccess: freezed == newAccess
                ? _value.newAccess
                : newAccess // ignore: cast_nullable_to_non_nullable
                      as EntryAccess?,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of ChangeAccessEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntryAccessCopyWith<$Res>? get newAccess {
    if (_value.newAccess == null) {
      return null;
    }

    return $EntryAccessCopyWith<$Res>(_value.newAccess!, (value) {
      return _then(_value.copyWith(newAccess: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangeAccessEntryResultImplCopyWith<$Res>
    implements $ChangeAccessEntryResultCopyWith<$Res> {
  factory _$$ChangeAccessEntryResultImplCopyWith(
    _$ChangeAccessEntryResultImpl value,
    $Res Function(_$ChangeAccessEntryResultImpl) then,
  ) = __$$ChangeAccessEntryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String entryId,
    bool success,
    EntryAccess? newAccess,
    String? error,
  });

  @override
  $EntryAccessCopyWith<$Res>? get newAccess;
}

/// @nodoc
class __$$ChangeAccessEntryResultImplCopyWithImpl<$Res>
    extends
        _$ChangeAccessEntryResultCopyWithImpl<
          $Res,
          _$ChangeAccessEntryResultImpl
        >
    implements _$$ChangeAccessEntryResultImplCopyWith<$Res> {
  __$$ChangeAccessEntryResultImplCopyWithImpl(
    _$ChangeAccessEntryResultImpl _value,
    $Res Function(_$ChangeAccessEntryResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangeAccessEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? success = null,
    Object? newAccess = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$ChangeAccessEntryResultImpl(
        entryId: null == entryId
            ? _value.entryId
            : entryId // ignore: cast_nullable_to_non_nullable
                  as String,
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        newAccess: freezed == newAccess
            ? _value.newAccess
            : newAccess // ignore: cast_nullable_to_non_nullable
                  as EntryAccess?,
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
class _$ChangeAccessEntryResultImpl implements _ChangeAccessEntryResult {
  const _$ChangeAccessEntryResultImpl({
    required this.entryId,
    required this.success,
    this.newAccess,
    this.error,
  });

  factory _$ChangeAccessEntryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeAccessEntryResultImplFromJson(json);

  @override
  final String entryId;
  @override
  final bool success;
  @override
  final EntryAccess? newAccess;
  @override
  final String? error;

  @override
  String toString() {
    return 'ChangeAccessEntryResult(entryId: $entryId, success: $success, newAccess: $newAccess, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAccessEntryResultImpl &&
            (identical(other.entryId, entryId) || other.entryId == entryId) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.newAccess, newAccess) ||
                other.newAccess == newAccess) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, entryId, success, newAccess, error);

  /// Create a copy of ChangeAccessEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAccessEntryResultImplCopyWith<_$ChangeAccessEntryResultImpl>
  get copyWith =>
      __$$ChangeAccessEntryResultImplCopyWithImpl<
        _$ChangeAccessEntryResultImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeAccessEntryResultImplToJson(this);
  }
}

abstract class _ChangeAccessEntryResult implements ChangeAccessEntryResult {
  const factory _ChangeAccessEntryResult({
    required final String entryId,
    required final bool success,
    final EntryAccess? newAccess,
    final String? error,
  }) = _$ChangeAccessEntryResultImpl;

  factory _ChangeAccessEntryResult.fromJson(Map<String, dynamic> json) =
      _$ChangeAccessEntryResultImpl.fromJson;

  @override
  String get entryId;
  @override
  bool get success;
  @override
  EntryAccess? get newAccess;
  @override
  String? get error;

  /// Create a copy of ChangeAccessEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeAccessEntryResultImplCopyWith<_$ChangeAccessEntryResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ChangeAccessResult _$ChangeAccessResultFromJson(Map<String, dynamic> json) {
  return _ChangeAccessResult.fromJson(json);
}

/// @nodoc
mixin _$ChangeAccessResult {
  List<ChangeAccessEntryResult> get results =>
      throw _privateConstructorUsedError;
  int get totalProcessed => throw _privateConstructorUsedError;
  int get successfulCount => throw _privateConstructorUsedError;
  int get failedCount => throw _privateConstructorUsedError;

  /// Serializes this ChangeAccessResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangeAccessResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeAccessResultCopyWith<ChangeAccessResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeAccessResultCopyWith<$Res> {
  factory $ChangeAccessResultCopyWith(
    ChangeAccessResult value,
    $Res Function(ChangeAccessResult) then,
  ) = _$ChangeAccessResultCopyWithImpl<$Res, ChangeAccessResult>;
  @useResult
  $Res call({
    List<ChangeAccessEntryResult> results,
    int totalProcessed,
    int successfulCount,
    int failedCount,
  });
}

/// @nodoc
class _$ChangeAccessResultCopyWithImpl<$Res, $Val extends ChangeAccessResult>
    implements $ChangeAccessResultCopyWith<$Res> {
  _$ChangeAccessResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeAccessResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? totalProcessed = null,
    Object? successfulCount = null,
    Object? failedCount = null,
  }) {
    return _then(
      _value.copyWith(
            results: null == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as List<ChangeAccessEntryResult>,
            totalProcessed: null == totalProcessed
                ? _value.totalProcessed
                : totalProcessed // ignore: cast_nullable_to_non_nullable
                      as int,
            successfulCount: null == successfulCount
                ? _value.successfulCount
                : successfulCount // ignore: cast_nullable_to_non_nullable
                      as int,
            failedCount: null == failedCount
                ? _value.failedCount
                : failedCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChangeAccessResultImplCopyWith<$Res>
    implements $ChangeAccessResultCopyWith<$Res> {
  factory _$$ChangeAccessResultImplCopyWith(
    _$ChangeAccessResultImpl value,
    $Res Function(_$ChangeAccessResultImpl) then,
  ) = __$$ChangeAccessResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ChangeAccessEntryResult> results,
    int totalProcessed,
    int successfulCount,
    int failedCount,
  });
}

/// @nodoc
class __$$ChangeAccessResultImplCopyWithImpl<$Res>
    extends _$ChangeAccessResultCopyWithImpl<$Res, _$ChangeAccessResultImpl>
    implements _$$ChangeAccessResultImplCopyWith<$Res> {
  __$$ChangeAccessResultImplCopyWithImpl(
    _$ChangeAccessResultImpl _value,
    $Res Function(_$ChangeAccessResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangeAccessResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? totalProcessed = null,
    Object? successfulCount = null,
    Object? failedCount = null,
  }) {
    return _then(
      _$ChangeAccessResultImpl(
        results: null == results
            ? _value._results
            : results // ignore: cast_nullable_to_non_nullable
                  as List<ChangeAccessEntryResult>,
        totalProcessed: null == totalProcessed
            ? _value.totalProcessed
            : totalProcessed // ignore: cast_nullable_to_non_nullable
                  as int,
        successfulCount: null == successfulCount
            ? _value.successfulCount
            : successfulCount // ignore: cast_nullable_to_non_nullable
                  as int,
        failedCount: null == failedCount
            ? _value.failedCount
            : failedCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeAccessResultImpl implements _ChangeAccessResult {
  const _$ChangeAccessResultImpl({
    required final List<ChangeAccessEntryResult> results,
    required this.totalProcessed,
    required this.successfulCount,
    required this.failedCount,
  }) : _results = results;

  factory _$ChangeAccessResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeAccessResultImplFromJson(json);

  final List<ChangeAccessEntryResult> _results;
  @override
  List<ChangeAccessEntryResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int totalProcessed;
  @override
  final int successfulCount;
  @override
  final int failedCount;

  @override
  String toString() {
    return 'ChangeAccessResult(results: $results, totalProcessed: $totalProcessed, successfulCount: $successfulCount, failedCount: $failedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAccessResultImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalProcessed, totalProcessed) ||
                other.totalProcessed == totalProcessed) &&
            (identical(other.successfulCount, successfulCount) ||
                other.successfulCount == successfulCount) &&
            (identical(other.failedCount, failedCount) ||
                other.failedCount == failedCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_results),
    totalProcessed,
    successfulCount,
    failedCount,
  );

  /// Create a copy of ChangeAccessResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAccessResultImplCopyWith<_$ChangeAccessResultImpl> get copyWith =>
      __$$ChangeAccessResultImplCopyWithImpl<_$ChangeAccessResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeAccessResultImplToJson(this);
  }
}

abstract class _ChangeAccessResult implements ChangeAccessResult {
  const factory _ChangeAccessResult({
    required final List<ChangeAccessEntryResult> results,
    required final int totalProcessed,
    required final int successfulCount,
    required final int failedCount,
  }) = _$ChangeAccessResultImpl;

  factory _ChangeAccessResult.fromJson(Map<String, dynamic> json) =
      _$ChangeAccessResultImpl.fromJson;

  @override
  List<ChangeAccessEntryResult> get results;
  @override
  int get totalProcessed;
  @override
  int get successfulCount;
  @override
  int get failedCount;

  /// Create a copy of ChangeAccessResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeAccessResultImplCopyWith<_$ChangeAccessResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
