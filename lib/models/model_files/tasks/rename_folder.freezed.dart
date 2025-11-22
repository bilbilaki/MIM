// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rename_folder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RenameFolderTask _$RenameFolderTaskFromJson(Map<String, dynamic> json) {
  return _RenameFolderTask.fromJson(json);
}

/// @nodoc
mixin _$RenameFolderTask {
  /// ID of the folder to rename
  String get folderId => throw _privateConstructorUsedError;

  /// New name for the folder
  String get newName => throw _privateConstructorUsedError;

  /// Serializes this RenameFolderTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RenameFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RenameFolderTaskCopyWith<RenameFolderTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenameFolderTaskCopyWith<$Res> {
  factory $RenameFolderTaskCopyWith(
    RenameFolderTask value,
    $Res Function(RenameFolderTask) then,
  ) = _$RenameFolderTaskCopyWithImpl<$Res, RenameFolderTask>;
  @useResult
  $Res call({String folderId, String newName});
}

/// @nodoc
class _$RenameFolderTaskCopyWithImpl<$Res, $Val extends RenameFolderTask>
    implements $RenameFolderTaskCopyWith<$Res> {
  _$RenameFolderTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RenameFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? folderId = null, Object? newName = null}) {
    return _then(
      _value.copyWith(
            folderId: null == folderId
                ? _value.folderId
                : folderId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RenameFolderTaskImplCopyWith<$Res>
    implements $RenameFolderTaskCopyWith<$Res> {
  factory _$$RenameFolderTaskImplCopyWith(
    _$RenameFolderTaskImpl value,
    $Res Function(_$RenameFolderTaskImpl) then,
  ) = __$$RenameFolderTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String folderId, String newName});
}

/// @nodoc
class __$$RenameFolderTaskImplCopyWithImpl<$Res>
    extends _$RenameFolderTaskCopyWithImpl<$Res, _$RenameFolderTaskImpl>
    implements _$$RenameFolderTaskImplCopyWith<$Res> {
  __$$RenameFolderTaskImplCopyWithImpl(
    _$RenameFolderTaskImpl _value,
    $Res Function(_$RenameFolderTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RenameFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? folderId = null, Object? newName = null}) {
    return _then(
      _$RenameFolderTaskImpl(
        folderId: null == folderId
            ? _value.folderId
            : folderId // ignore: cast_nullable_to_non_nullable
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
class _$RenameFolderTaskImpl extends _RenameFolderTask {
  const _$RenameFolderTaskImpl({required this.folderId, required this.newName})
    : super._();

  factory _$RenameFolderTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$RenameFolderTaskImplFromJson(json);

  /// ID of the folder to rename
  @override
  final String folderId;

  /// New name for the folder
  @override
  final String newName;

  @override
  String toString() {
    return 'RenameFolderTask(folderId: $folderId, newName: $newName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenameFolderTaskImpl &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId) &&
            (identical(other.newName, newName) || other.newName == newName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, folderId, newName);

  /// Create a copy of RenameFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RenameFolderTaskImplCopyWith<_$RenameFolderTaskImpl> get copyWith =>
      __$$RenameFolderTaskImplCopyWithImpl<_$RenameFolderTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RenameFolderTaskImplToJson(this);
  }
}

abstract class _RenameFolderTask extends RenameFolderTask {
  const factory _RenameFolderTask({
    required final String folderId,
    required final String newName,
  }) = _$RenameFolderTaskImpl;
  const _RenameFolderTask._() : super._();

  factory _RenameFolderTask.fromJson(Map<String, dynamic> json) =
      _$RenameFolderTaskImpl.fromJson;

  /// ID of the folder to rename
  @override
  String get folderId;

  /// New name for the folder
  @override
  String get newName;

  /// Create a copy of RenameFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RenameFolderTaskImplCopyWith<_$RenameFolderTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RenameFolderResult _$RenameFolderResultFromJson(Map<String, dynamic> json) {
  return _RenameFolderResult.fromJson(json);
}

/// @nodoc
mixin _$RenameFolderResult {
  /// The original folder before renaming
  FsFolder get oldFolder => throw _privateConstructorUsedError;

  /// The folder after successful renaming
  FsFolder get newFolder => throw _privateConstructorUsedError;

  /// Serializes this RenameFolderResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RenameFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RenameFolderResultCopyWith<RenameFolderResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenameFolderResultCopyWith<$Res> {
  factory $RenameFolderResultCopyWith(
    RenameFolderResult value,
    $Res Function(RenameFolderResult) then,
  ) = _$RenameFolderResultCopyWithImpl<$Res, RenameFolderResult>;
  @useResult
  $Res call({FsFolder oldFolder, FsFolder newFolder});
}

/// @nodoc
class _$RenameFolderResultCopyWithImpl<$Res, $Val extends RenameFolderResult>
    implements $RenameFolderResultCopyWith<$Res> {
  _$RenameFolderResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RenameFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? oldFolder = freezed, Object? newFolder = freezed}) {
    return _then(
      _value.copyWith(
            oldFolder: freezed == oldFolder
                ? _value.oldFolder
                : oldFolder // ignore: cast_nullable_to_non_nullable
                      as FsFolder,
            newFolder: freezed == newFolder
                ? _value.newFolder
                : newFolder // ignore: cast_nullable_to_non_nullable
                      as FsFolder,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RenameFolderResultImplCopyWith<$Res>
    implements $RenameFolderResultCopyWith<$Res> {
  factory _$$RenameFolderResultImplCopyWith(
    _$RenameFolderResultImpl value,
    $Res Function(_$RenameFolderResultImpl) then,
  ) = __$$RenameFolderResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FsFolder oldFolder, FsFolder newFolder});
}

/// @nodoc
class __$$RenameFolderResultImplCopyWithImpl<$Res>
    extends _$RenameFolderResultCopyWithImpl<$Res, _$RenameFolderResultImpl>
    implements _$$RenameFolderResultImplCopyWith<$Res> {
  __$$RenameFolderResultImplCopyWithImpl(
    _$RenameFolderResultImpl _value,
    $Res Function(_$RenameFolderResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RenameFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? oldFolder = freezed, Object? newFolder = freezed}) {
    return _then(
      _$RenameFolderResultImpl(
        oldFolder: freezed == oldFolder
            ? _value.oldFolder
            : oldFolder // ignore: cast_nullable_to_non_nullable
                  as FsFolder,
        newFolder: freezed == newFolder
            ? _value.newFolder
            : newFolder // ignore: cast_nullable_to_non_nullable
                  as FsFolder,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RenameFolderResultImpl implements _RenameFolderResult {
  const _$RenameFolderResultImpl({
    required this.oldFolder,
    required this.newFolder,
  });

  factory _$RenameFolderResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$RenameFolderResultImplFromJson(json);

  /// The original folder before renaming
  @override
  final FsFolder oldFolder;

  /// The folder after successful renaming
  @override
  final FsFolder newFolder;

  @override
  String toString() {
    return 'RenameFolderResult(oldFolder: $oldFolder, newFolder: $newFolder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenameFolderResultImpl &&
            const DeepCollectionEquality().equals(other.oldFolder, oldFolder) &&
            const DeepCollectionEquality().equals(other.newFolder, newFolder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(oldFolder),
    const DeepCollectionEquality().hash(newFolder),
  );

  /// Create a copy of RenameFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RenameFolderResultImplCopyWith<_$RenameFolderResultImpl> get copyWith =>
      __$$RenameFolderResultImplCopyWithImpl<_$RenameFolderResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RenameFolderResultImplToJson(this);
  }
}

abstract class _RenameFolderResult implements RenameFolderResult {
  const factory _RenameFolderResult({
    required final FsFolder oldFolder,
    required final FsFolder newFolder,
  }) = _$RenameFolderResultImpl;

  factory _RenameFolderResult.fromJson(Map<String, dynamic> json) =
      _$RenameFolderResultImpl.fromJson;

  /// The original folder before renaming
  @override
  FsFolder get oldFolder;

  /// The folder after successful renaming
  @override
  FsFolder get newFolder;

  /// Create a copy of RenameFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RenameFolderResultImplCopyWith<_$RenameFolderResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
