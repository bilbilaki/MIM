// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ContentMatch _$ContentMatchFromJson(Map<String, dynamic> json) {
  return _ContentMatch.fromJson(json);
}

/// @nodoc
mixin _$ContentMatch {
  /// The file ID where the match was found
  String get fileId => throw _privateConstructorUsedError;

  /// The matched text snippet
  String get snippet => throw _privateConstructorUsedError;

  /// Character offset of the match within the file
  int get offset => throw _privateConstructorUsedError;

  /// Line number where the match occurs (if applicable)
  int? get lineNumber => throw _privateConstructorUsedError;

  /// Additional match metadata (score, context, etc.)
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this ContentMatch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentMatch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentMatchCopyWith<ContentMatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentMatchCopyWith<$Res> {
  factory $ContentMatchCopyWith(
    ContentMatch value,
    $Res Function(ContentMatch) then,
  ) = _$ContentMatchCopyWithImpl<$Res, ContentMatch>;
  @useResult
  $Res call({
    String fileId,
    String snippet,
    int offset,
    int? lineNumber,
    Map<String, dynamic> metadata,
  });
}

/// @nodoc
class _$ContentMatchCopyWithImpl<$Res, $Val extends ContentMatch>
    implements $ContentMatchCopyWith<$Res> {
  _$ContentMatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentMatch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? snippet = null,
    Object? offset = null,
    Object? lineNumber = freezed,
    Object? metadata = null,
  }) {
    return _then(
      _value.copyWith(
            fileId: null == fileId
                ? _value.fileId
                : fileId // ignore: cast_nullable_to_non_nullable
                      as String,
            snippet: null == snippet
                ? _value.snippet
                : snippet // ignore: cast_nullable_to_non_nullable
                      as String,
            offset: null == offset
                ? _value.offset
                : offset // ignore: cast_nullable_to_non_nullable
                      as int,
            lineNumber: freezed == lineNumber
                ? _value.lineNumber
                : lineNumber // ignore: cast_nullable_to_non_nullable
                      as int?,
            metadata: null == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContentMatchImplCopyWith<$Res>
    implements $ContentMatchCopyWith<$Res> {
  factory _$$ContentMatchImplCopyWith(
    _$ContentMatchImpl value,
    $Res Function(_$ContentMatchImpl) then,
  ) = __$$ContentMatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String fileId,
    String snippet,
    int offset,
    int? lineNumber,
    Map<String, dynamic> metadata,
  });
}

/// @nodoc
class __$$ContentMatchImplCopyWithImpl<$Res>
    extends _$ContentMatchCopyWithImpl<$Res, _$ContentMatchImpl>
    implements _$$ContentMatchImplCopyWith<$Res> {
  __$$ContentMatchImplCopyWithImpl(
    _$ContentMatchImpl _value,
    $Res Function(_$ContentMatchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContentMatch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? snippet = null,
    Object? offset = null,
    Object? lineNumber = freezed,
    Object? metadata = null,
  }) {
    return _then(
      _$ContentMatchImpl(
        fileId: null == fileId
            ? _value.fileId
            : fileId // ignore: cast_nullable_to_non_nullable
                  as String,
        snippet: null == snippet
            ? _value.snippet
            : snippet // ignore: cast_nullable_to_non_nullable
                  as String,
        offset: null == offset
            ? _value.offset
            : offset // ignore: cast_nullable_to_non_nullable
                  as int,
        lineNumber: freezed == lineNumber
            ? _value.lineNumber
            : lineNumber // ignore: cast_nullable_to_non_nullable
                  as int?,
        metadata: null == metadata
            ? _value._metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentMatchImpl implements _ContentMatch {
  const _$ContentMatchImpl({
    required this.fileId,
    required this.snippet,
    required this.offset,
    this.lineNumber,
    final Map<String, dynamic> metadata = const <String, dynamic>{},
  }) : _metadata = metadata;

  factory _$ContentMatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentMatchImplFromJson(json);

  /// The file ID where the match was found
  @override
  final String fileId;

  /// The matched text snippet
  @override
  final String snippet;

  /// Character offset of the match within the file
  @override
  final int offset;

  /// Line number where the match occurs (if applicable)
  @override
  final int? lineNumber;

  /// Additional match metadata (score, context, etc.)
  final Map<String, dynamic> _metadata;

  /// Additional match metadata (score, context, etc.)
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'ContentMatch(fileId: $fileId, snippet: $snippet, offset: $offset, lineNumber: $lineNumber, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentMatchImpl &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.lineNumber, lineNumber) ||
                other.lineNumber == lineNumber) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    fileId,
    snippet,
    offset,
    lineNumber,
    const DeepCollectionEquality().hash(_metadata),
  );

  /// Create a copy of ContentMatch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentMatchImplCopyWith<_$ContentMatchImpl> get copyWith =>
      __$$ContentMatchImplCopyWithImpl<_$ContentMatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentMatchImplToJson(this);
  }
}

abstract class _ContentMatch implements ContentMatch {
  const factory _ContentMatch({
    required final String fileId,
    required final String snippet,
    required final int offset,
    final int? lineNumber,
    final Map<String, dynamic> metadata,
  }) = _$ContentMatchImpl;

  factory _ContentMatch.fromJson(Map<String, dynamic> json) =
      _$ContentMatchImpl.fromJson;

  /// The file ID where the match was found
  @override
  String get fileId;

  /// The matched text snippet
  @override
  String get snippet;

  /// Character offset of the match within the file
  @override
  int get offset;

  /// Line number where the match occurs (if applicable)
  @override
  int? get lineNumber;

  /// Additional match metadata (score, context, etc.)
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of ContentMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentMatchImplCopyWith<_$ContentMatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchContentResult _$SearchContentResultFromJson(Map<String, dynamic> json) {
  return _SearchContentResult.fromJson(json);
}

/// @nodoc
mixin _$SearchContentResult {
  /// List of content matches found
  List<ContentMatch> get matches => throw _privateConstructorUsedError;

  /// Total number of matches found
  int get totalMatches => throw _privateConstructorUsedError;

  /// Number of files that contained matches
  int get filesWithMatches => throw _privateConstructorUsedError;

  /// Search execution duration in milliseconds
  int? get durationMs => throw _privateConstructorUsedError;

  /// Serializes this SearchContentResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchContentResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchContentResultCopyWith<SearchContentResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchContentResultCopyWith<$Res> {
  factory $SearchContentResultCopyWith(
    SearchContentResult value,
    $Res Function(SearchContentResult) then,
  ) = _$SearchContentResultCopyWithImpl<$Res, SearchContentResult>;
  @useResult
  $Res call({
    List<ContentMatch> matches,
    int totalMatches,
    int filesWithMatches,
    int? durationMs,
  });
}

/// @nodoc
class _$SearchContentResultCopyWithImpl<$Res, $Val extends SearchContentResult>
    implements $SearchContentResultCopyWith<$Res> {
  _$SearchContentResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchContentResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matches = null,
    Object? totalMatches = null,
    Object? filesWithMatches = null,
    Object? durationMs = freezed,
  }) {
    return _then(
      _value.copyWith(
            matches: null == matches
                ? _value.matches
                : matches // ignore: cast_nullable_to_non_nullable
                      as List<ContentMatch>,
            totalMatches: null == totalMatches
                ? _value.totalMatches
                : totalMatches // ignore: cast_nullable_to_non_nullable
                      as int,
            filesWithMatches: null == filesWithMatches
                ? _value.filesWithMatches
                : filesWithMatches // ignore: cast_nullable_to_non_nullable
                      as int,
            durationMs: freezed == durationMs
                ? _value.durationMs
                : durationMs // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchContentResultImplCopyWith<$Res>
    implements $SearchContentResultCopyWith<$Res> {
  factory _$$SearchContentResultImplCopyWith(
    _$SearchContentResultImpl value,
    $Res Function(_$SearchContentResultImpl) then,
  ) = __$$SearchContentResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ContentMatch> matches,
    int totalMatches,
    int filesWithMatches,
    int? durationMs,
  });
}

/// @nodoc
class __$$SearchContentResultImplCopyWithImpl<$Res>
    extends _$SearchContentResultCopyWithImpl<$Res, _$SearchContentResultImpl>
    implements _$$SearchContentResultImplCopyWith<$Res> {
  __$$SearchContentResultImplCopyWithImpl(
    _$SearchContentResultImpl _value,
    $Res Function(_$SearchContentResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchContentResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matches = null,
    Object? totalMatches = null,
    Object? filesWithMatches = null,
    Object? durationMs = freezed,
  }) {
    return _then(
      _$SearchContentResultImpl(
        matches: null == matches
            ? _value._matches
            : matches // ignore: cast_nullable_to_non_nullable
                  as List<ContentMatch>,
        totalMatches: null == totalMatches
            ? _value.totalMatches
            : totalMatches // ignore: cast_nullable_to_non_nullable
                  as int,
        filesWithMatches: null == filesWithMatches
            ? _value.filesWithMatches
            : filesWithMatches // ignore: cast_nullable_to_non_nullable
                  as int,
        durationMs: freezed == durationMs
            ? _value.durationMs
            : durationMs // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchContentResultImpl implements _SearchContentResult {
  const _$SearchContentResultImpl({
    final List<ContentMatch> matches = const <ContentMatch>[],
    this.totalMatches = 0,
    this.filesWithMatches = 0,
    this.durationMs,
  }) : _matches = matches;

  factory _$SearchContentResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchContentResultImplFromJson(json);

  /// List of content matches found
  final List<ContentMatch> _matches;

  /// List of content matches found
  @override
  @JsonKey()
  List<ContentMatch> get matches {
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matches);
  }

  /// Total number of matches found
  @override
  @JsonKey()
  final int totalMatches;

  /// Number of files that contained matches
  @override
  @JsonKey()
  final int filesWithMatches;

  /// Search execution duration in milliseconds
  @override
  final int? durationMs;

  @override
  String toString() {
    return 'SearchContentResult(matches: $matches, totalMatches: $totalMatches, filesWithMatches: $filesWithMatches, durationMs: $durationMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchContentResultImpl &&
            const DeepCollectionEquality().equals(other._matches, _matches) &&
            (identical(other.totalMatches, totalMatches) ||
                other.totalMatches == totalMatches) &&
            (identical(other.filesWithMatches, filesWithMatches) ||
                other.filesWithMatches == filesWithMatches) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_matches),
    totalMatches,
    filesWithMatches,
    durationMs,
  );

  /// Create a copy of SearchContentResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchContentResultImplCopyWith<_$SearchContentResultImpl> get copyWith =>
      __$$SearchContentResultImplCopyWithImpl<_$SearchContentResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchContentResultImplToJson(this);
  }
}

abstract class _SearchContentResult implements SearchContentResult {
  const factory _SearchContentResult({
    final List<ContentMatch> matches,
    final int totalMatches,
    final int filesWithMatches,
    final int? durationMs,
  }) = _$SearchContentResultImpl;

  factory _SearchContentResult.fromJson(Map<String, dynamic> json) =
      _$SearchContentResultImpl.fromJson;

  /// List of content matches found
  @override
  List<ContentMatch> get matches;

  /// Total number of matches found
  @override
  int get totalMatches;

  /// Number of files that contained matches
  @override
  int get filesWithMatches;

  /// Search execution duration in milliseconds
  @override
  int? get durationMs;

  /// Create a copy of SearchContentResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchContentResultImplCopyWith<_$SearchContentResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchContentTask _$SearchContentTaskFromJson(Map<String, dynamic> json) {
  return _SearchContentTask.fromJson(json);
}

/// @nodoc
mixin _$SearchContentTask {
  /// Search query string or pattern
  String get query => throw _privateConstructorUsedError;

  /// File IDs to search within (empty = search all accessible files)
  List<String> get scopeEntryIds => throw _privateConstructorUsedError;

  /// File kinds to include in search (empty = all kinds)
  List<FileKind> get fileKinds => throw _privateConstructorUsedError;

  /// Whether to search case sensitively
  bool get caseSensitive => throw _privateConstructorUsedError;

  /// Maximum number of matches to return per file
  int get maxMatchesPerFile => throw _privateConstructorUsedError;

  /// Maximum number of files to search
  int get maxFiles => throw _privateConstructorUsedError;

  /// Additional search parameters
  Map<String, dynamic> get options => throw _privateConstructorUsedError;

  /// Serializes this SearchContentTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchContentTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchContentTaskCopyWith<SearchContentTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchContentTaskCopyWith<$Res> {
  factory $SearchContentTaskCopyWith(
    SearchContentTask value,
    $Res Function(SearchContentTask) then,
  ) = _$SearchContentTaskCopyWithImpl<$Res, SearchContentTask>;
  @useResult
  $Res call({
    String query,
    List<String> scopeEntryIds,
    List<FileKind> fileKinds,
    bool caseSensitive,
    int maxMatchesPerFile,
    int maxFiles,
    Map<String, dynamic> options,
  });
}

/// @nodoc
class _$SearchContentTaskCopyWithImpl<$Res, $Val extends SearchContentTask>
    implements $SearchContentTaskCopyWith<$Res> {
  _$SearchContentTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchContentTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? scopeEntryIds = null,
    Object? fileKinds = null,
    Object? caseSensitive = null,
    Object? maxMatchesPerFile = null,
    Object? maxFiles = null,
    Object? options = null,
  }) {
    return _then(
      _value.copyWith(
            query: null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String,
            scopeEntryIds: null == scopeEntryIds
                ? _value.scopeEntryIds
                : scopeEntryIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            fileKinds: null == fileKinds
                ? _value.fileKinds
                : fileKinds // ignore: cast_nullable_to_non_nullable
                      as List<FileKind>,
            caseSensitive: null == caseSensitive
                ? _value.caseSensitive
                : caseSensitive // ignore: cast_nullable_to_non_nullable
                      as bool,
            maxMatchesPerFile: null == maxMatchesPerFile
                ? _value.maxMatchesPerFile
                : maxMatchesPerFile // ignore: cast_nullable_to_non_nullable
                      as int,
            maxFiles: null == maxFiles
                ? _value.maxFiles
                : maxFiles // ignore: cast_nullable_to_non_nullable
                      as int,
            options: null == options
                ? _value.options
                : options // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchContentTaskImplCopyWith<$Res>
    implements $SearchContentTaskCopyWith<$Res> {
  factory _$$SearchContentTaskImplCopyWith(
    _$SearchContentTaskImpl value,
    $Res Function(_$SearchContentTaskImpl) then,
  ) = __$$SearchContentTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String query,
    List<String> scopeEntryIds,
    List<FileKind> fileKinds,
    bool caseSensitive,
    int maxMatchesPerFile,
    int maxFiles,
    Map<String, dynamic> options,
  });
}

/// @nodoc
class __$$SearchContentTaskImplCopyWithImpl<$Res>
    extends _$SearchContentTaskCopyWithImpl<$Res, _$SearchContentTaskImpl>
    implements _$$SearchContentTaskImplCopyWith<$Res> {
  __$$SearchContentTaskImplCopyWithImpl(
    _$SearchContentTaskImpl _value,
    $Res Function(_$SearchContentTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchContentTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? scopeEntryIds = null,
    Object? fileKinds = null,
    Object? caseSensitive = null,
    Object? maxMatchesPerFile = null,
    Object? maxFiles = null,
    Object? options = null,
  }) {
    return _then(
      _$SearchContentTaskImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
        scopeEntryIds: null == scopeEntryIds
            ? _value._scopeEntryIds
            : scopeEntryIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        fileKinds: null == fileKinds
            ? _value._fileKinds
            : fileKinds // ignore: cast_nullable_to_non_nullable
                  as List<FileKind>,
        caseSensitive: null == caseSensitive
            ? _value.caseSensitive
            : caseSensitive // ignore: cast_nullable_to_non_nullable
                  as bool,
        maxMatchesPerFile: null == maxMatchesPerFile
            ? _value.maxMatchesPerFile
            : maxMatchesPerFile // ignore: cast_nullable_to_non_nullable
                  as int,
        maxFiles: null == maxFiles
            ? _value.maxFiles
            : maxFiles // ignore: cast_nullable_to_non_nullable
                  as int,
        options: null == options
            ? _value._options
            : options // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchContentTaskImpl extends _SearchContentTask {
  const _$SearchContentTaskImpl({
    required this.query,
    final List<String> scopeEntryIds = const <String>[],
    final List<FileKind> fileKinds = const <FileKind>[],
    this.caseSensitive = false,
    this.maxMatchesPerFile = 100,
    this.maxFiles = 1000,
    final Map<String, dynamic> options = const <String, dynamic>{},
  }) : _scopeEntryIds = scopeEntryIds,
       _fileKinds = fileKinds,
       _options = options,
       super._();

  factory _$SearchContentTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchContentTaskImplFromJson(json);

  /// Search query string or pattern
  @override
  final String query;

  /// File IDs to search within (empty = search all accessible files)
  final List<String> _scopeEntryIds;

  /// File IDs to search within (empty = search all accessible files)
  @override
  @JsonKey()
  List<String> get scopeEntryIds {
    if (_scopeEntryIds is EqualUnmodifiableListView) return _scopeEntryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scopeEntryIds);
  }

  /// File kinds to include in search (empty = all kinds)
  final List<FileKind> _fileKinds;

  /// File kinds to include in search (empty = all kinds)
  @override
  @JsonKey()
  List<FileKind> get fileKinds {
    if (_fileKinds is EqualUnmodifiableListView) return _fileKinds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileKinds);
  }

  /// Whether to search case sensitively
  @override
  @JsonKey()
  final bool caseSensitive;

  /// Maximum number of matches to return per file
  @override
  @JsonKey()
  final int maxMatchesPerFile;

  /// Maximum number of files to search
  @override
  @JsonKey()
  final int maxFiles;

  /// Additional search parameters
  final Map<String, dynamic> _options;

  /// Additional search parameters
  @override
  @JsonKey()
  Map<String, dynamic> get options {
    if (_options is EqualUnmodifiableMapView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_options);
  }

  @override
  String toString() {
    return 'SearchContentTask(query: $query, scopeEntryIds: $scopeEntryIds, fileKinds: $fileKinds, caseSensitive: $caseSensitive, maxMatchesPerFile: $maxMatchesPerFile, maxFiles: $maxFiles, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchContentTaskImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(
              other._scopeEntryIds,
              _scopeEntryIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._fileKinds,
              _fileKinds,
            ) &&
            (identical(other.caseSensitive, caseSensitive) ||
                other.caseSensitive == caseSensitive) &&
            (identical(other.maxMatchesPerFile, maxMatchesPerFile) ||
                other.maxMatchesPerFile == maxMatchesPerFile) &&
            (identical(other.maxFiles, maxFiles) ||
                other.maxFiles == maxFiles) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    query,
    const DeepCollectionEquality().hash(_scopeEntryIds),
    const DeepCollectionEquality().hash(_fileKinds),
    caseSensitive,
    maxMatchesPerFile,
    maxFiles,
    const DeepCollectionEquality().hash(_options),
  );

  /// Create a copy of SearchContentTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchContentTaskImplCopyWith<_$SearchContentTaskImpl> get copyWith =>
      __$$SearchContentTaskImplCopyWithImpl<_$SearchContentTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchContentTaskImplToJson(this);
  }
}

abstract class _SearchContentTask extends SearchContentTask {
  const factory _SearchContentTask({
    required final String query,
    final List<String> scopeEntryIds,
    final List<FileKind> fileKinds,
    final bool caseSensitive,
    final int maxMatchesPerFile,
    final int maxFiles,
    final Map<String, dynamic> options,
  }) = _$SearchContentTaskImpl;
  const _SearchContentTask._() : super._();

  factory _SearchContentTask.fromJson(Map<String, dynamic> json) =
      _$SearchContentTaskImpl.fromJson;

  /// Search query string or pattern
  @override
  String get query;

  /// File IDs to search within (empty = search all accessible files)
  @override
  List<String> get scopeEntryIds;

  /// File kinds to include in search (empty = all kinds)
  @override
  List<FileKind> get fileKinds;

  /// Whether to search case sensitively
  @override
  bool get caseSensitive;

  /// Maximum number of matches to return per file
  @override
  int get maxMatchesPerFile;

  /// Maximum number of files to search
  @override
  int get maxFiles;

  /// Additional search parameters
  @override
  Map<String, dynamic> get options;

  /// Create a copy of SearchContentTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchContentTaskImplCopyWith<_$SearchContentTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
