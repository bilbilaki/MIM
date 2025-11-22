// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'copy_folder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CopyFolderResult _$CopyFolderResultFromJson(Map<String, dynamic> json) {
  return _CopyFolderResult.fromJson(json);
}

/// @nodoc
mixin _$CopyFolderResult {
  /// The root of the newly copied folder tree
  FsFolder get copiedFolder => throw _privateConstructorUsedError;

  /// Number of files copied
  int get filesCopied => throw _privateConstructorUsedError;

  /// Number of folders copied (including the root)
  int get foldersCopied => throw _privateConstructorUsedError;

  /// Total size in bytes of all copied content
  int get totalSizeBytes => throw _privateConstructorUsedError;

  /// Any errors encountered during the copy operation
  List<String> get errors => throw _privateConstructorUsedError;

  /// Serializes this CopyFolderResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CopyFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CopyFolderResultCopyWith<CopyFolderResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopyFolderResultCopyWith<$Res> {
  factory $CopyFolderResultCopyWith(
    CopyFolderResult value,
    $Res Function(CopyFolderResult) then,
  ) = _$CopyFolderResultCopyWithImpl<$Res, CopyFolderResult>;
  @useResult
  $Res call({
    FsFolder copiedFolder,
    int filesCopied,
    int foldersCopied,
    int totalSizeBytes,
    List<String> errors,
  });
}

