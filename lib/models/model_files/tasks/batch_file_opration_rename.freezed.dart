// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'batch_file_opration_rename.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BatchRenameResult _$BatchRenameResultFromJson(Map<String, dynamic> json) {
  return _BatchRenameResult.fromJson(json);
}

/// @nodoc
mixin _$BatchRenameResult {
  /// Original entry ID
  String get entryId => throw _privateConstructorUsedError;

  /// Original name before rename
  String get originalName => throw _privateConstructorUsedError;

  /// New name after rename attempt
  String get newName => throw _privateConstructorUsedError;

  /// Whether the rename was successful
  bool get success => throw _privateConstructorUsedError;

  /// Error message if rename failed
  String? get error => throw _privateConstructorUsedError;

  /// Updated entry if rename succeeded
  FsEntry? get updatedEntry => throw _privateConstructorUsedError;

  /// Serializes this BatchRenameResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchRenameResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchRenameResultCopyWith<BatchRenameResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchRenameResultCopyWith<$Res> {
  factory $BatchRenameResultCopyWith(
    BatchRenameResult value,
    $Res Function(BatchRenameResult) then,
  ) = _$BatchRenameResultCopyWithImpl<$Res, BatchRenameResult>;
  @useResult
  $Res call({
    String entryId,
    String originalName,
    String newName,
    bool success,
    String? error,
    FsEntry? updatedEntry,
  });

  $FsEntryCopyWith<$Res>? get updatedEntry;
}

/// @nodoc
class _$BatchRenameResultCopyWithImpl<$Res, $Val extends BatchRenameResult>
    implements $BatchRenameResultCopyWith<$Res> {
  _$BatchRenameResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchRenameResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? originalName = null,
    Object? newName = null,
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
            originalName: null == originalName
                ? _value.originalName
                : originalName // ignore: cast_nullable_to_non_nullable
                      as String,
            newName: null == newName
                ? _value.newName
                : newName // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of BatchRenameResult
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
abstract class _$$BatchRenameResultImplCopyWith<$Res>
    implements $BatchRenameResultCopyWith<$Res> {
  factory _$$BatchRenameResultImplCopyWith(
    _$BatchRenameResultImpl value,
    $Res Function(_$BatchRenameResultImpl) then,
  ) = __$$BatchRenameResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String entryId,
    String originalName,
    String newName,
    bool success,
    String? error,
    FsEntry? updatedEntry,
  });

  @override
  $FsEntryCopyWith<$Res>? get updatedEntry;
}

/// @nodoc
class __$$BatchRenameResultImplCopyWithImpl<$Res>
    extends _$BatchRenameResultCopyWithImpl<$Res, _$BatchRenameResultImpl>
    implements _$$BatchRenameResultImplCopyWith<$Res> {
  __$$BatchRenameResultImplCopyWithImpl(
    _$BatchRenameResultImpl _value,
    $Res Function(_$BatchRenameResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchRenameResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? originalName = null,
    Object? newName = null,
    Object? success = null,
    Object? error = freezed,
    Object? updatedEntry = freezed,
  }) {
    return _then(
      _$BatchRenameResultImpl(
        entryId: null == entryId
            ? _value.entryId
            : entryId // ignore: cast_nullable_to_non_nullable
                  as String,
        originalName: null == originalName
            ? _value.originalName
            : originalName // ignore: cast_nullable_to_non_nullable
                  as String,
        newName: null == newName
            ? _value.newName
            : newName // ignore: cast_nullable_to_non_nullable
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
class _$BatchRenameResultImpl implements _BatchRenameResult {
  const _$BatchRenameResultImpl({
    required this.entryId,
    required this.originalName,
    required this.newName,
    required this.success,
    this.error,
    this.updatedEntry,
  });

  factory _$BatchRenameResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchRenameResultImplFromJson(json);

  /// Original entry ID
  @override
  final String entryId;

  /// Original name before rename
  @override
  final String originalName;

  /// New name after rename attempt
  @override
  final String newName;

  /// Whether the rename was successful
  @override
  final bool success;

  /// Error message if rename failed
  @override
  final String? error;

  /// Updated entry if rename succeeded
  @override
  final FsEntry? updatedEntry;

  @override
  String toString() {
    return 'BatchRenameResult(entryId: $entryId, originalName: $originalName, newName: $newName, success: $success, error: $error, updatedEntry: $updatedEntry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchRenameResultImpl &&
            (identical(other.entryId, entryId) || other.entryId == entryId) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.newName, newName) || other.newName == newName) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.updatedEntry, updatedEntry) ||
                other.updatedEntry == updatedEntry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    entryId,
    originalName,
    newName,
    success,
    error,
    updatedEntry,
  );

  /// Create a copy of BatchRenameResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchRenameResultImplCopyWith<_$BatchRenameResultImpl> get copyWith =>
      __$$BatchRenameResultImplCopyWithImpl<_$BatchRenameResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchRenameResultImplToJson(this);
  }
}

