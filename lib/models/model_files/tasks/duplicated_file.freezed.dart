// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duplicated_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DuplicatedFileGroup _$DuplicatedFileGroupFromJson(Map<String, dynamic> json) {
  return _DuplicatedFileGroup.fromJson(json);
}

/// @nodoc
mixin _$DuplicatedFileGroup {
  /// Content hash that identifies this duplicate group
  String get contentHash => throw _privateConstructorUsedError;

  /// Size in bytes (all files should have same size)
  int get sizeBytes => throw _privateConstructorUsedError;

  /// List of file entries that are duplicates
  List<FsEntry> get duplicates => throw _privateConstructorUsedError;

  /// Optional metadata about when this duplicate group was detected
  DateTime? get detectedAt => throw _privateConstructorUsedError;

  /// Serializes this DuplicatedFileGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DuplicatedFileGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DuplicatedFileGroupCopyWith<DuplicatedFileGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuplicatedFileGroupCopyWith<$Res> {
  factory $DuplicatedFileGroupCopyWith(
    DuplicatedFileGroup value,
    $Res Function(DuplicatedFileGroup) then,
  ) = _$DuplicatedFileGroupCopyWithImpl<$Res, DuplicatedFileGroup>;
  @useResult
  $Res call({
    String contentHash,
    int sizeBytes,
    List<FsEntry> duplicates,
    DateTime? detectedAt,
  });
}

/// @nodoc
class _$DuplicatedFileGroupCopyWithImpl<$Res, $Val extends DuplicatedFileGroup>
    implements $DuplicatedFileGroupCopyWith<$Res> {
  _$DuplicatedFileGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DuplicatedFileGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentHash = null,
    Object? sizeBytes = null,
    Object? duplicates = null,
    Object? detectedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            contentHash: null == contentHash
                ? _value.contentHash
                : contentHash // ignore: cast_nullable_to_non_nullable
                      as String,
            sizeBytes: null == sizeBytes
                ? _value.sizeBytes
                : sizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
            duplicates: null == duplicates
                ? _value.duplicates
                : duplicates // ignore: cast_nullable_to_non_nullable
                      as List<FsEntry>,
            detectedAt: freezed == detectedAt
                ? _value.detectedAt
                : detectedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DuplicatedFileGroupImplCopyWith<$Res>
    implements $DuplicatedFileGroupCopyWith<$Res> {
  factory _$$DuplicatedFileGroupImplCopyWith(
    _$DuplicatedFileGroupImpl value,
    $Res Function(_$DuplicatedFileGroupImpl) then,
  ) = __$$DuplicatedFileGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String contentHash,
    int sizeBytes,
    List<FsEntry> duplicates,
    DateTime? detectedAt,
  });
}

