// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cache_folders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CacheFoldersTask _$CacheFoldersTaskFromJson(Map<String, dynamic> json) {
  return _CacheFoldersTask.fromJson(json);
}

/// @nodoc
mixin _$CacheFoldersTask {
  /// IDs of folders to cache/refresh
  List<String> get folderIds => throw _privateConstructorUsedError;

  /// Whether to recursively index subfolders
  bool get recursive => throw _privateConstructorUsedError;

  /// Whether to compute folder sizes (can be expensive for large folders)
  bool get computeSizes => throw _privateConstructorUsedError;

  /// Whether to update child references
  bool get updateChildren => throw _privateConstructorUsedError;

  /// Maximum depth for recursive indexing (null = unlimited)
  int? get maxDepth => throw _privateConstructorUsedError;

  /// Serializes this CacheFoldersTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CacheFoldersTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CacheFoldersTaskCopyWith<CacheFoldersTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheFoldersTaskCopyWith<$Res> {
  factory $CacheFoldersTaskCopyWith(
    CacheFoldersTask value,
    $Res Function(CacheFoldersTask) then,
  ) = _$CacheFoldersTaskCopyWithImpl<$Res, CacheFoldersTask>;
  @useResult
  $Res call({
    List<String> folderIds,
    bool recursive,
    bool computeSizes,
    bool updateChildren,
    int? maxDepth,
  });
}

