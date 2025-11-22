// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deduplicate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DuplicateGroup _$DuplicateGroupFromJson(Map<String, dynamic> json) {
  return _DuplicateGroup.fromJson(json);
}

/// @nodoc
mixin _$DuplicateGroup {
  /// The content hash that identifies this duplicate group
  String get contentHash => throw _privateConstructorUsedError;

  /// The size in bytes of the files in this group
  int get sizeBytes => throw _privateConstructorUsedError;

  /// List of file entries that are duplicates of each other
  List<String> get fileIds => throw _privateConstructorUsedError;

  /// Optional metadata about when this duplicate was detected
  DateTime? get detectedAt => throw _privateConstructorUsedError;

  /// Serializes this DuplicateGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DuplicateGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DuplicateGroupCopyWith<DuplicateGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuplicateGroupCopyWith<$Res> {
  factory $DuplicateGroupCopyWith(
    DuplicateGroup value,
    $Res Function(DuplicateGroup) then,
  ) = _$DuplicateGroupCopyWithImpl<$Res, DuplicateGroup>;
  @useResult
  $Res call({
    String contentHash,
    int sizeBytes,
    List<String> fileIds,
    DateTime? detectedAt,
  });
}

/// @nodoc
class _$DuplicateGroupCopyWithImpl<$Res, $Val extends DuplicateGroup>
    implements $DuplicateGroupCopyWith<$Res> {
  _$DuplicateGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DuplicateGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentHash = null,
    Object? sizeBytes = null,
    Object? fileIds = null,
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
            fileIds: null == fileIds
                ? _value.fileIds
                : fileIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
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
abstract class _$$DuplicateGroupImplCopyWith<$Res>
    implements $DuplicateGroupCopyWith<$Res> {
  factory _$$DuplicateGroupImplCopyWith(
    _$DuplicateGroupImpl value,
    $Res Function(_$DuplicateGroupImpl) then,
  ) = __$$DuplicateGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String contentHash,
    int sizeBytes,
    List<String> fileIds,
    DateTime? detectedAt,
  });
}

