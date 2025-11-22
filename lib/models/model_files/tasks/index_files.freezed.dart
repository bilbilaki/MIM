// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index_files.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

IndexFilesResult _$IndexFilesResultFromJson(Map<String, dynamic> json) {
  return _IndexFilesResult.fromJson(json);
}

/// @nodoc
mixin _$IndexFilesResult {
  /// Number of entries indexed
  int get entriesIndexed => throw _privateConstructorUsedError;

  /// Number of folders processed
  int get foldersProcessed => throw _privateConstructorUsedError;

  /// Number of files processed
  int get filesProcessed => throw _privateConstructorUsedError;

  /// Total size of indexed content in bytes
  int get totalSizeBytes => throw _privateConstructorUsedError;

  /// Index version or timestamp
  DateTime get indexTimestamp => throw _privateConstructorUsedError;

  /// List of encountered errors during indexing
  List<String> get errors => throw _privateConstructorUsedError;

  /// Whether content indexing was performed
  bool get contentIndexed => throw _privateConstructorUsedError;

  /// Serializes this IndexFilesResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IndexFilesResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndexFilesResultCopyWith<IndexFilesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexFilesResultCopyWith<$Res> {
  factory $IndexFilesResultCopyWith(
    IndexFilesResult value,
    $Res Function(IndexFilesResult) then,
  ) = _$IndexFilesResultCopyWithImpl<$Res, IndexFilesResult>;
  @useResult
  $Res call({
    int entriesIndexed,
    int foldersProcessed,
    int filesProcessed,
    int totalSizeBytes,
    DateTime indexTimestamp,
    List<String> errors,
    bool contentIndexed,
  });
}