/// @nodoc
class _$CacheFoldersTaskCopyWithImpl<$Res, $Val extends CacheFoldersTask>
    implements $CacheFoldersTaskCopyWith<$Res> {
  _$CacheFoldersTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CacheFoldersTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderIds = null,
    Object? recursive = null,
    Object? computeSizes = null,
    Object? updateChildren = null,
    Object? maxDepth = freezed,
  }) {
    return _then(
      _value.copyWith(
            folderIds: null == folderIds
                ? _value.folderIds
                : folderIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            recursive: null == recursive
                ? _value.recursive
                : recursive // ignore: cast_nullable_to_non_nullable
                      as bool,
            computeSizes: null == computeSizes
                ? _value.computeSizes
                : computeSizes // ignore: cast_nullable_to_non_nullable
                      as bool,
            updateChildren: null == updateChildren
                ? _value.updateChildren
                : updateChildren // ignore: cast_nullable_to_non_nullable
                      as bool,
            maxDepth: freezed == maxDepth
                ? _value.maxDepth
                : maxDepth // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CacheFoldersTaskImplCopyWith<$Res>
    implements $CacheFoldersTaskCopyWith<$Res> {
  factory _$$CacheFoldersTaskImplCopyWith(
    _$CacheFoldersTaskImpl value,
    $Res Function(_$CacheFoldersTaskImpl) then,
  ) = __$$CacheFoldersTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> folderIds,
    bool recursive,
    bool computeSizes,
    bool updateChildren,
    int? maxDepth,
  });
}

/// @nodoc
class __$$CacheFoldersTaskImplCopyWithImpl<$Res>
    extends _$CacheFoldersTaskCopyWithImpl<$Res, _$CacheFoldersTaskImpl>
    implements _$$CacheFoldersTaskImplCopyWith<$Res> {
  __$$CacheFoldersTaskImplCopyWithImpl(
    _$CacheFoldersTaskImpl _value,
    $Res Function(_$CacheFoldersTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CacheFoldersTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderIds = null,
    Object? recursive = null,
    Object? computeSizes = null,
    Object? updateChildren = null,
    Object? maxDepth = freezed,
  }) {
    return _then(
      _$CacheFoldersTaskImpl(
        folderIds: null == folderIds
            ? _value._folderIds
            : folderIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        recursive: null == recursive
            ? _value.recursive
            : recursive // ignore: cast_nullable_to_non_nullable
                  as bool,
        computeSizes: null == computeSizes
            ? _value.computeSizes
            : computeSizes // ignore: cast_nullable_to_non_nullable
                  as bool,
        updateChildren: null == updateChildren
            ? _value.updateChildren
            : updateChildren // ignore: cast_nullable_to_non_nullable
                  as bool,
        maxDepth: freezed == maxDepth
            ? _value.maxDepth
            : maxDepth // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CacheFoldersTaskImpl extends _CacheFoldersTask {
  const _$CacheFoldersTaskImpl({
    required final List<String> folderIds,
    this.recursive = false,
    this.computeSizes = true,
    this.updateChildren = true,
    this.maxDepth,
  }) : _folderIds = folderIds,
       super._();

  factory _$CacheFoldersTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$CacheFoldersTaskImplFromJson(json);

  /// IDs of folders to cache/refresh
  final List<String> _folderIds;

  /// IDs of folders to cache/refresh
  @override
  List<String> get folderIds {
    if (_folderIds is EqualUnmodifiableListView) return _folderIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_folderIds);
  }

  /// Whether to recursively index subfolders
  @override
  @JsonKey()
  final bool recursive;

  /// Whether to compute folder sizes (can be expensive for large folders)
  @override
  @JsonKey()
  final bool computeSizes;

  /// Whether to update child references
  @override
  @JsonKey()
  final bool updateChildren;

  /// Maximum depth for recursive indexing (null = unlimited)
  @override
  final int? maxDepth;

  @override
  String toString() {
    return 'CacheFoldersTask(folderIds: $folderIds, recursive: $recursive, computeSizes: $computeSizes, updateChildren: $updateChildren, maxDepth: $maxDepth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFoldersTaskImpl &&
            const DeepCollectionEquality().equals(
              other._folderIds,
              _folderIds,
            ) &&
            (identical(other.recursive, recursive) ||
                other.recursive == recursive) &&
            (identical(other.computeSizes, computeSizes) ||
                other.computeSizes == computeSizes) &&
            (identical(other.updateChildren, updateChildren) ||
                other.updateChildren == updateChildren) &&
            (identical(other.maxDepth, maxDepth) ||
                other.maxDepth == maxDepth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_folderIds),
    recursive,
    computeSizes,
    updateChildren,
    maxDepth,
  );

  /// Create a copy of CacheFoldersTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFoldersTaskImplCopyWith<_$CacheFoldersTaskImpl> get copyWith =>
      __$$CacheFoldersTaskImplCopyWithImpl<_$CacheFoldersTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CacheFoldersTaskImplToJson(this);
  }
}

abstract class _CacheFoldersTask extends CacheFoldersTask {
  const factory _CacheFoldersTask({
    required final List<String> folderIds,
    final bool recursive,
    final bool computeSizes,
    final bool updateChildren,
    final int? maxDepth,
  }) = _$CacheFoldersTaskImpl;
  const _CacheFoldersTask._() : super._();

  factory _CacheFoldersTask.fromJson(Map<String, dynamic> json) =
      _$CacheFoldersTaskImpl.fromJson;

  /// IDs of folders to cache/refresh
  @override
  List<String> get folderIds;

  /// Whether to recursively index subfolders
  @override
  bool get recursive;

  /// Whether to compute folder sizes (can be expensive for large folders)
  @override
  bool get computeSizes;

  /// Whether to update child references
  @override
  bool get updateChildren;

  /// Maximum depth for recursive indexing (null = unlimited)
  @override
  int? get maxDepth;

  /// Create a copy of CacheFoldersTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheFoldersTaskImplCopyWith<_$CacheFoldersTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FolderCacheResult _$FolderCacheResultFromJson(Map<String, dynamic> json) {
  return _FolderCacheResult.fromJson(json);
}

/// @nodoc
mixin _$FolderCacheResult {
  String get folderId => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int get filesCount => throw _privateConstructorUsedError;
  int? get totalSizeBytes => throw _privateConstructorUsedError;
  int get childrenCount => throw _privateConstructorUsedError;

  /// Serializes this FolderCacheResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FolderCacheResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FolderCacheResultCopyWith<FolderCacheResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderCacheResultCopyWith<$Res> {
  factory $FolderCacheResultCopyWith(
    FolderCacheResult value,
    $Res Function(FolderCacheResult) then,
  ) = _$FolderCacheResultCopyWithImpl<$Res, FolderCacheResult>;
  @useResult
  $Res call({
    String folderId,
    bool success,
    String? error,
    int filesCount,
    int? totalSizeBytes,
    int childrenCount,
  });
}

/// @nodoc
class _$FolderCacheResultCopyWithImpl<$Res, $Val extends FolderCacheResult>
    implements $FolderCacheResultCopyWith<$Res> {
  _$FolderCacheResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FolderCacheResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = null,
    Object? success = null,
    Object? error = freezed,
    Object? filesCount = null,
    Object? totalSizeBytes = freezed,
    Object? childrenCount = null,
  }) {
    return _then(
      _value.copyWith(
            folderId: null == folderId
                ? _value.folderId
                : folderId // ignore: cast_nullable_to_non_nullable
                      as String,
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            filesCount: null == filesCount
                ? _value.filesCount
                : filesCount // ignore: cast_nullable_to_non_nullable
                      as int,
            totalSizeBytes: freezed == totalSizeBytes
                ? _value.totalSizeBytes
                : totalSizeBytes // ignore: cast_nullable_to_non_nullable
                      as int?,
            childrenCount: null == childrenCount
                ? _value.childrenCount
                : childrenCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FolderCacheResultImplCopyWith<$Res>
    implements $FolderCacheResultCopyWith<$Res> {
  factory _$$FolderCacheResultImplCopyWith(
    _$FolderCacheResultImpl value,
    $Res Function(_$FolderCacheResultImpl) then,
  ) = __$$FolderCacheResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String folderId,
    bool success,
    String? error,
    int filesCount,
    int? totalSizeBytes,
    int childrenCount,
  });
}

/// @nodoc
class __$$FolderCacheResultImplCopyWithImpl<$Res>
    extends _$FolderCacheResultCopyWithImpl<$Res, _$FolderCacheResultImpl>
    implements _$$FolderCacheResultImplCopyWith<$Res> {
  __$$FolderCacheResultImplCopyWithImpl(
    _$FolderCacheResultImpl _value,
    $Res Function(_$FolderCacheResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FolderCacheResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = null,
    Object? success = null,
    Object? error = freezed,
    Object? filesCount = null,
    Object? totalSizeBytes = freezed,
    Object? childrenCount = null,
  }) {
    return _then(
      _$FolderCacheResultImpl(
        folderId: null == folderId
            ? _value.folderId
            : folderId // ignore: cast_nullable_to_non_nullable
                  as String,
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        filesCount: null == filesCount
            ? _value.filesCount
            : filesCount // ignore: cast_nullable_to_non_nullable
                  as int,
        totalSizeBytes: freezed == totalSizeBytes
            ? _value.totalSizeBytes
            : totalSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int?,
        childrenCount: null == childrenCount
            ? _value.childrenCount
            : childrenCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FolderCacheResultImpl implements _FolderCacheResult {
  const _$FolderCacheResultImpl({
    required this.folderId,
    required this.success,
    this.error,
    this.filesCount = 0,
    this.totalSizeBytes,
    this.childrenCount = 0,
  });

  factory _$FolderCacheResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$FolderCacheResultImplFromJson(json);

  @override
  final String folderId;
  @override
  final bool success;
  @override
  final String? error;
  @override
  @JsonKey()
  final int filesCount;
  @override
  final int? totalSizeBytes;
  @override
  @JsonKey()
  final int childrenCount;

  @override
  String toString() {
    return 'FolderCacheResult(folderId: $folderId, success: $success, error: $error, filesCount: $filesCount, totalSizeBytes: $totalSizeBytes, childrenCount: $childrenCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderCacheResultImpl &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.filesCount, filesCount) ||
                other.filesCount == filesCount) &&
            (identical(other.totalSizeBytes, totalSizeBytes) ||
                other.totalSizeBytes == totalSizeBytes) &&
            (identical(other.childrenCount, childrenCount) ||
                other.childrenCount == childrenCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    folderId,
    success,
    error,
    filesCount,
    totalSizeBytes,
    childrenCount,
  );

  /// Create a copy of FolderCacheResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FolderCacheResultImplCopyWith<_$FolderCacheResultImpl> get copyWith =>
      __$$FolderCacheResultImplCopyWithImpl<_$FolderCacheResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderCacheResultImplToJson(this);
  }
}

abstract class _FolderCacheResult implements FolderCacheResult {
  const factory _FolderCacheResult({
    required final String folderId,
    required final bool success,
    final String? error,
    final int filesCount,
    final int? totalSizeBytes,
    final int childrenCount,
  }) = _$FolderCacheResultImpl;

  factory _FolderCacheResult.fromJson(Map<String, dynamic> json) =
      _$FolderCacheResultImpl.fromJson;

  @override
  String get folderId;
  @override
  bool get success;
  @override
  String? get error;
  @override
  int get filesCount;
  @override
  int? get totalSizeBytes;
  @override
  int get childrenCount;

  /// Create a copy of FolderCacheResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FolderCacheResultImplCopyWith<_$FolderCacheResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CacheFoldersResult _$CacheFoldersResultFromJson(Map<String, dynamic> json) {
  return _CacheFoldersResult.fromJson(json);
}

/// @nodoc
mixin _$CacheFoldersResult {
  List<FolderCacheResult> get folderResults =>
      throw _privateConstructorUsedError;
  int get totalFoldersProcessed => throw _privateConstructorUsedError;
  int get totalFilesCounted => throw _privateConstructorUsedError;
  int get totalSizeBytes => throw _privateConstructorUsedError;

  /// Serializes this CacheFoldersResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CacheFoldersResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CacheFoldersResultCopyWith<CacheFoldersResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheFoldersResultCopyWith<$Res> {
  factory $CacheFoldersResultCopyWith(
    CacheFoldersResult value,
    $Res Function(CacheFoldersResult) then,
  ) = _$CacheFoldersResultCopyWithImpl<$Res, CacheFoldersResult>;
  @useResult
  $Res call({
    List<FolderCacheResult> folderResults,
    int totalFoldersProcessed,
    int totalFilesCounted,
    int totalSizeBytes,
  });
}

/// @nodoc
class _$CacheFoldersResultCopyWithImpl<$Res, $Val extends CacheFoldersResult>
    implements $CacheFoldersResultCopyWith<$Res> {
  _$CacheFoldersResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CacheFoldersResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderResults = null,
    Object? totalFoldersProcessed = null,
    Object? totalFilesCounted = null,
    Object? totalSizeBytes = null,
  }) {
    return _then(
      _value.copyWith(
            folderResults: null == folderResults
                ? _value.folderResults
                : folderResults // ignore: cast_nullable_to_non_nullable
                      as List<FolderCacheResult>,
            totalFoldersProcessed: null == totalFoldersProcessed
                ? _value.totalFoldersProcessed
                : totalFoldersProcessed // ignore: cast_nullable_to_non_nullable
                      as int,
            totalFilesCounted: null == totalFilesCounted
                ? _value.totalFilesCounted
                : totalFilesCounted // ignore: cast_nullable_to_non_nullable
                      as int,
            totalSizeBytes: null == totalSizeBytes
                ? _value.totalSizeBytes
                : totalSizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CacheFoldersResultImplCopyWith<$Res>
    implements $CacheFoldersResultCopyWith<$Res> {
  factory _$$CacheFoldersResultImplCopyWith(
    _$CacheFoldersResultImpl value,
    $Res Function(_$CacheFoldersResultImpl) then,
  ) = __$$CacheFoldersResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<FolderCacheResult> folderResults,
    int totalFoldersProcessed,
    int totalFilesCounted,
    int totalSizeBytes,
  });
}

/// @nodoc
class __$$CacheFoldersResultImplCopyWithImpl<$Res>
    extends _$CacheFoldersResultCopyWithImpl<$Res, _$CacheFoldersResultImpl>
    implements _$$CacheFoldersResultImplCopyWith<$Res> {
  __$$CacheFoldersResultImplCopyWithImpl(
    _$CacheFoldersResultImpl _value,
    $Res Function(_$CacheFoldersResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CacheFoldersResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderResults = null,
    Object? totalFoldersProcessed = null,
    Object? totalFilesCounted = null,
    Object? totalSizeBytes = null,
  }) {
    return _then(
      _$CacheFoldersResultImpl(
        folderResults: null == folderResults
            ? _value._folderResults
            : folderResults // ignore: cast_nullable_to_non_nullable
                  as List<FolderCacheResult>,
        totalFoldersProcessed: null == totalFoldersProcessed
            ? _value.totalFoldersProcessed
            : totalFoldersProcessed // ignore: cast_nullable_to_non_nullable
                  as int,
        totalFilesCounted: null == totalFilesCounted
            ? _value.totalFilesCounted
            : totalFilesCounted // ignore: cast_nullable_to_non_nullable
                  as int,
        totalSizeBytes: null == totalSizeBytes
            ? _value.totalSizeBytes
            : totalSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CacheFoldersResultImpl implements _CacheFoldersResult {
  const _$CacheFoldersResultImpl({
    required final List<FolderCacheResult> folderResults,
    required this.totalFoldersProcessed,
    required this.totalFilesCounted,
    required this.totalSizeBytes,
  }) : _folderResults = folderResults;

  factory _$CacheFoldersResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CacheFoldersResultImplFromJson(json);

  final List<FolderCacheResult> _folderResults;
  @override
  List<FolderCacheResult> get folderResults {
    if (_folderResults is EqualUnmodifiableListView) return _folderResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_folderResults);
  }

  @override
  final int totalFoldersProcessed;
  @override
  final int totalFilesCounted;
  @override
  final int totalSizeBytes;

  @override
  String toString() {
    return 'CacheFoldersResult(folderResults: $folderResults, totalFoldersProcessed: $totalFoldersProcessed, totalFilesCounted: $totalFilesCounted, totalSizeBytes: $totalSizeBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFoldersResultImpl &&
            const DeepCollectionEquality().equals(
              other._folderResults,
              _folderResults,
            ) &&
            (identical(other.totalFoldersProcessed, totalFoldersProcessed) ||
                other.totalFoldersProcessed == totalFoldersProcessed) &&
            (identical(other.totalFilesCounted, totalFilesCounted) ||
                other.totalFilesCounted == totalFilesCounted) &&
            (identical(other.totalSizeBytes, totalSizeBytes) ||
                other.totalSizeBytes == totalSizeBytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_folderResults),
    totalFoldersProcessed,
    totalFilesCounted,
    totalSizeBytes,
  );

  /// Create a copy of CacheFoldersResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFoldersResultImplCopyWith<_$CacheFoldersResultImpl> get copyWith =>
      __$$CacheFoldersResultImplCopyWithImpl<_$CacheFoldersResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CacheFoldersResultImplToJson(this);
  }
}

abstract class _CacheFoldersResult implements CacheFoldersResult {
  const factory _CacheFoldersResult({
    required final List<FolderCacheResult> folderResults,
    required final int totalFoldersProcessed,
    required final int totalFilesCounted,
    required final int totalSizeBytes,
  }) = _$CacheFoldersResultImpl;

  factory _CacheFoldersResult.fromJson(Map<String, dynamic> json) =
      _$CacheFoldersResultImpl.fromJson;

  @override
  List<FolderCacheResult> get folderResults;
  @override
  int get totalFoldersProcessed;
  @override
  int get totalFilesCounted;
  @override
  int get totalSizeBytes;

  /// Create a copy of CacheFoldersResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheFoldersResultImplCopyWith<_$CacheFoldersResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