/// @nodoc
class _$CopyFolderResultCopyWithImpl<$Res, $Val extends CopyFolderResult>
    implements $CopyFolderResultCopyWith<$Res> {
  _$CopyFolderResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CopyFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copiedFolder = freezed,
    Object? filesCopied = null,
    Object? foldersCopied = null,
    Object? totalSizeBytes = null,
    Object? errors = null,
  }) {
    return _then(
      _value.copyWith(
            copiedFolder: freezed == copiedFolder
                ? _value.copiedFolder
                : copiedFolder // ignore: cast_nullable_to_non_nullable
                      as FsFolder,
            filesCopied: null == filesCopied
                ? _value.filesCopied
                : filesCopied // ignore: cast_nullable_to_non_nullable
                      as int,
            foldersCopied: null == foldersCopied
                ? _value.foldersCopied
                : foldersCopied // ignore: cast_nullable_to_non_nullable
                      as int,
            totalSizeBytes: null == totalSizeBytes
                ? _value.totalSizeBytes
                : totalSizeBytes // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CopyFolderResultImplCopyWith<$Res>
    implements $CopyFolderResultCopyWith<$Res> {
  factory _$$CopyFolderResultImplCopyWith(
    _$CopyFolderResultImpl value,
    $Res Function(_$CopyFolderResultImpl) then,
  ) = __$$CopyFolderResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    FsFolder copiedFolder,
    int filesCopied,
    int foldersCopied,
    int totalSizeBytes,
    List<String> errors,
  });
}

/// @nodoc
class __$$CopyFolderResultImplCopyWithImpl<$Res>
    extends _$CopyFolderResultCopyWithImpl<$Res, _$CopyFolderResultImpl>
    implements _$$CopyFolderResultImplCopyWith<$Res> {
  __$$CopyFolderResultImplCopyWithImpl(
    _$CopyFolderResultImpl _value,
    $Res Function(_$CopyFolderResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CopyFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copiedFolder = freezed,
    Object? filesCopied = null,
    Object? foldersCopied = null,
    Object? totalSizeBytes = null,
    Object? errors = null,
  }) {
    return _then(
      _$CopyFolderResultImpl(
        copiedFolder: freezed == copiedFolder
            ? _value.copiedFolder
            : copiedFolder // ignore: cast_nullable_to_non_nullable
                  as FsFolder,
        filesCopied: null == filesCopied
            ? _value.filesCopied
            : filesCopied // ignore: cast_nullable_to_non_nullable
                  as int,
        foldersCopied: null == foldersCopied
            ? _value.foldersCopied
            : foldersCopied // ignore: cast_nullable_to_non_nullable
                  as int,
        totalSizeBytes: null == totalSizeBytes
            ? _value.totalSizeBytes
            : totalSizeBytes // ignore: cast_nullable_to_non_nullable
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
class _$CopyFolderResultImpl implements _CopyFolderResult {
  const _$CopyFolderResultImpl({
    required this.copiedFolder,
    required this.filesCopied,
    required this.foldersCopied,
    required this.totalSizeBytes,
    final List<String> errors = const <String>[],
  }) : _errors = errors;

  factory _$CopyFolderResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CopyFolderResultImplFromJson(json);

  /// The root of the newly copied folder tree
  @override
  final FsFolder copiedFolder;

  /// Number of files copied
  @override
  final int filesCopied;

  /// Number of folders copied (including the root)
  @override
  final int foldersCopied;

  /// Total size in bytes of all copied content
  @override
  final int totalSizeBytes;

  /// Any errors encountered during the copy operation
  final List<String> _errors;

  /// Any errors encountered during the copy operation
  @override
  @JsonKey()
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'CopyFolderResult(copiedFolder: $copiedFolder, filesCopied: $filesCopied, foldersCopied: $foldersCopied, totalSizeBytes: $totalSizeBytes, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyFolderResultImpl &&
            const DeepCollectionEquality().equals(
              other.copiedFolder,
              copiedFolder,
            ) &&
            (identical(other.filesCopied, filesCopied) ||
                other.filesCopied == filesCopied) &&
            (identical(other.foldersCopied, foldersCopied) ||
                other.foldersCopied == foldersCopied) &&
            (identical(other.totalSizeBytes, totalSizeBytes) ||
                other.totalSizeBytes == totalSizeBytes) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(copiedFolder),
    filesCopied,
    foldersCopied,
    totalSizeBytes,
    const DeepCollectionEquality().hash(_errors),
  );

  /// Create a copy of CopyFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyFolderResultImplCopyWith<_$CopyFolderResultImpl> get copyWith =>
      __$$CopyFolderResultImplCopyWithImpl<_$CopyFolderResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CopyFolderResultImplToJson(this);
  }
}

abstract class _CopyFolderResult implements CopyFolderResult {
  const factory _CopyFolderResult({
    required final FsFolder copiedFolder,
    required final int filesCopied,
    required final int foldersCopied,
    required final int totalSizeBytes,
    final List<String> errors,
  }) = _$CopyFolderResultImpl;

  factory _CopyFolderResult.fromJson(Map<String, dynamic> json) =
      _$CopyFolderResultImpl.fromJson;

  /// The root of the newly copied folder tree
  @override
  FsFolder get copiedFolder;

  /// Number of files copied
  @override
  int get filesCopied;

  /// Number of folders copied (including the root)
  @override
  int get foldersCopied;

  /// Total size in bytes of all copied content
  @override
  int get totalSizeBytes;

  /// Any errors encountered during the copy operation
  @override
  List<String> get errors;

  /// Create a copy of CopyFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CopyFolderResultImplCopyWith<_$CopyFolderResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CopyFolderTask _$CopyFolderTaskFromJson(Map<String, dynamic> json) {
  return _CopyFolderTask.fromJson(json);
}

/// @nodoc
mixin _$CopyFolderTask {
  /// ID of the source folder to copy
  String get sourceFolderId => throw _privateConstructorUsedError;

  /// ID of the target parent folder where the copy will be placed
  String get targetParentFolderId => throw _privateConstructorUsedError;

  /// Optional new name for the copied folder (if null, uses original name)
  String? get newName => throw _privateConstructorUsedError;

  /// Conflict resolution policy
  CopyConflictPolicy get conflictPolicy => throw _privateConstructorUsedError;

  /// Serializes this CopyFolderTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CopyFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CopyFolderTaskCopyWith<CopyFolderTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopyFolderTaskCopyWith<$Res> {
  factory $CopyFolderTaskCopyWith(
    CopyFolderTask value,
    $Res Function(CopyFolderTask) then,
  ) = _$CopyFolderTaskCopyWithImpl<$Res, CopyFolderTask>;
  @useResult
  $Res call({
    String sourceFolderId,
    String targetParentFolderId,
    String? newName,
    CopyConflictPolicy conflictPolicy,
  });
}

/// @nodoc
class _$CopyFolderTaskCopyWithImpl<$Res, $Val extends CopyFolderTask>
    implements $CopyFolderTaskCopyWith<$Res> {
  _$CopyFolderTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CopyFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFolderId = null,
    Object? targetParentFolderId = null,
    Object? newName = freezed,
    Object? conflictPolicy = null,
  }) {
    return _then(
      _value.copyWith(
            sourceFolderId: null == sourceFolderId
                ? _value.sourceFolderId
                : sourceFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            targetParentFolderId: null == targetParentFolderId
                ? _value.targetParentFolderId
                : targetParentFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            newName: freezed == newName
                ? _value.newName
                : newName // ignore: cast_nullable_to_non_nullable
                      as String?,
            conflictPolicy: null == conflictPolicy
                ? _value.conflictPolicy
                : conflictPolicy // ignore: cast_nullable_to_non_nullable
                      as CopyConflictPolicy,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CopyFolderTaskImplCopyWith<$Res>
    implements $CopyFolderTaskCopyWith<$Res> {
  factory _$$CopyFolderTaskImplCopyWith(
    _$CopyFolderTaskImpl value,
    $Res Function(_$CopyFolderTaskImpl) then,
  ) = __$$CopyFolderTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sourceFolderId,
    String targetParentFolderId,
    String? newName,
    CopyConflictPolicy conflictPolicy,
  });
}

/// @nodoc
class __$$CopyFolderTaskImplCopyWithImpl<$Res>
    extends _$CopyFolderTaskCopyWithImpl<$Res, _$CopyFolderTaskImpl>
    implements _$$CopyFolderTaskImplCopyWith<$Res> {
  __$$CopyFolderTaskImplCopyWithImpl(
    _$CopyFolderTaskImpl _value,
    $Res Function(_$CopyFolderTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CopyFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFolderId = null,
    Object? targetParentFolderId = null,
    Object? newName = freezed,
    Object? conflictPolicy = null,
  }) {
    return _then(
      _$CopyFolderTaskImpl(
        sourceFolderId: null == sourceFolderId
            ? _value.sourceFolderId
            : sourceFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        targetParentFolderId: null == targetParentFolderId
            ? _value.targetParentFolderId
            : targetParentFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        newName: freezed == newName
            ? _value.newName
            : newName // ignore: cast_nullable_to_non_nullable
                  as String?,
        conflictPolicy: null == conflictPolicy
            ? _value.conflictPolicy
            : conflictPolicy // ignore: cast_nullable_to_non_nullable
                  as CopyConflictPolicy,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CopyFolderTaskImpl extends _CopyFolderTask {
  const _$CopyFolderTaskImpl({
    required this.sourceFolderId,
    required this.targetParentFolderId,
    this.newName,
    this.conflictPolicy = CopyConflictPolicy.rename,
  }) : super._();

  factory _$CopyFolderTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$CopyFolderTaskImplFromJson(json);

  /// ID of the source folder to copy
  @override
  final String sourceFolderId;

  /// ID of the target parent folder where the copy will be placed
  @override
  final String targetParentFolderId;

  /// Optional new name for the copied folder (if null, uses original name)
  @override
  final String? newName;

  /// Conflict resolution policy
  @override
  @JsonKey()
  final CopyConflictPolicy conflictPolicy;

  @override
  String toString() {
    return 'CopyFolderTask(sourceFolderId: $sourceFolderId, targetParentFolderId: $targetParentFolderId, newName: $newName, conflictPolicy: $conflictPolicy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyFolderTaskImpl &&
            (identical(other.sourceFolderId, sourceFolderId) ||
                other.sourceFolderId == sourceFolderId) &&
            (identical(other.targetParentFolderId, targetParentFolderId) ||
                other.targetParentFolderId == targetParentFolderId) &&
            (identical(other.newName, newName) || other.newName == newName) &&
            (identical(other.conflictPolicy, conflictPolicy) ||
                other.conflictPolicy == conflictPolicy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sourceFolderId,
    targetParentFolderId,
    newName,
    conflictPolicy,
  );

  /// Create a copy of CopyFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyFolderTaskImplCopyWith<_$CopyFolderTaskImpl> get copyWith =>
      __$$CopyFolderTaskImplCopyWithImpl<_$CopyFolderTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CopyFolderTaskImplToJson(this);
  }
}

abstract class _CopyFolderTask extends CopyFolderTask {
  const factory _CopyFolderTask({
    required final String sourceFolderId,
    required final String targetParentFolderId,
    final String? newName,
    final CopyConflictPolicy conflictPolicy,
  }) = _$CopyFolderTaskImpl;
  const _CopyFolderTask._() : super._();

  factory _CopyFolderTask.fromJson(Map<String, dynamic> json) =
      _$CopyFolderTaskImpl.fromJson;

  /// ID of the source folder to copy
  @override
  String get sourceFolderId;

  /// ID of the target parent folder where the copy will be placed
  @override
  String get targetParentFolderId;

  /// Optional new name for the copied folder (if null, uses original name)
  @override
  String? get newName;

  /// Conflict resolution policy
  @override
  CopyConflictPolicy get conflictPolicy;

  /// Create a copy of CopyFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CopyFolderTaskImplCopyWith<_$CopyFolderTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
