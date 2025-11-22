// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_folder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MoveFolderTask _$MoveFolderTaskFromJson(Map<String, dynamic> json) {
  return _MoveFolderTask.fromJson(json);
}

/// @nodoc
mixin _$MoveFolderTask {
  /// ID of the folder to be moved
  String get folderId => throw _privateConstructorUsedError;

  /// ID of the target parent folder where the folder will be moved
  String get targetParentFolderId => throw _privateConstructorUsedError;

  /// Optional new name for the folder after moving
  /// If null, the original name is preserved
  String? get newName => throw _privateConstructorUsedError;

  /// Serializes this MoveFolderTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoveFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoveFolderTaskCopyWith<MoveFolderTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveFolderTaskCopyWith<$Res> {
  factory $MoveFolderTaskCopyWith(
    MoveFolderTask value,
    $Res Function(MoveFolderTask) then,
  ) = _$MoveFolderTaskCopyWithImpl<$Res, MoveFolderTask>;
  @useResult
  $Res call({String folderId, String targetParentFolderId, String? newName});
}

/// @nodoc
class _$MoveFolderTaskCopyWithImpl<$Res, $Val extends MoveFolderTask>
    implements $MoveFolderTaskCopyWith<$Res> {
  _$MoveFolderTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoveFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = null,
    Object? targetParentFolderId = null,
    Object? newName = freezed,
  }) {
    return _then(
      _value.copyWith(
            folderId: null == folderId
                ? _value.folderId
                : folderId // ignore: cast_nullable_to_non_nullable
                      as String,
            targetParentFolderId: null == targetParentFolderId
                ? _value.targetParentFolderId
                : targetParentFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            newName: freezed == newName
                ? _value.newName
                : newName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MoveFolderTaskImplCopyWith<$Res>
    implements $MoveFolderTaskCopyWith<$Res> {
  factory _$$MoveFolderTaskImplCopyWith(
    _$MoveFolderTaskImpl value,
    $Res Function(_$MoveFolderTaskImpl) then,
  ) = __$$MoveFolderTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String folderId, String targetParentFolderId, String? newName});
}

/// @nodoc
class __$$MoveFolderTaskImplCopyWithImpl<$Res>
    extends _$MoveFolderTaskCopyWithImpl<$Res, _$MoveFolderTaskImpl>
    implements _$$MoveFolderTaskImplCopyWith<$Res> {
  __$$MoveFolderTaskImplCopyWithImpl(
    _$MoveFolderTaskImpl _value,
    $Res Function(_$MoveFolderTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MoveFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = null,
    Object? targetParentFolderId = null,
    Object? newName = freezed,
  }) {
    return _then(
      _$MoveFolderTaskImpl(
        folderId: null == folderId
            ? _value.folderId
            : folderId // ignore: cast_nullable_to_non_nullable
                  as String,
        targetParentFolderId: null == targetParentFolderId
            ? _value.targetParentFolderId
            : targetParentFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        newName: freezed == newName
            ? _value.newName
            : newName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MoveFolderTaskImpl extends _MoveFolderTask {
  const _$MoveFolderTaskImpl({
    required this.folderId,
    required this.targetParentFolderId,
    this.newName,
  }) : super._();

  factory _$MoveFolderTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoveFolderTaskImplFromJson(json);

  /// ID of the folder to be moved
  @override
  final String folderId;

  /// ID of the target parent folder where the folder will be moved
  @override
  final String targetParentFolderId;

  /// Optional new name for the folder after moving
  /// If null, the original name is preserved
  @override
  final String? newName;

  @override
  String toString() {
    return 'MoveFolderTask(folderId: $folderId, targetParentFolderId: $targetParentFolderId, newName: $newName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveFolderTaskImpl &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId) &&
            (identical(other.targetParentFolderId, targetParentFolderId) ||
                other.targetParentFolderId == targetParentFolderId) &&
            (identical(other.newName, newName) || other.newName == newName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, folderId, targetParentFolderId, newName);

  /// Create a copy of MoveFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveFolderTaskImplCopyWith<_$MoveFolderTaskImpl> get copyWith =>
      __$$MoveFolderTaskImplCopyWithImpl<_$MoveFolderTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MoveFolderTaskImplToJson(this);
  }
}

abstract class _MoveFolderTask extends MoveFolderTask {
  const factory _MoveFolderTask({
    required final String folderId,
    required final String targetParentFolderId,
    final String? newName,
  }) = _$MoveFolderTaskImpl;
  const _MoveFolderTask._() : super._();

  factory _MoveFolderTask.fromJson(Map<String, dynamic> json) =
      _$MoveFolderTaskImpl.fromJson;

  /// ID of the folder to be moved
  @override
  String get folderId;

  /// ID of the target parent folder where the folder will be moved
  @override
  String get targetParentFolderId;

  /// Optional new name for the folder after moving
  /// If null, the original name is preserved
  @override
  String? get newName;

  /// Create a copy of MoveFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoveFolderTaskImplCopyWith<_$MoveFolderTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  /// The updated folder entry with new path
  FsFolder get movedFolder => throw _privateConstructorUsedError;

  /// Number of entries that were moved (including the folder itself and all children)
  int get movedEntryCount => throw _privateConstructorUsedError;

  /// Any errors encountered during the move operation
  List<String> get errors => throw _privateConstructorUsedError;

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({FsFolder movedFolder, int movedEntryCount, List<String> errors});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movedFolder = freezed,
    Object? movedEntryCount = null,
    Object? errors = null,
  }) {
    return _then(
      _value.copyWith(
            movedFolder: freezed == movedFolder
                ? _value.movedFolder
                : movedFolder // ignore: cast_nullable_to_non_nullable
                      as FsFolder,
            movedEntryCount: null == movedEntryCount
                ? _value.movedEntryCount
                : movedEntryCount // ignore: cast_nullable_to_non_nullable
                      as int,
            errors: null == errors
                ? _value.errors
                : errors // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
    _$ResultImpl value,
    $Res Function(_$ResultImpl) then,
  ) = __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FsFolder movedFolder, int movedEntryCount, List<String> errors});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
    _$ResultImpl _value,
    $Res Function(_$ResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movedFolder = freezed,
    Object? movedEntryCount = null,
    Object? errors = null,
  }) {
    return _then(
      _$ResultImpl(
        movedFolder: freezed == movedFolder
            ? _value.movedFolder
            : movedFolder // ignore: cast_nullable_to_non_nullable
                  as FsFolder,
        movedEntryCount: null == movedEntryCount
            ? _value.movedEntryCount
            : movedEntryCount // ignore: cast_nullable_to_non_nullable
                  as int,
        errors: null == errors
            ? _value._errors
            : errors // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({
    required this.movedFolder,
    required this.movedEntryCount,
    final List<String> errors = const <String>[],
  }) : _errors = errors;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  /// The updated folder entry with new path
  @override
  final FsFolder movedFolder;

  /// Number of entries that were moved (including the folder itself and all children)
  @override
  final int movedEntryCount;

  /// Any errors encountered during the move operation
  final List<String> _errors;

  /// Any errors encountered during the move operation
  @override
  @JsonKey()
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'Result(movedFolder: $movedFolder, movedEntryCount: $movedEntryCount, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            const DeepCollectionEquality().equals(
              other.movedFolder,
              movedFolder,
            ) &&
            (identical(other.movedEntryCount, movedEntryCount) ||
                other.movedEntryCount == movedEntryCount) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(movedFolder),
    movedEntryCount,
    const DeepCollectionEquality().hash(_errors),
  );

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(this);
  }
}

abstract class _Result implements Result {
  const factory _Result({
    required final FsFolder movedFolder,
    required final int movedEntryCount,
    final List<String> errors,
  }) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  /// The updated folder entry with new path
  @override
  FsFolder get movedFolder;

  /// Number of entries that were moved (including the folder itself and all children)
  @override
  int get movedEntryCount;

  /// Any errors encountered during the move operation
  @override
  List<String> get errors;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
