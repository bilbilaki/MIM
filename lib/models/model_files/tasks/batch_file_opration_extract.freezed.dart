// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'batch_file_opration_extract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BatchFileExtractTask _$BatchFileExtractTaskFromJson(Map<String, dynamic> json) {
  return _BatchFileExtractTask.fromJson(json);
}

/// @nodoc
mixin _$BatchFileExtractTask {
  /// IDs of archive files to extract
  List<String> get archiveEntryIds => throw _privateConstructorUsedError;

  /// Target folder ID where archives will be extracted
  String get targetFolderId => throw _privateConstructorUsedError;

  /// Whether to create subfolders for each archive
  bool get createSubfolders => throw _privateConstructorUsedError;

  /// Conflict resolution policy
  ExtractConflictPolicy get conflictPolicy =>
      throw _privateConstructorUsedError;

  /// Serializes this BatchFileExtractTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchFileExtractTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchFileExtractTaskCopyWith<BatchFileExtractTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchFileExtractTaskCopyWith<$Res> {
  factory $BatchFileExtractTaskCopyWith(
    BatchFileExtractTask value,
    $Res Function(BatchFileExtractTask) then,
  ) = _$BatchFileExtractTaskCopyWithImpl<$Res, BatchFileExtractTask>;
  @useResult
  $Res call({
    List<String> archiveEntryIds,
    String targetFolderId,
    bool createSubfolders,
    ExtractConflictPolicy conflictPolicy,
  });
}

/// @nodoc
class _$BatchFileExtractTaskCopyWithImpl<
  $Res,
  $Val extends BatchFileExtractTask
