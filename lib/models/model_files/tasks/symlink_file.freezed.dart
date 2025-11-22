// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symlink_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SymlinkFileTask _$SymlinkFileTaskFromJson(Map<String, dynamic> json) {
  return _SymlinkFileTask.fromJson(json);
}

/// @nodoc
mixin _$SymlinkFileTask {
  /// ID of the target entry to link to
  String get targetEntryId => throw _privateConstructorUsedError;

  /// ID of the folder where the symlink should be created
  String get targetFolderId => throw _privateConstructorUsedError;

  /// Optional name for the symlink (defaults to target name)
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this SymlinkFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymlinkFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymlinkFileTaskCopyWith<SymlinkFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymlinkFileTaskCopyWith<$Res> {
  factory $SymlinkFileTaskCopyWith(
    SymlinkFileTask value,
    $Res Function(SymlinkFileTask) then,
  ) = _$SymlinkFileTaskCopyWithImpl<$Res, SymlinkFileTask>;
  @useResult
  $Res call({String targetEntryId, String targetFolderId, String? name});
}

/// @nodoc
class _$SymlinkFileTaskCopyWithImpl<$Res, $Val extends SymlinkFileTask>
    implements $SymlinkFileTaskCopyWith<$Res> {
  _$SymlinkFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymlinkFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetEntryId = null,
    Object? targetFolderId = null,
    Object? name = freezed,
  }) {
    return _then(
      _value.copyWith(
            targetEntryId: null == targetEntryId
                ? _value.targetEntryId
                : targetEntryId // ignore: cast_nullable_to_non_nullable
                      as String,
            targetFolderId: null == targetFolderId
                ? _value.targetFolderId
                : targetFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SymlinkFileTaskImplCopyWith<$Res>
    implements $SymlinkFileTaskCopyWith<$Res> {
  factory _$$SymlinkFileTaskImplCopyWith(
    _$SymlinkFileTaskImpl value,
    $Res Function(_$SymlinkFileTaskImpl) then,
  ) = __$$SymlinkFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String targetEntryId, String targetFolderId, String? name});
}

/// @nodoc
class __$$SymlinkFileTaskImplCopyWithImpl<$Res>
    extends _$SymlinkFileTaskCopyWithImpl<$Res, _$SymlinkFileTaskImpl>
    implements _$$SymlinkFileTaskImplCopyWith<$Res> {
  __$$SymlinkFileTaskImplCopyWithImpl(
    _$SymlinkFileTaskImpl _value,
    $Res Function(_$SymlinkFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SymlinkFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetEntryId = null,
    Object? targetFolderId = null,
    Object? name = freezed,
  }) {
    return _then(
      _$SymlinkFileTaskImpl(
        targetEntryId: null == targetEntryId
            ? _value.targetEntryId
            : targetEntryId // ignore: cast_nullable_to_non_nullable
                  as String,
        targetFolderId: null == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SymlinkFileTaskImpl implements _SymlinkFileTask {
  const _$SymlinkFileTaskImpl({
    required this.targetEntryId,
    required this.targetFolderId,
    this.name,
  });

  factory _$SymlinkFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymlinkFileTaskImplFromJson(json);

  /// ID of the target entry to link to
  @override
  final String targetEntryId;

  /// ID of the folder where the symlink should be created
  @override
  final String targetFolderId;

  /// Optional name for the symlink (defaults to target name)
  @override
  final String? name;

  @override
  String toString() {
    return 'SymlinkFileTask(targetEntryId: $targetEntryId, targetFolderId: $targetFolderId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymlinkFileTaskImpl &&
            (identical(other.targetEntryId, targetEntryId) ||
                other.targetEntryId == targetEntryId) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, targetEntryId, targetFolderId, name);

  /// Create a copy of SymlinkFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymlinkFileTaskImplCopyWith<_$SymlinkFileTaskImpl> get copyWith =>
      __$$SymlinkFileTaskImplCopyWithImpl<_$SymlinkFileTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SymlinkFileTaskImplToJson(this);
  }
}

abstract class _SymlinkFileTask implements SymlinkFileTask {
  const factory _SymlinkFileTask({
    required final String targetEntryId,
    required final String targetFolderId,
    final String? name,
  }) = _$SymlinkFileTaskImpl;

  factory _SymlinkFileTask.fromJson(Map<String, dynamic> json) =
      _$SymlinkFileTaskImpl.fromJson;

  /// ID of the target entry to link to
  @override
  String get targetEntryId;

  /// ID of the folder where the symlink should be created
  @override
  String get targetFolderId;

  /// Optional name for the symlink (defaults to target name)
  @override
  String? get name;

  /// Create a copy of SymlinkFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymlinkFileTaskImplCopyWith<_$SymlinkFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SymlinkFileResult _$SymlinkFileResultFromJson(Map<String, dynamic> json) {
  return _SymlinkFileResult.fromJson(json);
}

/// @nodoc
mixin _$SymlinkFileResult {
  /// The created symlink entry
  FsEntry get symlinkEntry => throw _privateConstructorUsedError;

  /// ID of the target entry this symlink points to
  String get targetEntryId => throw _privateConstructorUsedError;

  /// Serializes this SymlinkFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymlinkFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymlinkFileResultCopyWith<SymlinkFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymlinkFileResultCopyWith<$Res> {
  factory $SymlinkFileResultCopyWith(
    SymlinkFileResult value,
    $Res Function(SymlinkFileResult) then,
  ) = _$SymlinkFileResultCopyWithImpl<$Res, SymlinkFileResult>;
  @useResult
  $Res call({FsEntry symlinkEntry, String targetEntryId});

  $FsEntryCopyWith<$Res> get symlinkEntry;
}

/// @nodoc
class _$SymlinkFileResultCopyWithImpl<$Res, $Val extends SymlinkFileResult>
    implements $SymlinkFileResultCopyWith<$Res> {
  _$SymlinkFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymlinkFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? symlinkEntry = null, Object? targetEntryId = null}) {
    return _then(
      _value.copyWith(
            symlinkEntry: null == symlinkEntry
                ? _value.symlinkEntry
                : symlinkEntry // ignore: cast_nullable_to_non_nullable
                      as FsEntry,
            targetEntryId: null == targetEntryId
                ? _value.targetEntryId
                : targetEntryId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of SymlinkFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FsEntryCopyWith<$Res> get symlinkEntry {
    return $FsEntryCopyWith<$Res>(_value.symlinkEntry, (value) {
      return _then(_value.copyWith(symlinkEntry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SymlinkFileResultImplCopyWith<$Res>
    implements $SymlinkFileResultCopyWith<$Res> {
  factory _$$SymlinkFileResultImplCopyWith(
    _$SymlinkFileResultImpl value,
    $Res Function(_$SymlinkFileResultImpl) then,
  ) = __$$SymlinkFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FsEntry symlinkEntry, String targetEntryId});

  @override
  $FsEntryCopyWith<$Res> get symlinkEntry;
}

/// @nodoc
class __$$SymlinkFileResultImplCopyWithImpl<$Res>
    extends _$SymlinkFileResultCopyWithImpl<$Res, _$SymlinkFileResultImpl>
    implements _$$SymlinkFileResultImplCopyWith<$Res> {
  __$$SymlinkFileResultImplCopyWithImpl(
    _$SymlinkFileResultImpl _value,
    $Res Function(_$SymlinkFileResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SymlinkFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? symlinkEntry = null, Object? targetEntryId = null}) {
    return _then(
      _$SymlinkFileResultImpl(
        symlinkEntry: null == symlinkEntry
            ? _value.symlinkEntry
            : symlinkEntry // ignore: cast_nullable_to_non_nullable
                  as FsEntry,
        targetEntryId: null == targetEntryId
            ? _value.targetEntryId
            : targetEntryId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SymlinkFileResultImpl implements _SymlinkFileResult {
  const _$SymlinkFileResultImpl({
    required this.symlinkEntry,
    required this.targetEntryId,
  });

  factory _$SymlinkFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymlinkFileResultImplFromJson(json);

  /// The created symlink entry
  @override
  final FsEntry symlinkEntry;

  /// ID of the target entry this symlink points to
  @override
  final String targetEntryId;

  @override
  String toString() {
    return 'SymlinkFileResult(symlinkEntry: $symlinkEntry, targetEntryId: $targetEntryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymlinkFileResultImpl &&
            (identical(other.symlinkEntry, symlinkEntry) ||
                other.symlinkEntry == symlinkEntry) &&
            (identical(other.targetEntryId, targetEntryId) ||
                other.targetEntryId == targetEntryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symlinkEntry, targetEntryId);

  /// Create a copy of SymlinkFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymlinkFileResultImplCopyWith<_$SymlinkFileResultImpl> get copyWith =>
      __$$SymlinkFileResultImplCopyWithImpl<_$SymlinkFileResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SymlinkFileResultImplToJson(this);
  }
}

abstract class _SymlinkFileResult implements SymlinkFileResult {
  const factory _SymlinkFileResult({
    required final FsEntry symlinkEntry,
    required final String targetEntryId,
  }) = _$SymlinkFileResultImpl;

  factory _SymlinkFileResult.fromJson(Map<String, dynamic> json) =
      _$SymlinkFileResultImpl.fromJson;

  /// The created symlink entry
  @override
  FsEntry get symlinkEntry;

  /// ID of the target entry this symlink points to
  @override
  String get targetEntryId;

  /// Create a copy of SymlinkFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymlinkFileResultImplCopyWith<_$SymlinkFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