abstract class _BatchRenameResult implements BatchRenameResult {
  const factory _BatchRenameResult({
    required final String entryId,
    required final String originalName,
    required final String newName,
    required final bool success,
    final String? error,
    final FsEntry? updatedEntry,
  }) = _$BatchRenameResultImpl;

  factory _BatchRenameResult.fromJson(Map<String, dynamic> json) =
      _$BatchRenameResultImpl.fromJson;

  /// Original entry ID
  @override
  String get entryId;

  /// Original name before rename
  @override
  String get originalName;

  /// New name after rename attempt
  @override
  String get newName;

  /// Whether the rename was successful
  @override
  bool get success;

  /// Error message if rename failed
  @override
  String? get error;

  /// Updated entry if rename succeeded
  @override
  FsEntry? get updatedEntry;

  /// Create a copy of BatchRenameResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchRenameResultImplCopyWith<_$BatchRenameResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BatchFileRenameResult _$BatchFileRenameResultFromJson(
  Map<String, dynamic> json,
) {
  return _BatchFileRenameResult.fromJson(json);
}

/// @nodoc
mixin _$BatchFileRenameResult {
  /// Results for each individual rename operation
  List<BatchRenameResult> get results => throw _privateConstructorUsedError;

  /// Total number of operations attempted
  int get totalCount => throw _privateConstructorUsedError;

  /// Number of successful renames
  int get successCount => throw _privateConstructorUsedError;

  /// Number of failed renames
  int get failureCount => throw _privateConstructorUsedError;

  /// Serializes this BatchFileRenameResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchFileRenameResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchFileRenameResultCopyWith<BatchFileRenameResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchFileRenameResultCopyWith<$Res> {
  factory $BatchFileRenameResultCopyWith(
    BatchFileRenameResult value,
    $Res Function(BatchFileRenameResult) then,
  ) = _$BatchFileRenameResultCopyWithImpl<$Res, BatchFileRenameResult>;
  @useResult
  $Res call({
    List<BatchRenameResult> results,
    int totalCount,
    int successCount,
    int failureCount,
  });
}

/// @nodoc
class _$BatchFileRenameResultCopyWithImpl<
  $Res,
  $Val extends BatchFileRenameResult