/// @nodoc
class __$$DuplicateGroupImplCopyWithImpl<$Res>
    extends _$DuplicateGroupCopyWithImpl<$Res, _$DuplicateGroupImpl>
    implements _$$DuplicateGroupImplCopyWith<$Res> {
  __$$DuplicateGroupImplCopyWithImpl(
    _$DuplicateGroupImpl _value,
    $Res Function(_$DuplicateGroupImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DuplicateGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentHash = null,
    Object? sizeBytes = null,
    Object? fileIds = null,
    Object? detectedAt = freezed,
  }) {
    return _then(
      _$DuplicateGroupImpl(
        contentHash: null == contentHash
            ? _value.contentHash
            : contentHash // ignore: cast_nullable_to_non_nullable
                  as String,
        sizeBytes: null == sizeBytes
            ? _value.sizeBytes
            : sizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        fileIds: null == fileIds
            ? _value._fileIds
            : fileIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
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
class _$DuplicateGroupImpl implements _DuplicateGroup {
  const _$DuplicateGroupImpl({
    required this.contentHash,
    required this.sizeBytes,
    final List<String> fileIds = const <String>[],
    this.detectedAt,
  }) : _fileIds = fileIds;

  factory _$DuplicateGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$DuplicateGroupImplFromJson(json);

  /// The content hash that identifies this duplicate group
  @override
  final String contentHash;

  /// The size in bytes of the files in this group
  @override
  final int sizeBytes;

  /// List of file entries that are duplicates of each other
  final List<String> _fileIds;

  /// List of file entries that are duplicates of each other
  @override
  @JsonKey()
  List<String> get fileIds {
    if (_fileIds is EqualUnmodifiableListView) return _fileIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileIds);
  }

  /// Optional metadata about when this duplicate was detected
  @override
  final DateTime? detectedAt;

  @override
  String toString() {
    return 'DuplicateGroup(contentHash: $contentHash, sizeBytes: $sizeBytes, fileIds: $fileIds, detectedAt: $detectedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuplicateGroupImpl &&
            (identical(other.contentHash, contentHash) ||
                other.contentHash == contentHash) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes) &&
            const DeepCollectionEquality().equals(other._fileIds, _fileIds) &&
            (identical(other.detectedAt, detectedAt) ||
                other.detectedAt == detectedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    contentHash,
    sizeBytes,
    const DeepCollectionEquality().hash(_fileIds),
    detectedAt,
  );

  /// Create a copy of DuplicateGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DuplicateGroupImplCopyWith<_$DuplicateGroupImpl> get copyWith =>
      __$$DuplicateGroupImplCopyWithImpl<_$DuplicateGroupImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DuplicateGroupImplToJson(this);
  }
}

abstract class _DuplicateGroup implements DuplicateGroup {
  const factory _DuplicateGroup({
    required final String contentHash,
    required final int sizeBytes,
    final List<String> fileIds,
    final DateTime? detectedAt,
  }) = _$DuplicateGroupImpl;

  factory _DuplicateGroup.fromJson(Map<String, dynamic> json) =
      _$DuplicateGroupImpl.fromJson;

  /// The content hash that identifies this duplicate group
  @override
  String get contentHash;

  /// The size in bytes of the files in this group
  @override
  int get sizeBytes;

  /// List of file entries that are duplicates of each other
  @override
  List<String> get fileIds;

  /// Optional metadata about when this duplicate was detected
  @override
  DateTime? get detectedAt;

  /// Create a copy of DuplicateGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DuplicateGroupImplCopyWith<_$DuplicateGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeduplicateTask _$DeduplicateTaskFromJson(Map<String, dynamic> json) {
  return _DeduplicateTask.fromJson(json);
}

/// @nodoc
mixin _$DeduplicateTask {
  /// The scope of the deduplication operation
  String get scopeFolderId => throw _privateConstructorUsedError;

  /// Matching criteria for detecting duplicates
  DuplicateMatchingCriteria get matchingCriteria =>
      throw _privateConstructorUsedError;

  /// Whether to automatically remove duplicates or just report them
  bool get removeDuplicates => throw _privateConstructorUsedError;

  /// Which files to keep when removing duplicates (keep first, newest, etc.)
  KeepFileStrategy get keepStrategy => throw _privateConstructorUsedError;

  /// Minimum file size to consider for deduplication (bytes)
  int get minFileSize => throw _privateConstructorUsedError;

  /// File kinds to include in deduplication (empty means all)
  List<FileKind> get includedKinds => throw _privateConstructorUsedError;

  /// Serializes this DeduplicateTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeduplicateTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeduplicateTaskCopyWith<DeduplicateTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeduplicateTaskCopyWith<$Res> {
  factory $DeduplicateTaskCopyWith(
    DeduplicateTask value,
    $Res Function(DeduplicateTask) then,
  ) = _$DeduplicateTaskCopyWithImpl<$Res, DeduplicateTask>;
  @useResult
  $Res call({
    String scopeFolderId,
    DuplicateMatchingCriteria matchingCriteria,
    bool removeDuplicates,
    KeepFileStrategy keepStrategy,
    int minFileSize,
    List<FileKind> includedKinds,
  });
}

/// @nodoc
class _$DeduplicateTaskCopyWithImpl<$Res, $Val extends DeduplicateTask>
    implements $DeduplicateTaskCopyWith<$Res> {
  _$DeduplicateTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeduplicateTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scopeFolderId = null,
    Object? matchingCriteria = null,
    Object? removeDuplicates = null,
    Object? keepStrategy = null,
    Object? minFileSize = null,
    Object? includedKinds = null,
  }) {
    return _then(
      _value.copyWith(
            scopeFolderId: null == scopeFolderId
                ? _value.scopeFolderId
                : scopeFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            matchingCriteria: null == matchingCriteria
                ? _value.matchingCriteria
                : matchingCriteria // ignore: cast_nullable_to_non_nullable
                      as DuplicateMatchingCriteria,
            removeDuplicates: null == removeDuplicates
                ? _value.removeDuplicates
                : removeDuplicates // ignore: cast_nullable_to_non_nullable
                      as bool,
            keepStrategy: null == keepStrategy
                ? _value.keepStrategy
                : keepStrategy // ignore: cast_nullable_to_non_nullable
                      as KeepFileStrategy,
            minFileSize: null == minFileSize
                ? _value.minFileSize
                : minFileSize // ignore: cast_nullable_to_non_nullable
                      as int,
            includedKinds: null == includedKinds
                ? _value.includedKinds
                : includedKinds // ignore: cast_nullable_to_non_nullable
                      as List<FileKind>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeduplicateTaskImplCopyWith<$Res>
    implements $DeduplicateTaskCopyWith<$Res> {
  factory _$$DeduplicateTaskImplCopyWith(
    _$DeduplicateTaskImpl value,
    $Res Function(_$DeduplicateTaskImpl) then,
  ) = __$$DeduplicateTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String scopeFolderId,
    DuplicateMatchingCriteria matchingCriteria,
    bool removeDuplicates,
    KeepFileStrategy keepStrategy,
    int minFileSize,
    List<FileKind> includedKinds,
  });
}

/// @nodoc
class __$$DeduplicateTaskImplCopyWithImpl<$Res>
    extends _$DeduplicateTaskCopyWithImpl<$Res, _$DeduplicateTaskImpl>
    implements _$$DeduplicateTaskImplCopyWith<$Res> {
  __$$DeduplicateTaskImplCopyWithImpl(
    _$DeduplicateTaskImpl _value,
    $Res Function(_$DeduplicateTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeduplicateTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scopeFolderId = null,
    Object? matchingCriteria = null,
    Object? removeDuplicates = null,
    Object? keepStrategy = null,
    Object? minFileSize = null,
    Object? includedKinds = null,
  }) {
    return _then(
      _$DeduplicateTaskImpl(
        scopeFolderId: null == scopeFolderId
            ? _value.scopeFolderId
            : scopeFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        matchingCriteria: null == matchingCriteria
            ? _value.matchingCriteria
            : matchingCriteria // ignore: cast_nullable_to_non_nullable
                  as DuplicateMatchingCriteria,
        removeDuplicates: null == removeDuplicates
            ? _value.removeDuplicates
            : removeDuplicates // ignore: cast_nullable_to_non_nullable
                  as bool,
        keepStrategy: null == keepStrategy
            ? _value.keepStrategy
            : keepStrategy // ignore: cast_nullable_to_non_nullable
                  as KeepFileStrategy,
        minFileSize: null == minFileSize
            ? _value.minFileSize
            : minFileSize // ignore: cast_nullable_to_non_nullable
                  as int,
        includedKinds: null == includedKinds
            ? _value._includedKinds
            : includedKinds // ignore: cast_nullable_to_non_nullable
                  as List<FileKind>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeduplicateTaskImpl extends _DeduplicateTask {
  const _$DeduplicateTaskImpl({
    required this.scopeFolderId,
    this.matchingCriteria = DuplicateMatchingCriteria.hash,
    this.removeDuplicates = false,
    this.keepStrategy = KeepFileStrategy.keepFirst,
    this.minFileSize = 0,
    final List<FileKind> includedKinds = const <FileKind>[],
  }) : _includedKinds = includedKinds,
       super._();

  factory _$DeduplicateTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeduplicateTaskImplFromJson(json);

  /// The scope of the deduplication operation
  @override
  final String scopeFolderId;

  /// Matching criteria for detecting duplicates
  @override
  @JsonKey()
  final DuplicateMatchingCriteria matchingCriteria;

  /// Whether to automatically remove duplicates or just report them
  @override
  @JsonKey()
  final bool removeDuplicates;

  /// Which files to keep when removing duplicates (keep first, newest, etc.)
  @override
  @JsonKey()
  final KeepFileStrategy keepStrategy;

  /// Minimum file size to consider for deduplication (bytes)
  @override
  @JsonKey()
  final int minFileSize;

  /// File kinds to include in deduplication (empty means all)
  final List<FileKind> _includedKinds;

  /// File kinds to include in deduplication (empty means all)
  @override
  @JsonKey()
  List<FileKind> get includedKinds {
    if (_includedKinds is EqualUnmodifiableListView) return _includedKinds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_includedKinds);
  }

  @override
  String toString() {
    return 'DeduplicateTask(scopeFolderId: $scopeFolderId, matchingCriteria: $matchingCriteria, removeDuplicates: $removeDuplicates, keepStrategy: $keepStrategy, minFileSize: $minFileSize, includedKinds: $includedKinds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeduplicateTaskImpl &&
            (identical(other.scopeFolderId, scopeFolderId) ||
                other.scopeFolderId == scopeFolderId) &&
            (identical(other.matchingCriteria, matchingCriteria) ||
                other.matchingCriteria == matchingCriteria) &&
            (identical(other.removeDuplicates, removeDuplicates) ||
                other.removeDuplicates == removeDuplicates) &&
            (identical(other.keepStrategy, keepStrategy) ||
                other.keepStrategy == keepStrategy) &&
            (identical(other.minFileSize, minFileSize) ||
                other.minFileSize == minFileSize) &&
            const DeepCollectionEquality().equals(
              other._includedKinds,
              _includedKinds,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    scopeFolderId,
    matchingCriteria,
    removeDuplicates,
    keepStrategy,
    minFileSize,
    const DeepCollectionEquality().hash(_includedKinds),
  );

  /// Create a copy of DeduplicateTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeduplicateTaskImplCopyWith<_$DeduplicateTaskImpl> get copyWith =>
      __$$DeduplicateTaskImplCopyWithImpl<_$DeduplicateTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeduplicateTaskImplToJson(this);
  }
}

abstract class _DeduplicateTask extends DeduplicateTask {
  const factory _DeduplicateTask({
    required final String scopeFolderId,
    final DuplicateMatchingCriteria matchingCriteria,
    final bool removeDuplicates,
    final KeepFileStrategy keepStrategy,
    final int minFileSize,
    final List<FileKind> includedKinds,
  }) = _$DeduplicateTaskImpl;
  const _DeduplicateTask._() : super._();

  factory _DeduplicateTask.fromJson(Map<String, dynamic> json) =
      _$DeduplicateTaskImpl.fromJson;

  /// The scope of the deduplication operation
  @override
  String get scopeFolderId;

  /// Matching criteria for detecting duplicates
  @override
  DuplicateMatchingCriteria get matchingCriteria;

  /// Whether to automatically remove duplicates or just report them
  @override
  bool get removeDuplicates;

  /// Which files to keep when removing duplicates (keep first, newest, etc.)
  @override
  KeepFileStrategy get keepStrategy;

  /// Minimum file size to consider for deduplication (bytes)
  @override
  int get minFileSize;

  /// File kinds to include in deduplication (empty means all)
  @override
  List<FileKind> get includedKinds;

  /// Create a copy of DeduplicateTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeduplicateTaskImplCopyWith<_$DeduplicateTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeduplicateResult _$DeduplicateResultFromJson(Map<String, dynamic> json) {
  return _DeduplicateResult.fromJson(json);
}

/// @nodoc
mixin _$DeduplicateResult {
  /// Number of files scanned during deduplication
  int get scannedFiles => throw _privateConstructorUsedError;

  /// Groups of duplicate files found
  List<DuplicateGroup> get duplicateGroups =>
      throw _privateConstructorUsedError;

  /// Mapping of removed file IDs to kept file IDs (if removal was performed)
  Map<String, String> get removedFiles => throw _privateConstructorUsedError;

  /// Total bytes that would be reclaimed by removing duplicates
  int get totalReclaimedBytes => throw _privateConstructorUsedError;

  /// When the deduplication operation completed
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this DeduplicateResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeduplicateResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeduplicateResultCopyWith<DeduplicateResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeduplicateResultCopyWith<$Res> {
  factory $DeduplicateResultCopyWith(
    DeduplicateResult value,
    $Res Function(DeduplicateResult) then,
  ) = _$DeduplicateResultCopyWithImpl<$Res, DeduplicateResult>;
  @useResult
  $Res call({
    int scannedFiles,
    List<DuplicateGroup> duplicateGroups,
    Map<String, String> removedFiles,
    int totalReclaimedBytes,
    DateTime? completedAt,
  });
}

/// @nodoc
class _$DeduplicateResultCopyWithImpl<$Res, $Val extends DeduplicateResult>
    implements $DeduplicateResultCopyWith<$Res> {
  _$DeduplicateResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeduplicateResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scannedFiles = null,
    Object? duplicateGroups = null,
    Object? removedFiles = null,
    Object? totalReclaimedBytes = null,
    Object? completedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            scannedFiles: null == scannedFiles
                ? _value.scannedFiles
                : scannedFiles // ignore: cast_nullable_to_non_nullable
                      as int,
            duplicateGroups: null == duplicateGroups
                ? _value.duplicateGroups
                : duplicateGroups // ignore: cast_nullable_to_non_nullable
                      as List<DuplicateGroup>,
            removedFiles: null == removedFiles
                ? _value.removedFiles
                : removedFiles // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>,
            totalReclaimedBytes: null == totalReclaimedBytes
                ? _value.totalReclaimedBytes
                : totalReclaimedBytes // ignore: cast_nullable_to_non_nullable
                      as int,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeduplicateResultImplCopyWith<$Res>
    implements $DeduplicateResultCopyWith<$Res> {
  factory _$$DeduplicateResultImplCopyWith(
    _$DeduplicateResultImpl value,
    $Res Function(_$DeduplicateResultImpl) then,
  ) = __$$DeduplicateResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int scannedFiles,
    List<DuplicateGroup> duplicateGroups,
    Map<String, String> removedFiles,
    int totalReclaimedBytes,
    DateTime? completedAt,
  });
}

/// @nodoc
class __$$DeduplicateResultImplCopyWithImpl<$Res>
    extends _$DeduplicateResultCopyWithImpl<$Res, _$DeduplicateResultImpl>
    implements _$$DeduplicateResultImplCopyWith<$Res> {
  __$$DeduplicateResultImplCopyWithImpl(
    _$DeduplicateResultImpl _value,
    $Res Function(_$DeduplicateResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeduplicateResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scannedFiles = null,
    Object? duplicateGroups = null,
    Object? removedFiles = null,
    Object? totalReclaimedBytes = null,
    Object? completedAt = freezed,
  }) {
    return _then(
      _$DeduplicateResultImpl(
        scannedFiles: null == scannedFiles
            ? _value.scannedFiles
            : scannedFiles // ignore: cast_nullable_to_non_nullable
                  as int,
        duplicateGroups: null == duplicateGroups
            ? _value._duplicateGroups
            : duplicateGroups // ignore: cast_nullable_to_non_nullable
                  as List<DuplicateGroup>,
        removedFiles: null == removedFiles
            ? _value._removedFiles
            : removedFiles // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>,
        totalReclaimedBytes: null == totalReclaimedBytes
            ? _value.totalReclaimedBytes
            : totalReclaimedBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeduplicateResultImpl implements _DeduplicateResult {
  const _$DeduplicateResultImpl({
    required this.scannedFiles,
    final List<DuplicateGroup> duplicateGroups = const <DuplicateGroup>[],
    final Map<String, String> removedFiles = const <String, String>{},
    required this.totalReclaimedBytes,
    this.completedAt,
  }) : _duplicateGroups = duplicateGroups,
       _removedFiles = removedFiles;

  factory _$DeduplicateResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeduplicateResultImplFromJson(json);

  /// Number of files scanned during deduplication
  @override
  final int scannedFiles;

  /// Groups of duplicate files found
  final List<DuplicateGroup> _duplicateGroups;

  /// Groups of duplicate files found
  @override
  @JsonKey()
  List<DuplicateGroup> get duplicateGroups {
    if (_duplicateGroups is EqualUnmodifiableListView) return _duplicateGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_duplicateGroups);
  }

  /// Mapping of removed file IDs to kept file IDs (if removal was performed)
  final Map<String, String> _removedFiles;

  /// Mapping of removed file IDs to kept file IDs (if removal was performed)
  @override
  @JsonKey()
  Map<String, String> get removedFiles {
    if (_removedFiles is EqualUnmodifiableMapView) return _removedFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_removedFiles);
  }

  /// Total bytes that would be reclaimed by removing duplicates
  @override
  final int totalReclaimedBytes;

  /// When the deduplication operation completed
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'DeduplicateResult(scannedFiles: $scannedFiles, duplicateGroups: $duplicateGroups, removedFiles: $removedFiles, totalReclaimedBytes: $totalReclaimedBytes, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeduplicateResultImpl &&
            (identical(other.scannedFiles, scannedFiles) ||
                other.scannedFiles == scannedFiles) &&
            const DeepCollectionEquality().equals(
              other._duplicateGroups,
              _duplicateGroups,
            ) &&
            const DeepCollectionEquality().equals(
              other._removedFiles,
              _removedFiles,
            ) &&
            (identical(other.totalReclaimedBytes, totalReclaimedBytes) ||
                other.totalReclaimedBytes == totalReclaimedBytes) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    scannedFiles,
    const DeepCollectionEquality().hash(_duplicateGroups),
    const DeepCollectionEquality().hash(_removedFiles),
    totalReclaimedBytes,
    completedAt,
  );

  /// Create a copy of DeduplicateResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeduplicateResultImplCopyWith<_$DeduplicateResultImpl> get copyWith =>
      __$$DeduplicateResultImplCopyWithImpl<_$DeduplicateResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeduplicateResultImplToJson(this);
  }
}

abstract class _DeduplicateResult implements DeduplicateResult {
  const factory _DeduplicateResult({
    required final int scannedFiles,
    final List<DuplicateGroup> duplicateGroups,
    final Map<String, String> removedFiles,
    required final int totalReclaimedBytes,
    final DateTime? completedAt,
  }) = _$DeduplicateResultImpl;

  factory _DeduplicateResult.fromJson(Map<String, dynamic> json) =
      _$DeduplicateResultImpl.fromJson;

  /// Number of files scanned during deduplication
  @override
  int get scannedFiles;

  /// Groups of duplicate files found
  @override
  List<DuplicateGroup> get duplicateGroups;

  /// Mapping of removed file IDs to kept file IDs (if removal was performed)
  @override
  Map<String, String> get removedFiles;

  /// Total bytes that would be reclaimed by removing duplicates
  @override
  int get totalReclaimedBytes;

  /// When the deduplication operation completed
  @override
  DateTime? get completedAt;

  /// Create a copy of DeduplicateResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeduplicateResultImplCopyWith<_$DeduplicateResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