/// @nodoc
class _$IndexFilesResultCopyWithImpl<$Res, $Val extends IndexFilesResult>
    implements $IndexFilesResultCopyWith<$Res> {
  _$IndexFilesResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IndexFilesResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entriesIndexed = null,
    Object? foldersProcessed = null,
    Object? filesProcessed = null,
    Object? totalSizeBytes = null,
    Object? indexTimestamp = null,
    Object? errors = null,
    Object? contentIndexed = null,
  }) {
    return _then(
      _value.copyWith(
            entriesIndexed: null == entriesIndexed
                ? _value.entriesIndexed
                : entriesIndexed // ignore: cast_nullable_to_non_nullable
                      as int,
            foldersProcessed: null == foldersProcessed
                ? _value.foldersProcessed
                : foldersProcessed // ignore: cast_nullable_to_non_nullable
                      as int,
            filesProcessed: null == filesProcessed
                ? _value.filesProcessed
                : filesProcessed // ignore: cast_nullable_to_non_nullable
                      as int,
            totalSizeBytes: null == totalSizeBytes
                ? _value.totalSizeBytes
                : totalSizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
            indexTimestamp: null == indexTimestamp
                ? _value.indexTimestamp
                : indexTimestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            errors: null == errors
                ? _value.errors
                : errors // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            contentIndexed: null == contentIndexed
                ? _value.contentIndexed
                : contentIndexed // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IndexFilesResultImplCopyWith<$Res>
    implements $IndexFilesResultCopyWith<$Res> {
  factory _$$IndexFilesResultImplCopyWith(
    _$IndexFilesResultImpl value,
    $Res Function(_$IndexFilesResultImpl) then,
  ) = __$$IndexFilesResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int entriesIndexed,
    int foldersProcessed,
    int filesProcessed,
    int totalSizeBytes,
    DateTime indexTimestamp,
    List<String> errors,
    bool contentIndexed,
  });
}

/// @nodoc
class __$$IndexFilesResultImplCopyWithImpl<$Res>
    extends _$IndexFilesResultCopyWithImpl<$Res, _$IndexFilesResultImpl>
    implements _$$IndexFilesResultImplCopyWith<$Res> {
  __$$IndexFilesResultImplCopyWithImpl(
    _$IndexFilesResultImpl _value,
    $Res Function(_$IndexFilesResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IndexFilesResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entriesIndexed = null,
    Object? foldersProcessed = null,
    Object? filesProcessed = null,
    Object? totalSizeBytes = null,
    Object? indexTimestamp = null,
    Object? errors = null,
    Object? contentIndexed = null,
  }) {
    return _then(
      _$IndexFilesResultImpl(
        entriesIndexed: null == entriesIndexed
            ? _value.entriesIndexed
            : entriesIndexed // ignore: cast_nullable_to_non_nullable
                  as int,
        foldersProcessed: null == foldersProcessed
            ? _value.foldersProcessed
            : foldersProcessed // ignore: cast_nullable_to_non_nullable
                  as int,
        filesProcessed: null == filesProcessed
            ? _value.filesProcessed
            : filesProcessed // ignore: cast_nullable_to_non_nullable
                  as int,
        totalSizeBytes: null == totalSizeBytes
            ? _value.totalSizeBytes
            : totalSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        indexTimestamp: null == indexTimestamp
            ? _value.indexTimestamp
            : indexTimestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        errors: null == errors
            ? _value._errors
            : errors // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        contentIndexed: null == contentIndexed
            ? _value.contentIndexed
            : contentIndexed // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IndexFilesResultImpl implements _IndexFilesResult {
  const _$IndexFilesResultImpl({
    required this.entriesIndexed,
    required this.foldersProcessed,
    required this.filesProcessed,
    required this.totalSizeBytes,
    required this.indexTimestamp,
    final List<String> errors = const <String>[],
    this.contentIndexed = false,
  }) : _errors = errors;

  factory _$IndexFilesResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndexFilesResultImplFromJson(json);

  /// Number of entries indexed
  @override
  final int entriesIndexed;

  /// Number of folders processed
  @override
  final int foldersProcessed;

  /// Number of files processed
  @override
  final int filesProcessed;

  /// Total size of indexed content in bytes
  @override
  final int totalSizeBytes;

  /// Index version or timestamp
  @override
  final DateTime indexTimestamp;

  /// List of encountered errors during indexing
  final List<String> _errors;

  /// List of encountered errors during indexing
  @override
  @JsonKey()
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  /// Whether content indexing was performed
  @override
  @JsonKey()
  final bool contentIndexed;

  @override
  String toString() {
    return 'IndexFilesResult(entriesIndexed: $entriesIndexed, foldersProcessed: $foldersProcessed, filesProcessed: $filesProcessed, totalSizeBytes: $totalSizeBytes, indexTimestamp: $indexTimestamp, errors: $errors, contentIndexed: $contentIndexed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexFilesResultImpl &&
            (identical(other.entriesIndexed, entriesIndexed) ||
                other.entriesIndexed == entriesIndexed) &&
            (identical(other.foldersProcessed, foldersProcessed) ||
                other.foldersProcessed == foldersProcessed) &&
            (identical(other.filesProcessed, filesProcessed) ||
                other.filesProcessed == filesProcessed) &&
            (identical(other.totalSizeBytes, totalSizeBytes) ||
                other.totalSizeBytes == totalSizeBytes) &&
            (identical(other.indexTimestamp, indexTimestamp) ||
                other.indexTimestamp == indexTimestamp) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.contentIndexed, contentIndexed) ||
                other.contentIndexed == contentIndexed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    entriesIndexed,
    foldersProcessed,
    filesProcessed,
    totalSizeBytes,
    indexTimestamp,
    const DeepCollectionEquality().hash(_errors),
    contentIndexed,
  );

  /// Create a copy of IndexFilesResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexFilesResultImplCopyWith<_$IndexFilesResultImpl> get copyWith =>
      __$$IndexFilesResultImplCopyWithImpl<_$IndexFilesResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IndexFilesResultImplToJson(this);
  }
}

abstract class _IndexFilesResult implements IndexFilesResult {
  const factory _IndexFilesResult({
    required final int entriesIndexed,
    required final int foldersProcessed,
    required final int filesProcessed,
    required final int totalSizeBytes,
    required final DateTime indexTimestamp,
    final List<String> errors,
    final bool contentIndexed,
  }) = _$IndexFilesResultImpl;

  factory _IndexFilesResult.fromJson(Map<String, dynamic> json) =
      _$IndexFilesResultImpl.fromJson;

  /// Number of entries indexed
  @override
  int get entriesIndexed;

  /// Number of folders processed
  @override
  int get foldersProcessed;

  /// Number of files processed
  @override
  int get filesProcessed;

  /// Total size of indexed content in bytes
  @override
  int get totalSizeBytes;

  /// Index version or timestamp
  @override
  DateTime get indexTimestamp;

  /// List of encountered errors during indexing
  @override
  List<String> get errors;

  /// Whether content indexing was performed
  @override
  bool get contentIndexed;

  /// Create a copy of IndexFilesResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndexFilesResultImplCopyWith<_$IndexFilesResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IndexingOptions _$IndexingOptionsFromJson(Map<String, dynamic> json) {
  return _IndexingOptions.fromJson(json);
}

/// @nodoc
mixin _$IndexingOptions {
  /// Whether to index file contents (text extraction)
  bool get indexContent => throw _privateConstructorUsedError;

  /// Maximum file size for content indexing in bytes
  int get maxContentSizeBytes => throw _privateConstructorUsedError;

  /// File kinds to exclude from indexing
  List<FileKind> get excludedKinds => throw _privateConstructorUsedError;

  /// Whether to generate thumbnails during indexing
  bool get generateThumbnails => throw _privateConstructorUsedError;

  /// Whether to compute file hashes during indexing
  bool get computeHashes => throw _privateConstructorUsedError;

  /// Serializes this IndexingOptions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IndexingOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndexingOptionsCopyWith<IndexingOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexingOptionsCopyWith<$Res> {
  factory $IndexingOptionsCopyWith(
    IndexingOptions value,
    $Res Function(IndexingOptions) then,
  ) = _$IndexingOptionsCopyWithImpl<$Res, IndexingOptions>;
  @useResult
  $Res call({
    bool indexContent,
    int maxContentSizeBytes,
    List<FileKind> excludedKinds,
    bool generateThumbnails,
    bool computeHashes,
  });
}

/// @nodoc
class _$IndexingOptionsCopyWithImpl<$Res, $Val extends IndexingOptions>
    implements $IndexingOptionsCopyWith<$Res> {
  _$IndexingOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IndexingOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexContent = null,
    Object? maxContentSizeBytes = null,
    Object? excludedKinds = null,
    Object? generateThumbnails = null,
    Object? computeHashes = null,
  }) {
    return _then(
      _value.copyWith(
            indexContent: null == indexContent
                ? _value.indexContent
                : indexContent // ignore: cast_nullable_to_non_nullable
                      as bool,
            maxContentSizeBytes: null == maxContentSizeBytes
                ? _value.maxContentSizeBytes
                : maxContentSizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
            excludedKinds: null == excludedKinds
                ? _value.excludedKinds
                : excludedKinds // ignore: cast_nullable_to_non_nullable
                      as List<FileKind>,
            generateThumbnails: null == generateThumbnails
                ? _value.generateThumbnails
                : generateThumbnails // ignore: cast_nullable_to_non_nullable
                      as bool,
            computeHashes: null == computeHashes
                ? _value.computeHashes
                : computeHashes // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IndexingOptionsImplCopyWith<$Res>
    implements $IndexingOptionsCopyWith<$Res> {
  factory _$$IndexingOptionsImplCopyWith(
    _$IndexingOptionsImpl value,
    $Res Function(_$IndexingOptionsImpl) then,
  ) = __$$IndexingOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool indexContent,
    int maxContentSizeBytes,
    List<FileKind> excludedKinds,
    bool generateThumbnails,
    bool computeHashes,
  });
}

/// @nodoc
class __$$IndexingOptionsImplCopyWithImpl<$Res>
    extends _$IndexingOptionsCopyWithImpl<$Res, _$IndexingOptionsImpl>
    implements _$$IndexingOptionsImplCopyWith<$Res> {
  __$$IndexingOptionsImplCopyWithImpl(
    _$IndexingOptionsImpl _value,
    $Res Function(_$IndexingOptionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IndexingOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexContent = null,
    Object? maxContentSizeBytes = null,
    Object? excludedKinds = null,
    Object? generateThumbnails = null,
    Object? computeHashes = null,
  }) {
    return _then(
      _$IndexingOptionsImpl(
        indexContent: null == indexContent
            ? _value.indexContent
            : indexContent // ignore: cast_nullable_to_non_nullable
                  as bool,
        maxContentSizeBytes: null == maxContentSizeBytes
            ? _value.maxContentSizeBytes
            : maxContentSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        excludedKinds: null == excludedKinds
            ? _value._excludedKinds
            : excludedKinds // ignore: cast_nullable_to_non_nullable
                  as List<FileKind>,
        generateThumbnails: null == generateThumbnails
            ? _value.generateThumbnails
            : generateThumbnails // ignore: cast_nullable_to_non_nullable
                  as bool,
        computeHashes: null == computeHashes
            ? _value.computeHashes
            : computeHashes // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IndexingOptionsImpl implements _IndexingOptions {
  const _$IndexingOptionsImpl({
    this.indexContent = false,
    this.maxContentSizeBytes = 10485760,
    final List<FileKind> excludedKinds = const <FileKind>[],
    this.generateThumbnails = false,
    this.computeHashes = false,
  }) : _excludedKinds = excludedKinds;

  factory _$IndexingOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndexingOptionsImplFromJson(json);

  /// Whether to index file contents (text extraction)
  @override
  @JsonKey()
  final bool indexContent;

  /// Maximum file size for content indexing in bytes
  @override
  @JsonKey()
  final int maxContentSizeBytes;

  /// File kinds to exclude from indexing
  final List<FileKind> _excludedKinds;

  /// File kinds to exclude from indexing
  @override
  @JsonKey()
  List<FileKind> get excludedKinds {
    if (_excludedKinds is EqualUnmodifiableListView) return _excludedKinds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_excludedKinds);
  }

  /// Whether to generate thumbnails during indexing
  @override
  @JsonKey()
  final bool generateThumbnails;

  /// Whether to compute file hashes during indexing
  @override
  @JsonKey()
  final bool computeHashes;

  @override
  String toString() {
    return 'IndexingOptions(indexContent: $indexContent, maxContentSizeBytes: $maxContentSizeBytes, excludedKinds: $excludedKinds, generateThumbnails: $generateThumbnails, computeHashes: $computeHashes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexingOptionsImpl &&
            (identical(other.indexContent, indexContent) ||
                other.indexContent == indexContent) &&
            (identical(other.maxContentSizeBytes, maxContentSizeBytes) ||
                other.maxContentSizeBytes == maxContentSizeBytes) &&
            const DeepCollectionEquality().equals(
              other._excludedKinds,
              _excludedKinds,
            ) &&
            (identical(other.generateThumbnails, generateThumbnails) ||
                other.generateThumbnails == generateThumbnails) &&
            (identical(other.computeHashes, computeHashes) ||
                other.computeHashes == computeHashes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    indexContent,
    maxContentSizeBytes,
    const DeepCollectionEquality().hash(_excludedKinds),
    generateThumbnails,
    computeHashes,
  );

  /// Create a copy of IndexingOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexingOptionsImplCopyWith<_$IndexingOptionsImpl> get copyWith =>
      __$$IndexingOptionsImplCopyWithImpl<_$IndexingOptionsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IndexingOptionsImplToJson(this);
  }
}

abstract class _IndexingOptions implements IndexingOptions {
  const factory _IndexingOptions({
    final bool indexContent,
    final int maxContentSizeBytes,
    final List<FileKind> excludedKinds,
    final bool generateThumbnails,
    final bool computeHashes,
  }) = _$IndexingOptionsImpl;

  factory _IndexingOptions.fromJson(Map<String, dynamic> json) =
      _$IndexingOptionsImpl.fromJson;

  /// Whether to index file contents (text extraction)
  @override
  bool get indexContent;

  /// Maximum file size for content indexing in bytes
  @override
  int get maxContentSizeBytes;

  /// File kinds to exclude from indexing
  @override
  List<FileKind> get excludedKinds;

  /// Whether to generate thumbnails during indexing
  @override
  bool get generateThumbnails;

  /// Whether to compute file hashes during indexing
  @override
  bool get computeHashes;

  /// Create a copy of IndexingOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndexingOptionsImplCopyWith<_$IndexingOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IndexFilesTask _$IndexFilesTaskFromJson(Map<String, dynamic> json) {
  return _IndexFilesTask.fromJson(json);
}

/// @nodoc
mixin _$IndexFilesTask {
  /// Root folder ID to start indexing from (null for entire storage)
  String? get rootFolderId => throw _privateConstructorUsedError;

  /// Indexing behavior options
  IndexingOptions get options => throw _privateConstructorUsedError;

  /// Serializes this IndexFilesTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IndexFilesTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndexFilesTaskCopyWith<IndexFilesTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexFilesTaskCopyWith<$Res> {
  factory $IndexFilesTaskCopyWith(
    IndexFilesTask value,
    $Res Function(IndexFilesTask) then,
  ) = _$IndexFilesTaskCopyWithImpl<$Res, IndexFilesTask>;
  @useResult
  $Res call({String? rootFolderId, IndexingOptions options});

  $IndexingOptionsCopyWith<$Res> get options;
}

/// @nodoc
class _$IndexFilesTaskCopyWithImpl<$Res, $Val extends IndexFilesTask>
    implements $IndexFilesTaskCopyWith<$Res> {
  _$IndexFilesTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IndexFilesTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rootFolderId = freezed, Object? options = null}) {
    return _then(
      _value.copyWith(
            rootFolderId: freezed == rootFolderId
                ? _value.rootFolderId
                : rootFolderId // ignore: cast_nullable_to_non_nullable
                      as String?,
            options: null == options
                ? _value.options
                : options // ignore: cast_nullable_to_non_nullable
                      as IndexingOptions,
          )
          as $Val,
    );
  }

  /// Create a copy of IndexFilesTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IndexingOptionsCopyWith<$Res> get options {
    return $IndexingOptionsCopyWith<$Res>(_value.options, (value) {
      return _then(_value.copyWith(options: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IndexFilesTaskImplCopyWith<$Res>
    implements $IndexFilesTaskCopyWith<$Res> {
  factory _$$IndexFilesTaskImplCopyWith(
    _$IndexFilesTaskImpl value,
    $Res Function(_$IndexFilesTaskImpl) then,
  ) = __$$IndexFilesTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? rootFolderId, IndexingOptions options});

  @override
  $IndexingOptionsCopyWith<$Res> get options;
}

/// @nodoc
class __$$IndexFilesTaskImplCopyWithImpl<$Res>
    extends _$IndexFilesTaskCopyWithImpl<$Res, _$IndexFilesTaskImpl>
    implements _$$IndexFilesTaskImplCopyWith<$Res> {
  __$$IndexFilesTaskImplCopyWithImpl(
    _$IndexFilesTaskImpl _value,
    $Res Function(_$IndexFilesTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IndexFilesTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rootFolderId = freezed, Object? options = null}) {
    return _then(
      _$IndexFilesTaskImpl(
        rootFolderId: freezed == rootFolderId
            ? _value.rootFolderId
            : rootFolderId // ignore: cast_nullable_to_non_nullable
                  as String?,
        options: null == options
            ? _value.options
            : options // ignore: cast_nullable_to_non_nullable
                  as IndexingOptions,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IndexFilesTaskImpl extends _IndexFilesTask {
  const _$IndexFilesTaskImpl({
    required this.rootFolderId,
    this.options = const IndexingOptions(),
  }) : super._();

  factory _$IndexFilesTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndexFilesTaskImplFromJson(json);

  /// Root folder ID to start indexing from (null for entire storage)
  @override
  final String? rootFolderId;

  /// Indexing behavior options
  @override
  @JsonKey()
  final IndexingOptions options;

  @override
  String toString() {
    return 'IndexFilesTask(rootFolderId: $rootFolderId, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexFilesTaskImpl &&
            (identical(other.rootFolderId, rootFolderId) ||
                other.rootFolderId == rootFolderId) &&
            (identical(other.options, options) || other.options == options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rootFolderId, options);

  /// Create a copy of IndexFilesTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexFilesTaskImplCopyWith<_$IndexFilesTaskImpl> get copyWith =>
      __$$IndexFilesTaskImplCopyWithImpl<_$IndexFilesTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IndexFilesTaskImplToJson(this);
  }
}

abstract class _IndexFilesTask extends IndexFilesTask {
  const factory _IndexFilesTask({
    required final String? rootFolderId,
    final IndexingOptions options,
  }) = _$IndexFilesTaskImpl;
  const _IndexFilesTask._() : super._();

  factory _IndexFilesTask.fromJson(Map<String, dynamic> json) =
      _$IndexFilesTaskImpl.fromJson;

  /// Root folder ID to start indexing from (null for entire storage)
  @override
  String? get rootFolderId;

  /// Indexing behavior options
  @override
  IndexingOptions get options;

  /// Create a copy of IndexFilesTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndexFilesTaskImplCopyWith<_$IndexFilesTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
