// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MoveFileTask _$MoveFileTaskFromJson(Map<String, dynamic> json) {
  return _MoveFileTask.fromJson(json);
}

/// @nodoc
mixin _$MoveFileTask {
  /// ID of the file to move
  String get fileId => throw _privateConstructorUsedError;

  /// ID of the target folder where the file will be moved
  String get targetFolderId => throw _privateConstructorUsedError;

  /// Optional new name for the file after moving
  /// If null, the original name is preserved
  String? get newName => throw _privateConstructorUsedError;

  /// Conflict resolution policy
  MoveConflictPolicy get conflictPolicy => throw _privateConstructorUsedError;

  /// Serializes this MoveFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoveFileTaskCopyWith<MoveFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveFileTaskCopyWith<$Res> {
  factory $MoveFileTaskCopyWith(
    MoveFileTask value,
    $Res Function(MoveFileTask) then,
  ) = _$MoveFileTaskCopyWithImpl<$Res, MoveFileTask>;
  @useResult
  $Res call({
    String fileId,
    String targetFolderId,
    String? newName,
    MoveConflictPolicy conflictPolicy,
  });
}

/// @nodoc
class _$MoveFileTaskCopyWithImpl<$Res, $Val extends MoveFileTask>
    implements $MoveFileTaskCopyWith<$Res> {
  _$MoveFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? targetFolderId = null,
    Object? newName = freezed,
    Object? conflictPolicy = null,
  }) {
    return _then(
      _value.copyWith(
            fileId: null == fileId
                ? _value.fileId
                : fileId // ignore: cast_nullable_to_non_nullable
                      as String,
            targetFolderId: null == targetFolderId
                ? _value.targetFolderId
                : targetFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            newName: freezed == newName
                ? _value.newName
                : newName // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$MoveFileTaskImplCopyWith<$Res>
    implements $MoveFileTaskCopyWith<$Res> {
  factory _$$MoveFileTaskImplCopyWith(
    _$MoveFileTaskImpl value,
    $Res Function(_$MoveFileTaskImpl) then,
  ) = __$$MoveFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String fileId,
    String targetFolderId,
    String? newName,
    MoveConflictPolicy conflictPolicy,
  });
}

/// @nodoc
class __$$MoveFileTaskImplCopyWithImpl<$Res>
    extends _$MoveFileTaskCopyWithImpl<$Res, _$MoveFileTaskImpl>
    implements _$$MoveFileTaskImplCopyWith<$Res> {
  __$$MoveFileTaskImplCopyWithImpl(
    _$MoveFileTaskImpl _value,
    $Res Function(_$MoveFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MoveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? targetFolderId = null,
    Object? newName = freezed,
    Object? conflictPolicy = null,
  }) {
    return _then(
      _$MoveFileTaskImpl(
        fileId: null == fileId
            ? _value.fileId
            : fileId // ignore: cast_nullable_to_non_nullable
                  as String,
        targetFolderId: null == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        newName: freezed == newName
            ? _value.newName
            : newName // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$MoveFileTaskImpl extends _MoveFileTask {
  const _$MoveFileTaskImpl({
    required this.fileId,
    required this.targetFolderId,
    this.newName,
    this.conflictPolicy = MoveConflictPolicy.rename,
  }) : super._();

  factory _$MoveFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoveFileTaskImplFromJson(json);

  /// ID of the file to move
  @override
  final String fileId;

  /// ID of the target folder where the file will be moved
  @override
  final String targetFolderId;

  /// Optional new name for the file after moving
  /// If null, the original name is preserved
  @override
  final String? newName;

  /// Conflict resolution policy
  @override
  @JsonKey()
  final MoveConflictPolicy conflictPolicy;

  @override
  String toString() {
    return 'MoveFileTask(fileId: $fileId, targetFolderId: $targetFolderId, newName: $newName, conflictPolicy: $conflictPolicy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveFileTaskImpl &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            (identical(other.newName, newName) || other.newName == newName) &&
            (identical(other.conflictPolicy, conflictPolicy) ||
                other.conflictPolicy == conflictPolicy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fileId, targetFolderId, newName, conflictPolicy);

  /// Create a copy of MoveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveFileTaskImplCopyWith<_$MoveFileTaskImpl> get copyWith =>
      __$$MoveFileTaskImplCopyWithImpl<_$MoveFileTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoveFileTaskImplToJson(this);
  }
}

abstract class _MoveFileTask extends MoveFileTask {
  const factory _MoveFileTask({
    required final String fileId,
    required final String targetFolderId,
    final String? newName,
    final MoveConflictPolicy conflictPolicy,
  }) = _$MoveFileTaskImpl;
  const _MoveFileTask._() : super._();

  factory _MoveFileTask.fromJson(Map<String, dynamic> json) =
      _$MoveFileTaskImpl.fromJson;

  /// ID of the file to move
  @override
  String get fileId;

  /// ID of the target folder where the file will be moved
  @override
  String get targetFolderId;

  /// Optional new name for the file after moving
  /// If null, the original name is preserved
  @override
  String? get newName;

  /// Conflict resolution policy
  @override
  MoveConflictPolicy get conflictPolicy;

  /// Create a copy of MoveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoveFileTaskImplCopyWith<_$MoveFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