>
    implements $BatchFileExtractTaskCopyWith<$Res> {
  _$BatchFileExtractTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchFileExtractTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? archiveEntryIds = null,
    Object? targetFolderId = null,
    Object? createSubfolders = null,
    Object? conflictPolicy = null,
  }) {
    return _then(
      _value.copyWith(
            archiveEntryIds: null == archiveEntryIds
                ? _value.archiveEntryIds
                : archiveEntryIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            targetFolderId: null == targetFolderId
                ? _value.targetFolderId
                : targetFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            createSubfolders: null == createSubfolders
                ? _value.createSubfolders
                : createSubfolders // ignore: cast_nullable_to_non_nullable
                      as bool,
            conflictPolicy: null == conflictPolicy
                ? _value.conflictPolicy
                : conflictPolicy // ignore: cast_nullable_to_non_nullable
                      as ExtractConflictPolicy,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BatchFileExtractTaskImplCopyWith<$Res>
    implements $BatchFileExtractTaskCopyWith<$Res> {
  factory _$$BatchFileExtractTaskImplCopyWith(
    _$BatchFileExtractTaskImpl value,
    $Res Function(_$BatchFileExtractTaskImpl) then,
  ) = __$$BatchFileExtractTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> archiveEntryIds,
    String targetFolderId,
    bool createSubfolders,
    ExtractConflictPolicy conflictPolicy,
  });
}

/// @nodoc
class __$$BatchFileExtractTaskImplCopyWithImpl<$Res>
    extends _$BatchFileExtractTaskCopyWithImpl<$Res, _$BatchFileExtractTaskImpl>
    implements _$$BatchFileExtractTaskImplCopyWith<$Res> {
  __$$BatchFileExtractTaskImplCopyWithImpl(
    _$BatchFileExtractTaskImpl _value,
    $Res Function(_$BatchFileExtractTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchFileExtractTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? archiveEntryIds = null,
    Object? targetFolderId = null,
    Object? createSubfolders = null,
    Object? conflictPolicy = null,
  }) {
    return _then(
      _$BatchFileExtractTaskImpl(
        archiveEntryIds: null == archiveEntryIds
            ? _value._archiveEntryIds
            : archiveEntryIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        targetFolderId: null == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        createSubfolders: null == createSubfolders
            ? _value.createSubfolders
            : createSubfolders // ignore: cast_nullable_to_non_nullable
                  as bool,
        conflictPolicy: null == conflictPolicy
            ? _value.conflictPolicy
            : conflictPolicy // ignore: cast_nullable_to_non_nullable
                  as ExtractConflictPolicy,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchFileExtractTaskImpl extends _BatchFileExtractTask {
  const _$BatchFileExtractTaskImpl({
    required final List<String> archiveEntryIds,
    required this.targetFolderId,
    this.createSubfolders = true,
    this.conflictPolicy = ExtractConflictPolicy.rename,
  }) : _archiveEntryIds = archiveEntryIds,
       super._();

  factory _$BatchFileExtractTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchFileExtractTaskImplFromJson(json);

  /// IDs of archive files to extract
  final List<String> _archiveEntryIds;

  /// IDs of archive files to extract
  @override
  List<String> get archiveEntryIds {
    if (_archiveEntryIds is EqualUnmodifiableListView) return _archiveEntryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_archiveEntryIds);
  }

  /// Target folder ID where archives will be extracted
  @override
  final String targetFolderId;

  /// Whether to create subfolders for each archive
  @override
  @JsonKey()
  final bool createSubfolders;

  /// Conflict resolution policy
  @override
  @JsonKey()
  final ExtractConflictPolicy conflictPolicy;

  @override
  String toString() {
    return 'BatchFileExtractTask(archiveEntryIds: $archiveEntryIds, targetFolderId: $targetFolderId, createSubfolders: $createSubfolders, conflictPolicy: $conflictPolicy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchFileExtractTaskImpl &&
            const DeepCollectionEquality().equals(
              other._archiveEntryIds,
              _archiveEntryIds,
            ) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            (identical(other.createSubfolders, createSubfolders) ||
                other.createSubfolders == createSubfolders) &&
            (identical(other.conflictPolicy, conflictPolicy) ||
                other.conflictPolicy == conflictPolicy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_archiveEntryIds),
    targetFolderId,
    createSubfolders,
    conflictPolicy,
  );

  /// Create a copy of BatchFileExtractTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchFileExtractTaskImplCopyWith<_$BatchFileExtractTaskImpl>
  get copyWith =>
      __$$BatchFileExtractTaskImplCopyWithImpl<_$BatchFileExtractTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchFileExtractTaskImplToJson(this);
  }
}

abstract class _BatchFileExtractTask extends BatchFileExtractTask {
  const factory _BatchFileExtractTask({
    required final List<String> archiveEntryIds,
    required final String targetFolderId,
    final bool createSubfolders,
    final ExtractConflictPolicy conflictPolicy,
  }) = _$BatchFileExtractTaskImpl;
  const _BatchFileExtractTask._() : super._();

  factory _BatchFileExtractTask.fromJson(Map<String, dynamic> json) =
      _$BatchFileExtractTaskImpl.fromJson;

  /// IDs of archive files to extract
  @override
  List<String> get archiveEntryIds;

  /// Target folder ID where archives will be extracted
  @override
  String get targetFolderId;

  /// Whether to create subfolders for each archive
  @override
  bool get createSubfolders;

  /// Conflict resolution policy
  @override
  ExtractConflictPolicy get conflictPolicy;

  /// Create a copy of BatchFileExtractTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchFileExtractTaskImplCopyWith<_$BatchFileExtractTaskImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ArchiveExtractResult _$ArchiveExtractResultFromJson(Map<String, dynamic> json) {
  return _ArchiveExtractResult.fromJson(json);
}

/// @nodoc
mixin _$ArchiveExtractResult {
  /// ID of the archive that was processed
  String get archiveId => throw _privateConstructorUsedError;

  /// Whether extraction was successful
  bool get success => throw _privateConstructorUsedError;

  /// List of extracted entries (if successful)
  List<String> get extractedEntries => throw _privateConstructorUsedError;

  /// Destination folder ID where files were extracted
  String? get destinationFolderId => throw _privateConstructorUsedError;

  /// Error message if extraction failed
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this ArchiveExtractResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArchiveExtractResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArchiveExtractResultCopyWith<ArchiveExtractResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchiveExtractResultCopyWith<$Res> {
  factory $ArchiveExtractResultCopyWith(
    ArchiveExtractResult value,
    $Res Function(ArchiveExtractResult) then,
  ) = _$ArchiveExtractResultCopyWithImpl<$Res, ArchiveExtractResult>;
  @useResult
  $Res call({
    String archiveId,
    bool success,
    List<String> extractedEntries,
    String? destinationFolderId,
    String? error,
  });
}

/// @nodoc
class _$ArchiveExtractResultCopyWithImpl<
  $Res,
  $Val extends ArchiveExtractResult
>
    implements $ArchiveExtractResultCopyWith<$Res> {
  _$ArchiveExtractResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArchiveExtractResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? archiveId = null,
    Object? success = null,
    Object? extractedEntries = null,
    Object? destinationFolderId = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            archiveId: null == archiveId
                ? _value.archiveId
                : archiveId // ignore: cast_nullable_to_non_nullable
                      as String,
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            extractedEntries: null == extractedEntries
                ? _value.extractedEntries
                : extractedEntries // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            destinationFolderId: freezed == destinationFolderId
                ? _value.destinationFolderId
                : destinationFolderId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ArchiveExtractResultImplCopyWith<$Res>
    implements $ArchiveExtractResultCopyWith<$Res> {
  factory _$$ArchiveExtractResultImplCopyWith(
    _$ArchiveExtractResultImpl value,
    $Res Function(_$ArchiveExtractResultImpl) then,
  ) = __$$ArchiveExtractResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String archiveId,
    bool success,
    List<String> extractedEntries,
    String? destinationFolderId,
    String? error,
  });
}

/// @nodoc
class __$$ArchiveExtractResultImplCopyWithImpl<$Res>
    extends _$ArchiveExtractResultCopyWithImpl<$Res, _$ArchiveExtractResultImpl>
    implements _$$ArchiveExtractResultImplCopyWith<$Res> {
  __$$ArchiveExtractResultImplCopyWithImpl(
    _$ArchiveExtractResultImpl _value,
    $Res Function(_$ArchiveExtractResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchiveExtractResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? archiveId = null,
    Object? success = null,
    Object? extractedEntries = null,
    Object? destinationFolderId = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$ArchiveExtractResultImpl(
        archiveId: null == archiveId
            ? _value.archiveId
            : archiveId // ignore: cast_nullable_to_non_nullable
                  as String,
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        extractedEntries: null == extractedEntries
            ? _value._extractedEntries
            : extractedEntries // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        destinationFolderId: freezed == destinationFolderId
            ? _value.destinationFolderId
            : destinationFolderId // ignore: cast_nullable_to_non_nullable
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
class _$ArchiveExtractResultImpl implements _ArchiveExtractResult {
  const _$ArchiveExtractResultImpl({
    required this.archiveId,
    required this.success,
    final List<String> extractedEntries = const [],
    this.destinationFolderId,
    this.error,
  }) : _extractedEntries = extractedEntries;

  factory _$ArchiveExtractResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArchiveExtractResultImplFromJson(json);

  /// ID of the archive that was processed
  @override
  final String archiveId;

  /// Whether extraction was successful
  @override
  final bool success;

  /// List of extracted entries (if successful)
  final List<String> _extractedEntries;

  /// List of extracted entries (if successful)
  @override
  @JsonKey()
  List<String> get extractedEntries {
    if (_extractedEntries is EqualUnmodifiableListView)
      return _extractedEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extractedEntries);
  }

  /// Destination folder ID where files were extracted
  @override
  final String? destinationFolderId;

  /// Error message if extraction failed
  @override
  final String? error;

  @override
  String toString() {
    return 'ArchiveExtractResult(archiveId: $archiveId, success: $success, extractedEntries: $extractedEntries, destinationFolderId: $destinationFolderId, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArchiveExtractResultImpl &&
            (identical(other.archiveId, archiveId) ||
                other.archiveId == archiveId) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(
              other._extractedEntries,
              _extractedEntries,
            ) &&
            (identical(other.destinationFolderId, destinationFolderId) ||
                other.destinationFolderId == destinationFolderId) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    archiveId,
    success,
    const DeepCollectionEquality().hash(_extractedEntries),
    destinationFolderId,
    error,
  );

  /// Create a copy of ArchiveExtractResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArchiveExtractResultImplCopyWith<_$ArchiveExtractResultImpl>
  get copyWith =>
      __$$ArchiveExtractResultImplCopyWithImpl<_$ArchiveExtractResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ArchiveExtractResultImplToJson(this);
  }
}

abstract class _ArchiveExtractResult implements ArchiveExtractResult {
  const factory _ArchiveExtractResult({
    required final String archiveId,
    required final bool success,
    final List<String> extractedEntries,
    final String? destinationFolderId,
    final String? error,
  }) = _$ArchiveExtractResultImpl;

  factory _ArchiveExtractResult.fromJson(Map<String, dynamic> json) =
      _$ArchiveExtractResultImpl.fromJson;

  /// ID of the archive that was processed
  @override
  String get archiveId;

  /// Whether extraction was successful
  @override
  bool get success;

  /// List of extracted entries (if successful)
  @override
  List<String> get extractedEntries;

  /// Destination folder ID where files were extracted
  @override
  String? get destinationFolderId;

  /// Error message if extraction failed
  @override
  String? get error;

  /// Create a copy of ArchiveExtractResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArchiveExtractResultImplCopyWith<_$ArchiveExtractResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}

BatchFileExtractResult _$BatchFileExtractResultFromJson(
  Map<String, dynamic> json,
) {
  return _BatchFileExtractResult.fromJson(json);
}

/// @nodoc
mixin _$BatchFileExtractResult {
  /// Results for each archive processed
  List<ArchiveExtractResult> get results => throw _privateConstructorUsedError;

  /// Serializes this BatchFileExtractResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchFileExtractResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchFileExtractResultCopyWith<BatchFileExtractResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchFileExtractResultCopyWith<$Res> {
  factory $BatchFileExtractResultCopyWith(
    BatchFileExtractResult value,
    $Res Function(BatchFileExtractResult) then,
  ) = _$BatchFileExtractResultCopyWithImpl<$Res, BatchFileExtractResult>;
  @useResult
  $Res call({List<ArchiveExtractResult> results});
}

/// @nodoc
class _$BatchFileExtractResultCopyWithImpl<
  $Res,
  $Val extends BatchFileExtractResult
>
    implements $BatchFileExtractResultCopyWith<$Res> {
  _$BatchFileExtractResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchFileExtractResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? results = null}) {
    return _then(
      _value.copyWith(
            results: null == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as List<ArchiveExtractResult>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BatchFileExtractResultImplCopyWith<$Res>
    implements $BatchFileExtractResultCopyWith<$Res> {
  factory _$$BatchFileExtractResultImplCopyWith(
    _$BatchFileExtractResultImpl value,
    $Res Function(_$BatchFileExtractResultImpl) then,
  ) = __$$BatchFileExtractResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ArchiveExtractResult> results});
}

/// @nodoc
class __$$BatchFileExtractResultImplCopyWithImpl<$Res>
    extends
        _$BatchFileExtractResultCopyWithImpl<$Res, _$BatchFileExtractResultImpl>
    implements _$$BatchFileExtractResultImplCopyWith<$Res> {
  __$$BatchFileExtractResultImplCopyWithImpl(
    _$BatchFileExtractResultImpl _value,
    $Res Function(_$BatchFileExtractResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchFileExtractResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? results = null}) {
    return _then(
      _$BatchFileExtractResultImpl(
        results: null == results
            ? _value._results
            : results // ignore: cast_nullable_to_non_nullable
                  as List<ArchiveExtractResult>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchFileExtractResultImpl extends _BatchFileExtractResult {
  const _$BatchFileExtractResultImpl({
    required final List<ArchiveExtractResult> results,
  }) : _results = results,
       super._();

  factory _$BatchFileExtractResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchFileExtractResultImplFromJson(json);

  /// Results for each archive processed
  final List<ArchiveExtractResult> _results;

  /// Results for each archive processed
  @override
  List<ArchiveExtractResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'BatchFileExtractResult(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchFileExtractResultImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  /// Create a copy of BatchFileExtractResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchFileExtractResultImplCopyWith<_$BatchFileExtractResultImpl>
  get copyWith =>
      __$$BatchFileExtractResultImplCopyWithImpl<_$BatchFileExtractResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchFileExtractResultImplToJson(this);
  }
}

abstract class _BatchFileExtractResult extends BatchFileExtractResult {
  const factory _BatchFileExtractResult({
    required final List<ArchiveExtractResult> results,
  }) = _$BatchFileExtractResultImpl;
  const _BatchFileExtractResult._() : super._();

  factory _BatchFileExtractResult.fromJson(Map<String, dynamic> json) =
      _$BatchFileExtractResultImpl.fromJson;

  /// Results for each archive processed
  @override
  List<ArchiveExtractResult> get results;

  /// Create a copy of BatchFileExtractResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchFileExtractResultImplCopyWith<_$BatchFileExtractResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}