/// @nodoc
class __$$DuplicatedFileGroupImplCopyWithImpl<$Res>
    extends _$DuplicatedFileGroupCopyWithImpl<$Res, _$DuplicatedFileGroupImpl>
    implements _$$DuplicatedFileGroupImplCopyWith<$Res> {
  __$$DuplicatedFileGroupImplCopyWithImpl(
    _$DuplicatedFileGroupImpl _value,
    $Res Function(_$DuplicatedFileGroupImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DuplicatedFileGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentHash = null,
    Object? sizeBytes = null,
    Object? duplicates = null,
    Object? detectedAt = freezed,
  }) {
    return _then(
      _$DuplicatedFileGroupImpl(
        contentHash: null == contentHash
            ? _value.contentHash
            : contentHash // ignore: cast_nullable_to_non_nullable
                  as String,
        sizeBytes: null == sizeBytes
            ? _value.sizeBytes
            : sizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        duplicates: null == duplicates
            ? _value._duplicates
            : duplicates // ignore: cast_nullable_to_non_nullable
                  as List<FsEntry>,
        detectedAt: freezed == detectedAt
            ? _value.detectedAt
            : detectedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DuplicatedFileGroupImpl extends _DuplicatedFileGroup {
  const _$DuplicatedFileGroupImpl({
    required this.contentHash,
    required this.sizeBytes,
    final List<FsEntry> duplicates = const <FsEntry>[],
    this.detectedAt,
  }) : _duplicates = duplicates,
       super._();

  factory _$DuplicatedFileGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$DuplicatedFileGroupImplFromJson(json);

  /// Content hash that identifies this duplicate group
  @override
  final String contentHash;

  /// Size in bytes (all files should have same size)
  @override
  final int sizeBytes;

  /// List of file entries that are duplicates
  final List<FsEntry> _duplicates;

  /// List of file entries that are duplicates
  @override
  @JsonKey()
  List<FsEntry> get duplicates {
    if (_duplicates is EqualUnmodifiableListView) return _duplicates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_duplicates);
  }

  /// Optional metadata about when this duplicate group was detected
  @override
  final DateTime? detectedAt;

  @override
  String toString() {
    return 'DuplicatedFileGroup(contentHash: $contentHash, sizeBytes: $sizeBytes, duplicates: $duplicates, detectedAt: $detectedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuplicatedFileGroupImpl &&
            (identical(other.contentHash, contentHash) ||
                other.contentHash == contentHash) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes) &&
            const DeepCollectionEquality().equals(
              other._duplicates,
              _duplicates,
            ) &&
            (identical(other.detectedAt, detectedAt) ||
                other.detectedAt == detectedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    contentHash,
    sizeBytes,
    const DeepCollectionEquality().hash(_duplicates),
    detectedAt,
  );

  /// Create a copy of DuplicatedFileGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DuplicatedFileGroupImplCopyWith<_$DuplicatedFileGroupImpl> get copyWith =>
      __$$DuplicatedFileGroupImplCopyWithImpl<_$DuplicatedFileGroupImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DuplicatedFileGroupImplToJson(this);
  }
}

abstract class _DuplicatedFileGroup extends DuplicatedFileGroup {
  const factory _DuplicatedFileGroup({
    required final String contentHash,
    required final int sizeBytes,
    final List<FsEntry> duplicates,
    final DateTime? detectedAt,
  }) = _$DuplicatedFileGroupImpl;
  const _DuplicatedFileGroup._() : super._();

  factory _DuplicatedFileGroup.fromJson(Map<String, dynamic> json) =
      _$DuplicatedFileGroupImpl.fromJson;

  /// Content hash that identifies this duplicate group
  @override
  String get contentHash;

  /// Size in bytes (all files should have same size)
  @override
  int get sizeBytes;

  /// List of file entries that are duplicates
  @override
  List<FsEntry> get duplicates;

  /// Optional metadata about when this duplicate group was detected
  @override
  DateTime? get detectedAt;

  /// Create a copy of DuplicatedFileGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DuplicatedFileGroupImplCopyWith<_$DuplicatedFileGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DuplicatedFileTask _$DuplicatedFileTaskFromJson(Map<String, dynamic> json) {
  return _DuplicatedFileTask.fromJson(json);
}

/// @nodoc
mixin _$DuplicatedFileTask {
  /// Scope of search for duplicates (folder ID or null for entire storage)
  String? get scopeFolderId => throw _privateConstructorUsedError;

  /// Minimum file size to consider for duplicate detection (bytes)
  int get minSizeBytes => throw _privateConstructorUsedError;

  /// Hash algorithm to use for content comparison
  String get hashAlgorithm => throw _privateConstructorUsedError;

  /// Whether to include file metadata in comparison
  bool get compareMetadata => throw _privateConstructorUsedError;

  /// Action to take on duplicates: 'group', 'mark', 'delete', 'move'
  String get action => throw _privateConstructorUsedError;

  /// Serializes this DuplicatedFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DuplicatedFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DuplicatedFileTaskCopyWith<DuplicatedFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuplicatedFileTaskCopyWith<$Res> {
  factory $DuplicatedFileTaskCopyWith(
    DuplicatedFileTask value,
    $Res Function(DuplicatedFileTask) then,
  ) = _$DuplicatedFileTaskCopyWithImpl<$Res, DuplicatedFileTask>;
  @useResult
  $Res call({
    String? scopeFolderId,
    int minSizeBytes,
    String hashAlgorithm,
    bool compareMetadata,
    String action,
  });
}

/// @nodoc
class _$DuplicatedFileTaskCopyWithImpl<$Res, $Val extends DuplicatedFileTask>
    implements $DuplicatedFileTaskCopyWith<$Res> {
  _$DuplicatedFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DuplicatedFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scopeFolderId = freezed,
    Object? minSizeBytes = null,
    Object? hashAlgorithm = null,
    Object? compareMetadata = null,
    Object? action = null,
  }) {
    return _then(
      _value.copyWith(
            scopeFolderId: freezed == scopeFolderId
                ? _value.scopeFolderId
                : scopeFolderId // ignore: cast_nullable_to_non_nullable
                      as String?,
            minSizeBytes: null == minSizeBytes
                ? _value.minSizeBytes
                : minSizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
            hashAlgorithm: null == hashAlgorithm
                ? _value.hashAlgorithm
                : hashAlgorithm // ignore: cast_nullable_to_non_nullable
                      as String,
            compareMetadata: null == compareMetadata
                ? _value.compareMetadata
                : compareMetadata // ignore: cast_nullable_to_non_nullable
                      as bool,
            action: null == action
                ? _value.action
                : action // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DuplicatedFileTaskImplCopyWith<$Res>
    implements $DuplicatedFileTaskCopyWith<$Res> {
  factory _$$DuplicatedFileTaskImplCopyWith(
    _$DuplicatedFileTaskImpl value,
    $Res Function(_$DuplicatedFileTaskImpl) then,
  ) = __$$DuplicatedFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? scopeFolderId,
    int minSizeBytes,
    String hashAlgorithm,
    bool compareMetadata,
    String action,
  });
}

/// @nodoc
class __$$DuplicatedFileTaskImplCopyWithImpl<$Res>
    extends _$DuplicatedFileTaskCopyWithImpl<$Res, _$DuplicatedFileTaskImpl>
    implements _$$DuplicatedFileTaskImplCopyWith<$Res> {
  __$$DuplicatedFileTaskImplCopyWithImpl(
    _$DuplicatedFileTaskImpl _value,
    $Res Function(_$DuplicatedFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DuplicatedFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scopeFolderId = freezed,
    Object? minSizeBytes = null,
    Object? hashAlgorithm = null,
    Object? compareMetadata = null,
    Object? action = null,
  }) {
    return _then(
      _$DuplicatedFileTaskImpl(
        scopeFolderId: freezed == scopeFolderId
            ? _value.scopeFolderId
            : scopeFolderId // ignore: cast_nullable_to_non_nullable
                  as String?,
        minSizeBytes: null == minSizeBytes
            ? _value.minSizeBytes
            : minSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        hashAlgorithm: null == hashAlgorithm
            ? _value.hashAlgorithm
            : hashAlgorithm // ignore: cast_nullable_to_non_nullable
                  as String,
        compareMetadata: null == compareMetadata
            ? _value.compareMetadata
            : compareMetadata // ignore: cast_nullable_to_non_nullable
                  as bool,
        action: null == action
            ? _value.action
            : action // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DuplicatedFileTaskImpl extends _DuplicatedFileTask {
  const _$DuplicatedFileTaskImpl({
    required this.scopeFolderId,
    this.minSizeBytes = 0,
    this.hashAlgorithm = 'sha256',
    this.compareMetadata = false,
    this.action = 'group',
  }) : super._();

  factory _$DuplicatedFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$DuplicatedFileTaskImplFromJson(json);

  /// Scope of search for duplicates (folder ID or null for entire storage)
  @override
  final String? scopeFolderId;

  /// Minimum file size to consider for duplicate detection (bytes)
  @override
  @JsonKey()
  final int minSizeBytes;

  /// Hash algorithm to use for content comparison
  @override
  @JsonKey()
  final String hashAlgorithm;

  /// Whether to include file metadata in comparison
  @override
  @JsonKey()
  final bool compareMetadata;

  /// Action to take on duplicates: 'group', 'mark', 'delete', 'move'
  @override
  @JsonKey()
  final String action;

  @override
  String toString() {
    return 'DuplicatedFileTask(scopeFolderId: $scopeFolderId, minSizeBytes: $minSizeBytes, hashAlgorithm: $hashAlgorithm, compareMetadata: $compareMetadata, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuplicatedFileTaskImpl &&
            (identical(other.scopeFolderId, scopeFolderId) ||
                other.scopeFolderId == scopeFolderId) &&
            (identical(other.minSizeBytes, minSizeBytes) ||
                other.minSizeBytes == minSizeBytes) &&
            (identical(other.hashAlgorithm, hashAlgorithm) ||
                other.hashAlgorithm == hashAlgorithm) &&
            (identical(other.compareMetadata, compareMetadata) ||
                other.compareMetadata == compareMetadata) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    scopeFolderId,
    minSizeBytes,
    hashAlgorithm,
    compareMetadata,
    action,
  );

  /// Create a copy of DuplicatedFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DuplicatedFileTaskImplCopyWith<_$DuplicatedFileTaskImpl> get copyWith =>
      __$$DuplicatedFileTaskImplCopyWithImpl<_$DuplicatedFileTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DuplicatedFileTaskImplToJson(this);
  }
}

abstract class _DuplicatedFileTask extends DuplicatedFileTask {
  const factory _DuplicatedFileTask({
    required final String? scopeFolderId,
    final int minSizeBytes,
    final String hashAlgorithm,
    final bool compareMetadata,
    final String action,
  }) = _$DuplicatedFileTaskImpl;
  const _DuplicatedFileTask._() : super._();

  factory _DuplicatedFileTask.fromJson(Map<String, dynamic> json) =
      _$DuplicatedFileTaskImpl.fromJson;

  /// Scope of search for duplicates (folder ID or null for entire storage)
  @override
  String? get scopeFolderId;

  /// Minimum file size to consider for duplicate detection (bytes)
  @override
  int get minSizeBytes;

  /// Hash algorithm to use for content comparison
  @override
  String get hashAlgorithm;

  /// Whether to include file metadata in comparison
  @override
  bool get compareMetadata;

  /// Action to take on duplicates: 'group', 'mark', 'delete', 'move'
  @override
  String get action;

  /// Create a copy of DuplicatedFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DuplicatedFileTaskImplCopyWith<_$DuplicatedFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DuplicatedFileResult _$DuplicatedFileResultFromJson(Map<String, dynamic> json) {
  return _DuplicatedFileResult.fromJson(json);
}

/// @nodoc
mixin _$DuplicatedFileResult {
  /// Groups of duplicate files found
  List<DuplicatedFileGroup> get duplicateGroups =>
      throw _privateConstructorUsedError;

  /// Total number of files scanned
  int get totalFilesScanned => throw _privateConstructorUsedError;

  /// Number of duplicate groups found
  int get totalDuplicateGroups => throw _privateConstructorUsedError;

  /// Total number of files that are duplicates (including originals)
  int get totalDuplicateFiles => throw _privateConstructorUsedError;

  /// Results of any actions taken
  Map<String, dynamic> get actionResults => throw _privateConstructorUsedError;

  /// Any errors encountered during processing
  List<String> get errors => throw _privateConstructorUsedError;

  /// Serializes this DuplicatedFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DuplicatedFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DuplicatedFileResultCopyWith<DuplicatedFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuplicatedFileResultCopyWith<$Res> {
  factory $DuplicatedFileResultCopyWith(
    DuplicatedFileResult value,
    $Res Function(DuplicatedFileResult) then,
  ) = _$DuplicatedFileResultCopyWithImpl<$Res, DuplicatedFileResult>;
  @useResult
  $Res call({
    List<DuplicatedFileGroup> duplicateGroups,
    int totalFilesScanned,
    int totalDuplicateGroups,
    int totalDuplicateFiles,
    Map<String, dynamic> actionResults,
    List<String> errors,
  });
}

/// @nodoc
class _$DuplicatedFileResultCopyWithImpl<
  $Res,
  $Val extends DuplicatedFileResult
>
    implements $DuplicatedFileResultCopyWith<$Res> {
  _$DuplicatedFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DuplicatedFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duplicateGroups = null,
    Object? totalFilesScanned = null,
    Object? totalDuplicateGroups = null,
    Object? totalDuplicateFiles = null,
    Object? actionResults = null,
    Object? errors = null,
  }) {
    return _then(
      _value.copyWith(
            duplicateGroups: null == duplicateGroups
                ? _value.duplicateGroups
                : duplicateGroups // ignore: cast_nullable_to_non_nullable
                      as List<DuplicatedFileGroup>,
            totalFilesScanned: null == totalFilesScanned
                ? _value.totalFilesScanned
                : totalFilesScanned // ignore: cast_nullable_to_non_nullable
                      as int,
            totalDuplicateGroups: null == totalDuplicateGroups
                ? _value.totalDuplicateGroups
                : totalDuplicateGroups // ignore: cast_nullable_to_non_nullable
                      as int,
            totalDuplicateFiles: null == totalDuplicateFiles
                ? _value.totalDuplicateFiles
                : totalDuplicateFiles // ignore: cast_nullable_to_non_nullable
                      as int,
            actionResults: null == actionResults
                ? _value.actionResults
                : actionResults // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
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
abstract class _$$DuplicatedFileResultImplCopyWith<$Res>
    implements $DuplicatedFileResultCopyWith<$Res> {
  factory _$$DuplicatedFileResultImplCopyWith(
    _$DuplicatedFileResultImpl value,
    $Res Function(_$DuplicatedFileResultImpl) then,
  ) = __$$DuplicatedFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<DuplicatedFileGroup> duplicateGroups,
    int totalFilesScanned,
    int totalDuplicateGroups,
    int totalDuplicateFiles,
    Map<String, dynamic> actionResults,
    List<String> errors,
  });
}

/// @nodoc
class __$$DuplicatedFileResultImplCopyWithImpl<$Res>
    extends _$DuplicatedFileResultCopyWithImpl<$Res, _$DuplicatedFileResultImpl>
    implements _$$DuplicatedFileResultImplCopyWith<$Res> {
  __$$DuplicatedFileResultImplCopyWithImpl(
    _$DuplicatedFileResultImpl _value,
    $Res Function(_$DuplicatedFileResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DuplicatedFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duplicateGroups = null,
    Object? totalFilesScanned = null,
    Object? totalDuplicateGroups = null,
    Object? totalDuplicateFiles = null,
    Object? actionResults = null,
    Object? errors = null,
  }) {
    return _then(
      _$DuplicatedFileResultImpl(
        duplicateGroups: null == duplicateGroups
            ? _value._duplicateGroups
            : duplicateGroups // ignore: cast_nullable_to_non_nullable
                  as List<DuplicatedFileGroup>,
        totalFilesScanned: null == totalFilesScanned
            ? _value.totalFilesScanned
            : totalFilesScanned // ignore: cast_nullable_to_non_nullable
                  as int,
        totalDuplicateGroups: null == totalDuplicateGroups
            ? _value.totalDuplicateGroups
            : totalDuplicateGroups // ignore: cast_nullable_to_non_nullable
                  as int,
        totalDuplicateFiles: null == totalDuplicateFiles
            ? _value.totalDuplicateFiles
            : totalDuplicateFiles // ignore: cast_nullable_to_non_nullable
                  as int,
        actionResults: null == actionResults
            ? _value._actionResults
            : actionResults // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
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
class _$DuplicatedFileResultImpl extends _DuplicatedFileResult {
  const _$DuplicatedFileResultImpl({
    required final List<DuplicatedFileGroup> duplicateGroups,
    required this.totalFilesScanned,
    required this.totalDuplicateGroups,
    required this.totalDuplicateFiles,
    final Map<String, dynamic> actionResults = const <String, dynamic>{},
    final List<String> errors = const <String>[],
  }) : _duplicateGroups = duplicateGroups,
       _actionResults = actionResults,
       _errors = errors,
       super._();

  factory _$DuplicatedFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DuplicatedFileResultImplFromJson(json);

  /// Groups of duplicate files found
  final List<DuplicatedFileGroup> _duplicateGroups;

  /// Groups of duplicate files found
  @override
  List<DuplicatedFileGroup> get duplicateGroups {
    if (_duplicateGroups is EqualUnmodifiableListView) return _duplicateGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_duplicateGroups);
  }

  /// Total number of files scanned
  @override
  final int totalFilesScanned;

  /// Number of duplicate groups found
  @override
  final int totalDuplicateGroups;

  /// Total number of files that are duplicates (including originals)
  @override
  final int totalDuplicateFiles;

  /// Results of any actions taken
  final Map<String, dynamic> _actionResults;

  /// Results of any actions taken
  @override
  @JsonKey()
  Map<String, dynamic> get actionResults {
    if (_actionResults is EqualUnmodifiableMapView) return _actionResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_actionResults);
  }

  /// Any errors encountered during processing
  final List<String> _errors;

  /// Any errors encountered during processing
  @override
  @JsonKey()
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'DuplicatedFileResult(duplicateGroups: $duplicateGroups, totalFilesScanned: $totalFilesScanned, totalDuplicateGroups: $totalDuplicateGroups, totalDuplicateFiles: $totalDuplicateFiles, actionResults: $actionResults, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuplicatedFileResultImpl &&
            const DeepCollectionEquality().equals(
              other._duplicateGroups,
              _duplicateGroups,
            ) &&
            (identical(other.totalFilesScanned, totalFilesScanned) ||
                other.totalFilesScanned == totalFilesScanned) &&
            (identical(other.totalDuplicateGroups, totalDuplicateGroups) ||
                other.totalDuplicateGroups == totalDuplicateGroups) &&
            (identical(other.totalDuplicateFiles, totalDuplicateFiles) ||
                other.totalDuplicateFiles == totalDuplicateFiles) &&
            const DeepCollectionEquality().equals(
              other._actionResults,
              _actionResults,
            ) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_duplicateGroups),
    totalFilesScanned,
    totalDuplicateGroups,
    totalDuplicateFiles,
    const DeepCollectionEquality().hash(_actionResults),
    const DeepCollectionEquality().hash(_errors),
  );

  /// Create a copy of DuplicatedFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DuplicatedFileResultImplCopyWith<_$DuplicatedFileResultImpl>
  get copyWith =>
      __$$DuplicatedFileResultImplCopyWithImpl<_$DuplicatedFileResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DuplicatedFileResultImplToJson(this);
  }
}

abstract class _DuplicatedFileResult extends DuplicatedFileResult {
  const factory _DuplicatedFileResult({
    required final List<DuplicatedFileGroup> duplicateGroups,
    required final int totalFilesScanned,
    required final int totalDuplicateGroups,
    required final int totalDuplicateFiles,
    final Map<String, dynamic> actionResults,
    final List<String> errors,
  }) = _$DuplicatedFileResultImpl;
  const _DuplicatedFileResult._() : super._();

  factory _DuplicatedFileResult.fromJson(Map<String, dynamic> json) =
      _$DuplicatedFileResultImpl.fromJson;

  /// Groups of duplicate files found
  @override
  List<DuplicatedFileGroup> get duplicateGroups;

  /// Total number of files scanned
  @override
  int get totalFilesScanned;

  /// Number of duplicate groups found
  @override
  int get totalDuplicateGroups;

  /// Total number of files that are duplicates (including originals)
  @override
  int get totalDuplicateFiles;

  /// Results of any actions taken
  @override
  Map<String, dynamic> get actionResults;

  /// Any errors encountered during processing
  @override
  List<String> get errors;

  /// Create a copy of DuplicatedFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DuplicatedFileResultImplCopyWith<_$DuplicatedFileResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}