>
    implements $BatchFileRenameResultCopyWith<$Res> {
  _$BatchFileRenameResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchFileRenameResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? totalCount = null,
    Object? successCount = null,
    Object? failureCount = null,
  }) {
    return _then(
      _value.copyWith(
            results: null == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as List<BatchRenameResult>,
            totalCount: null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$BatchFileRenameResultImplCopyWith<$Res>
    implements $BatchFileRenameResultCopyWith<$Res> {
  factory _$$BatchFileRenameResultImplCopyWith(
    _$BatchFileRenameResultImpl value,
    $Res Function(_$BatchFileRenameResultImpl) then,
  ) = __$$BatchFileRenameResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<BatchRenameResult> results,
    int totalCount,
    int successCount,
    int failureCount,
  });
}

/// @nodoc
class __$$BatchFileRenameResultImplCopyWithImpl<$Res>
    extends
        _$BatchFileRenameResultCopyWithImpl<$Res, _$BatchFileRenameResultImpl>
    implements _$$BatchFileRenameResultImplCopyWith<$Res> {
  __$$BatchFileRenameResultImplCopyWithImpl(
    _$BatchFileRenameResultImpl _value,
    $Res Function(_$BatchFileRenameResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchFileRenameResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? totalCount = null,
    Object? successCount = null,
    Object? failureCount = null,
  }) {
    return _then(
      _$BatchFileRenameResultImpl(
        results: null == results
            ? _value._results
            : results // ignore: cast_nullable_to_non_nullable
                  as List<BatchRenameResult>,
        totalCount: null == totalCount
            ? _value.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$BatchFileRenameResultImpl implements _BatchFileRenameResult {
  const _$BatchFileRenameResultImpl({
    final List<BatchRenameResult> results = const <BatchRenameResult>[],
    this.totalCount = 0,
    this.successCount = 0,
    this.failureCount = 0,
  }) : _results = results;

  factory _$BatchFileRenameResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchFileRenameResultImplFromJson(json);

  /// Results for each individual rename operation
  final List<BatchRenameResult> _results;

  /// Results for each individual rename operation
  @override
  @JsonKey()
  List<BatchRenameResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  /// Total number of operations attempted
  @override
  @JsonKey()
  final int totalCount;

  /// Number of successful renames
  @override
  @JsonKey()
  final int successCount;

  /// Number of failed renames
  @override
  @JsonKey()
  final int failureCount;

  @override
  String toString() {
    return 'BatchFileRenameResult(results: $results, totalCount: $totalCount, successCount: $successCount, failureCount: $failureCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchFileRenameResultImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
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
    totalCount,
    successCount,
    failureCount,
  );

  /// Create a copy of BatchFileRenameResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchFileRenameResultImplCopyWith<_$BatchFileRenameResultImpl>
  get copyWith =>
      __$$BatchFileRenameResultImplCopyWithImpl<_$BatchFileRenameResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchFileRenameResultImplToJson(this);
  }
}

abstract class _BatchFileRenameResult implements BatchFileRenameResult {
  const factory _BatchFileRenameResult({
    final List<BatchRenameResult> results,
    final int totalCount,
    final int successCount,
    final int failureCount,
  }) = _$BatchFileRenameResultImpl;

  factory _BatchFileRenameResult.fromJson(Map<String, dynamic> json) =
      _$BatchFileRenameResultImpl.fromJson;

  /// Results for each individual rename operation
  @override
  List<BatchRenameResult> get results;

  /// Total number of operations attempted
  @override
  int get totalCount;

  /// Number of successful renames
  @override
  int get successCount;

  /// Number of failed renames
  @override
  int get failureCount;

  /// Create a copy of BatchFileRenameResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchFileRenameResultImplCopyWith<_$BatchFileRenameResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}

RenameInstruction _$RenameInstructionFromJson(Map<String, dynamic> json) {
  return _RenameInstruction.fromJson(json);
}

/// @nodoc
mixin _$RenameInstruction {
  /// ID of the entry to rename
  String get entryId => throw _privateConstructorUsedError;

  /// New name for the entry
  String get newName => throw _privateConstructorUsedError;

  /// Serializes this RenameInstruction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RenameInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RenameInstructionCopyWith<RenameInstruction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenameInstructionCopyWith<$Res> {
  factory $RenameInstructionCopyWith(
    RenameInstruction value,
    $Res Function(RenameInstruction) then,
  ) = _$RenameInstructionCopyWithImpl<$Res, RenameInstruction>;
  @useResult
  $Res call({String entryId, String newName});
}

/// @nodoc
class _$RenameInstructionCopyWithImpl<$Res, $Val extends RenameInstruction>
    implements $RenameInstructionCopyWith<$Res> {
  _$RenameInstructionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RenameInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? entryId = null, Object? newName = null}) {
    return _then(
      _value.copyWith(
            entryId: null == entryId
                ? _value.entryId
                : entryId // ignore: cast_nullable_to_non_nullable
                      as String,
            newName: null == newName
                ? _value.newName
                : newName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RenameInstructionImplCopyWith<$Res>
    implements $RenameInstructionCopyWith<$Res> {
  factory _$$RenameInstructionImplCopyWith(
    _$RenameInstructionImpl value,
    $Res Function(_$RenameInstructionImpl) then,
  ) = __$$RenameInstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String entryId, String newName});
}

/// @nodoc
class __$$RenameInstructionImplCopyWithImpl<$Res>
    extends _$RenameInstructionCopyWithImpl<$Res, _$RenameInstructionImpl>
    implements _$$RenameInstructionImplCopyWith<$Res> {
  __$$RenameInstructionImplCopyWithImpl(
    _$RenameInstructionImpl _value,
    $Res Function(_$RenameInstructionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RenameInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? entryId = null, Object? newName = null}) {
    return _then(
      _$RenameInstructionImpl(
        entryId: null == entryId
            ? _value.entryId
            : entryId // ignore: cast_nullable_to_non_nullable
                  as String,
        newName: null == newName
            ? _value.newName
            : newName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RenameInstructionImpl implements _RenameInstruction {
  const _$RenameInstructionImpl({required this.entryId, required this.newName});

  factory _$RenameInstructionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RenameInstructionImplFromJson(json);

  /// ID of the entry to rename
  @override
  final String entryId;

  /// New name for the entry
  @override
  final String newName;

  @override
  String toString() {
    return 'RenameInstruction(entryId: $entryId, newName: $newName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenameInstructionImpl &&
            (identical(other.entryId, entryId) || other.entryId == entryId) &&
            (identical(other.newName, newName) || other.newName == newName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entryId, newName);

  /// Create a copy of RenameInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RenameInstructionImplCopyWith<_$RenameInstructionImpl> get copyWith =>
      __$$RenameInstructionImplCopyWithImpl<_$RenameInstructionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RenameInstructionImplToJson(this);
  }
}

abstract class _RenameInstruction implements RenameInstruction {
  const factory _RenameInstruction({
    required final String entryId,
    required final String newName,
  }) = _$RenameInstructionImpl;

  factory _RenameInstruction.fromJson(Map<String, dynamic> json) =
      _$RenameInstructionImpl.fromJson;

  /// ID of the entry to rename
  @override
  String get entryId;

  /// New name for the entry
  @override
  String get newName;

  /// Create a copy of RenameInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RenameInstructionImplCopyWith<_$RenameInstructionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BatchFileRenameTask _$BatchFileRenameTaskFromJson(Map<String, dynamic> json) {
  return _BatchFileRenameTask.fromJson(json);
}

/// @nodoc
mixin _$BatchFileRenameTask {
  /// List of rename instructions (entry ID + new name)
  List<RenameInstruction> get instructions =>
      throw _privateConstructorUsedError;

  /// Serializes this BatchFileRenameTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchFileRenameTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchFileRenameTaskCopyWith<BatchFileRenameTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchFileRenameTaskCopyWith<$Res> {
  factory $BatchFileRenameTaskCopyWith(
    BatchFileRenameTask value,
    $Res Function(BatchFileRenameTask) then,
  ) = _$BatchFileRenameTaskCopyWithImpl<$Res, BatchFileRenameTask>;
  @useResult
  $Res call({List<RenameInstruction> instructions});
}

/// @nodoc
class _$BatchFileRenameTaskCopyWithImpl<$Res, $Val extends BatchFileRenameTask>
    implements $BatchFileRenameTaskCopyWith<$Res> {
  _$BatchFileRenameTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchFileRenameTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? instructions = null}) {
    return _then(
      _value.copyWith(
            instructions: null == instructions
                ? _value.instructions
                : instructions // ignore: cast_nullable_to_non_nullable
                      as List<RenameInstruction>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BatchFileRenameTaskImplCopyWith<$Res>
    implements $BatchFileRenameTaskCopyWith<$Res> {
  factory _$$BatchFileRenameTaskImplCopyWith(
    _$BatchFileRenameTaskImpl value,
    $Res Function(_$BatchFileRenameTaskImpl) then,
  ) = __$$BatchFileRenameTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RenameInstruction> instructions});
}

/// @nodoc
class __$$BatchFileRenameTaskImplCopyWithImpl<$Res>
    extends _$BatchFileRenameTaskCopyWithImpl<$Res, _$BatchFileRenameTaskImpl>
    implements _$$BatchFileRenameTaskImplCopyWith<$Res> {
  __$$BatchFileRenameTaskImplCopyWithImpl(
    _$BatchFileRenameTaskImpl _value,
    $Res Function(_$BatchFileRenameTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchFileRenameTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? instructions = null}) {
    return _then(
      _$BatchFileRenameTaskImpl(
        instructions: null == instructions
            ? _value._instructions
            : instructions // ignore: cast_nullable_to_non_nullable
                  as List<RenameInstruction>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchFileRenameTaskImpl extends _BatchFileRenameTask {
  const _$BatchFileRenameTaskImpl({
    required final List<RenameInstruction> instructions,
  }) : _instructions = instructions,
       super._();

  factory _$BatchFileRenameTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchFileRenameTaskImplFromJson(json);

  /// List of rename instructions (entry ID + new name)
  final List<RenameInstruction> _instructions;

  /// List of rename instructions (entry ID + new name)
  @override
  List<RenameInstruction> get instructions {
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  @override
  String toString() {
    return 'BatchFileRenameTask(instructions: $instructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchFileRenameTaskImpl &&
            const DeepCollectionEquality().equals(
              other._instructions,
              _instructions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_instructions),
  );

  /// Create a copy of BatchFileRenameTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchFileRenameTaskImplCopyWith<_$BatchFileRenameTaskImpl> get copyWith =>
      __$$BatchFileRenameTaskImplCopyWithImpl<_$BatchFileRenameTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchFileRenameTaskImplToJson(this);
  }
}

abstract class _BatchFileRenameTask extends BatchFileRenameTask {
  const factory _BatchFileRenameTask({
    required final List<RenameInstruction> instructions,
  }) = _$BatchFileRenameTaskImpl;
  const _BatchFileRenameTask._() : super._();

  factory _BatchFileRenameTask.fromJson(Map<String, dynamic> json) =
      _$BatchFileRenameTaskImpl.fromJson;

  /// List of rename instructions (entry ID + new name)
  @override
  List<RenameInstruction> get instructions;

  /// Create a copy of BatchFileRenameTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchFileRenameTaskImplCopyWith<_$BatchFileRenameTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
