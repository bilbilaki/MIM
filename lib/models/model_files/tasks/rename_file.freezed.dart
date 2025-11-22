// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rename_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RenameFileTask _$RenameFileTaskFromJson(Map<String, dynamic> json) {
  return _RenameFileTask.fromJson(json);
}

/// @nodoc
mixin _$RenameFileTask {
  /// ID of the file to rename
  String get fileId => throw _privateConstructorUsedError;

  /// New name for the file (without path)
  String get newName => throw _privateConstructorUsedError;

  /// Serializes this RenameFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RenameFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RenameFileTaskCopyWith<RenameFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenameFileTaskCopyWith<$Res> {
  factory $RenameFileTaskCopyWith(
    RenameFileTask value,
    $Res Function(RenameFileTask) then,
  ) = _$RenameFileTaskCopyWithImpl<$Res, RenameFileTask>;
  @useResult
  $Res call({String fileId, String newName});
}

/// @nodoc
class _$RenameFileTaskCopyWithImpl<$Res, $Val extends RenameFileTask>
    implements $RenameFileTaskCopyWith<$Res> {
  _$RenameFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RenameFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fileId = null, Object? newName = null}) {
    return _then(
      _value.copyWith(
            fileId: null == fileId
                ? _value.fileId
                : fileId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RenameFileTaskImplCopyWith<$Res>
    implements $RenameFileTaskCopyWith<$Res> {
  factory _$$RenameFileTaskImplCopyWith(
    _$RenameFileTaskImpl value,
    $Res Function(_$RenameFileTaskImpl) then,
  ) = __$$RenameFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileId, String newName});
}

/// @nodoc
class __$$RenameFileTaskImplCopyWithImpl<$Res>
    extends _$RenameFileTaskCopyWithImpl<$Res, _$RenameFileTaskImpl>
    implements _$$RenameFileTaskImplCopyWith<$Res> {
  __$$RenameFileTaskImplCopyWithImpl(
    _$RenameFileTaskImpl _value,
    $Res Function(_$RenameFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RenameFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fileId = null, Object? newName = null}) {
    return _then(
      _$RenameFileTaskImpl(
        fileId: null == fileId
            ? _value.fileId
            : fileId // ignore: cast_nullable_to_non_nullable
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
class _$RenameFileTaskImpl extends _RenameFileTask {
  const _$RenameFileTaskImpl({required this.fileId, required this.newName})
    : super._();

  factory _$RenameFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$RenameFileTaskImplFromJson(json);

  /// ID of the file to rename
  @override
  final String fileId;

  /// New name for the file (without path)
  @override
  final String newName;

  @override
  String toString() {
    return 'RenameFileTask(fileId: $fileId, newName: $newName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenameFileTaskImpl &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.newName, newName) || other.newName == newName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileId, newName);

  /// Create a copy of RenameFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RenameFileTaskImplCopyWith<_$RenameFileTaskImpl> get copyWith =>
      __$$RenameFileTaskImplCopyWithImpl<_$RenameFileTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RenameFileTaskImplToJson(this);
  }
}

abstract class _RenameFileTask extends RenameFileTask {
  const factory _RenameFileTask({
    required final String fileId,
    required final String newName,
  }) = _$RenameFileTaskImpl;
  const _RenameFileTask._() : super._();

  factory _RenameFileTask.fromJson(Map<String, dynamic> json) =
      _$RenameFileTaskImpl.fromJson;

  /// ID of the file to rename
  @override
  String get fileId;

  /// New name for the file (without path)
  @override
  String get newName;

  /// Create a copy of RenameFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RenameFileTaskImplCopyWith<_$RenameFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RenameFileResult _$RenameFileResultFromJson(Map<String, dynamic> json) {
  return _RenameFileResult.fromJson(json);
}

/// @nodoc
mixin _$RenameFileResult {
  /// The updated file entry after rename
  FsFile get file => throw _privateConstructorUsedError;

  /// Original name before rename
  String get oldName => throw _privateConstructorUsedError;

  /// New name after rename
  String get newName => throw _privateConstructorUsedError;

  /// Serializes this RenameFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RenameFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RenameFileResultCopyWith<RenameFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenameFileResultCopyWith<$Res> {
  factory $RenameFileResultCopyWith(
    RenameFileResult value,
    $Res Function(RenameFileResult) then,
  ) = _$RenameFileResultCopyWithImpl<$Res, RenameFileResult>;
  @useResult
  $Res call({FsFile file, String oldName, String newName});
}

/// @nodoc
class _$RenameFileResultCopyWithImpl<$Res, $Val extends RenameFileResult>
    implements $RenameFileResultCopyWith<$Res> {
  _$RenameFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RenameFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? oldName = null,
    Object? newName = null,
  }) {
    return _then(
      _value.copyWith(
            file: freezed == file
                ? _value.file
                : file // ignore: cast_nullable_to_non_nullable
                      as FsFile,
            oldName: null == oldName
                ? _value.oldName
                : oldName // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RenameFileResultImplCopyWith<$Res>
    implements $RenameFileResultCopyWith<$Res> {
  factory _$$RenameFileResultImplCopyWith(
    _$RenameFileResultImpl value,
    $Res Function(_$RenameFileResultImpl) then,
  ) = __$$RenameFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FsFile file, String oldName, String newName});
}

/// @nodoc
class __$$RenameFileResultImplCopyWithImpl<$Res>
    extends _$RenameFileResultCopyWithImpl<$Res, _$RenameFileResultImpl>
    implements _$$RenameFileResultImplCopyWith<$Res> {
  __$$RenameFileResultImplCopyWithImpl(
    _$RenameFileResultImpl _value,
    $Res Function(_$RenameFileResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RenameFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? oldName = null,
    Object? newName = null,
  }) {
    return _then(
      _$RenameFileResultImpl(
        file: freezed == file
            ? _value.file
            : file // ignore: cast_nullable_to_non_nullable
                  as FsFile,
        oldName: null == oldName
            ? _value.oldName
            : oldName // ignore: cast_nullable_to_non_nullable
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
class _$RenameFileResultImpl implements _RenameFileResult {
  const _$RenameFileResultImpl({
    required this.file,
    required this.oldName,
    required this.newName,
  });

  factory _$RenameFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$RenameFileResultImplFromJson(json);

  /// The updated file entry after rename
  @override
  final FsFile file;

  /// Original name before rename
  @override
  final String oldName;

  /// New name after rename
  @override
  final String newName;

  @override
  String toString() {
    return 'RenameFileResult(file: $file, oldName: $oldName, newName: $newName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenameFileResultImpl &&
            const DeepCollectionEquality().equals(other.file, file) &&
            (identical(other.oldName, oldName) || other.oldName == oldName) &&
            (identical(other.newName, newName) || other.newName == newName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(file),
    oldName,
    newName,
  );

  /// Create a copy of RenameFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RenameFileResultImplCopyWith<_$RenameFileResultImpl> get copyWith =>
      __$$RenameFileResultImplCopyWithImpl<_$RenameFileResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RenameFileResultImplToJson(this);
  }
}

abstract class _RenameFileResult implements RenameFileResult {
  const factory _RenameFileResult({
    required final FsFile file,
    required final String oldName,
    required final String newName,
  }) = _$RenameFileResultImpl;

  factory _RenameFileResult.fromJson(Map<String, dynamic> json) =
      _$RenameFileResultImpl.fromJson;

  /// The updated file entry after rename
  @override
  FsFile get file;

  /// Original name before rename
  @override
  String get oldName;

  /// New name after rename
  @override
  String get newName;

  /// Create a copy of RenameFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RenameFileResultImplCopyWith<_$RenameFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
