// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SearchFileTask _$SearchFileTaskFromJson(Map<String, dynamic> json) {
  return _SearchFileTask.fromJson(json);
}

/// @nodoc
mixin _$SearchFileTask {
  /// Search query string for matching against names, paths, and tags
  String get query => throw _privateConstructorUsedError;

  /// Optional file kinds to filter by
  List<FileKind> get kinds => throw _privateConstructorUsedError;

  /// Optional file extensions to filter by
  List<String> get extensions => throw _privateConstructorUsedError;

  /// Optional size range in bytes (min, max)
  List<int?> get sizeRange => throw _privateConstructorUsedError;

  /// Optional tags to filter by
  List<String> get tags => throw _privateConstructorUsedError;

  /// Optional status filter
  EntryStatus? get status => throw _privateConstructorUsedError;

  /// Whether to search recursively from root folders
  bool get recursive => throw _privateConstructorUsedError;

  /// Maximum number of results to return
  int get maxResults => throw _privateConstructorUsedError;

  /// Serializes this SearchFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchFileTaskCopyWith<SearchFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFileTaskCopyWith<$Res> {
  factory $SearchFileTaskCopyWith(
    SearchFileTask value,
    $Res Function(SearchFileTask) then,
  ) = _$SearchFileTaskCopyWithImpl<$Res, SearchFileTask>;
  @useResult
  $Res call({
    String query,
    List<FileKind> kinds,
    List<String> extensions,
    List<int?> sizeRange,
    List<String> tags,
    EntryStatus? status,
    bool recursive,
    int maxResults,
  });
}

/// @nodoc
class _$SearchFileTaskCopyWithImpl<$Res, $Val extends SearchFileTask>
    implements $SearchFileTaskCopyWith<$Res> {
  _$SearchFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? kinds = null,
    Object? extensions = null,
    Object? sizeRange = null,
    Object? tags = null,
    Object? status = freezed,
    Object? recursive = null,
    Object? maxResults = null,
  }) {
    return _then(
      _value.copyWith(
            query: null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String,
            kinds: null == kinds
                ? _value.kinds
                : kinds // ignore: cast_nullable_to_non_nullable
                      as List<FileKind>,
            extensions: null == extensions
                ? _value.extensions
                : extensions // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            sizeRange: null == sizeRange
                ? _value.sizeRange
                : sizeRange // ignore: cast_nullable_to_non_nullable
                      as List<int?>,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as EntryStatus?,
            recursive: null == recursive
                ? _value.recursive
                : recursive // ignore: cast_nullable_to_non_nullable
                      as bool,
            maxResults: null == maxResults
                ? _value.maxResults
                : maxResults // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchFileTaskImplCopyWith<$Res>
    implements $SearchFileTaskCopyWith<$Res> {
  factory _$$SearchFileTaskImplCopyWith(
    _$SearchFileTaskImpl value,
    $Res Function(_$SearchFileTaskImpl) then,
  ) = __$$SearchFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String query,
    List<FileKind> kinds,
    List<String> extensions,
    List<int?> sizeRange,
    List<String> tags,
    EntryStatus? status,
    bool recursive,
    int maxResults,
  });
}

/// @nodoc
class __$$SearchFileTaskImplCopyWithImpl<$Res>
    extends _$SearchFileTaskCopyWithImpl<$Res, _$SearchFileTaskImpl>
    implements _$$SearchFileTaskImplCopyWith<$Res> {
  __$$SearchFileTaskImplCopyWithImpl(
    _$SearchFileTaskImpl _value,
    $Res Function(_$SearchFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? kinds = null,
    Object? extensions = null,
    Object? sizeRange = null,
    Object? tags = null,
    Object? status = freezed,
    Object? recursive = null,
    Object? maxResults = null,
  }) {
    return _then(
      _$SearchFileTaskImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
        kinds: null == kinds
            ? _value._kinds
            : kinds // ignore: cast_nullable_to_non_nullable
                  as List<FileKind>,
        extensions: null == extensions
            ? _value._extensions
            : extensions // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        sizeRange: null == sizeRange
            ? _value._sizeRange
            : sizeRange // ignore: cast_nullable_to_non_nullable
                  as List<int?>,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as EntryStatus?,
        recursive: null == recursive
            ? _value.recursive
            : recursive // ignore: cast_nullable_to_non_nullable
                  as bool,
        maxResults: null == maxResults
            ? _value.maxResults
            : maxResults // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchFileTaskImpl extends _SearchFileTask {
  const _$SearchFileTaskImpl({
    required this.query,
    final List<FileKind> kinds = const <FileKind>[],
    final List<String> extensions = const <String>[],
    final List<int?> sizeRange = const <int?>[null, null],
    final List<String> tags = const <String>[],
    this.status,
    this.recursive = true,
    this.maxResults = 100,
  }) : _kinds = kinds,
       _extensions = extensions,
       _sizeRange = sizeRange,
       _tags = tags,
       super._();

  factory _$SearchFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchFileTaskImplFromJson(json);

  /// Search query string for matching against names, paths, and tags
  @override
  final String query;

  /// Optional file kinds to filter by
  final List<FileKind> _kinds;

  /// Optional file kinds to filter by
  @override
  @JsonKey()
  List<FileKind> get kinds {
    if (_kinds is EqualUnmodifiableListView) return _kinds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_kinds);
  }

  /// Optional file extensions to filter by
  final List<String> _extensions;

  /// Optional file extensions to filter by
  @override
  @JsonKey()
  List<String> get extensions {
    if (_extensions is EqualUnmodifiableListView) return _extensions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extensions);
  }

  /// Optional size range in bytes (min, max)
  final List<int?> _sizeRange;

  /// Optional size range in bytes (min, max)
  @override
  @JsonKey()
  List<int?> get sizeRange {
    if (_sizeRange is EqualUnmodifiableListView) return _sizeRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sizeRange);
  }

  /// Optional tags to filter by
  final List<String> _tags;

  /// Optional tags to filter by
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// Optional status filter
  @override
  final EntryStatus? status;

  /// Whether to search recursively from root folders
  @override
  @JsonKey()
  final bool recursive;

  /// Maximum number of results to return
  @override
  @JsonKey()
  final int maxResults;

  @override
  String toString() {
    return 'SearchFileTask(query: $query, kinds: $kinds, extensions: $extensions, sizeRange: $sizeRange, tags: $tags, status: $status, recursive: $recursive, maxResults: $maxResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFileTaskImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._kinds, _kinds) &&
            const DeepCollectionEquality().equals(
              other._extensions,
              _extensions,
            ) &&
            const DeepCollectionEquality().equals(
              other._sizeRange,
              _sizeRange,
            ) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.recursive, recursive) ||
                other.recursive == recursive) &&
            (identical(other.maxResults, maxResults) ||
                other.maxResults == maxResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    query,
    const DeepCollectionEquality().hash(_kinds),
    const DeepCollectionEquality().hash(_extensions),
    const DeepCollectionEquality().hash(_sizeRange),
    const DeepCollectionEquality().hash(_tags),
    status,
    recursive,
    maxResults,
  );

  /// Create a copy of SearchFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFileTaskImplCopyWith<_$SearchFileTaskImpl> get copyWith =>
      __$$SearchFileTaskImplCopyWithImpl<_$SearchFileTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchFileTaskImplToJson(this);
  }
}

abstract class _SearchFileTask extends SearchFileTask {
  const factory _SearchFileTask({
    required final String query,
    final List<FileKind> kinds,
    final List<String> extensions,
    final List<int?> sizeRange,
    final List<String> tags,
    final EntryStatus? status,
    final bool recursive,
    final int maxResults,
  }) = _$SearchFileTaskImpl;
  const _SearchFileTask._() : super._();

  factory _SearchFileTask.fromJson(Map<String, dynamic> json) =
      _$SearchFileTaskImpl.fromJson;

  /// Search query string for matching against names, paths, and tags
  @override
  String get query;

  /// Optional file kinds to filter by
  @override
  List<FileKind> get kinds;

  /// Optional file extensions to filter by
  @override
  List<String> get extensions;

  /// Optional size range in bytes (min, max)
  @override
  List<int?> get sizeRange;

  /// Optional tags to filter by
  @override
  List<String> get tags;

  /// Optional status filter
  @override
  EntryStatus? get status;

  /// Whether to search recursively from root folders
  @override
  bool get recursive;

  /// Maximum number of results to return
  @override
  int get maxResults;

  /// Create a copy of SearchFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchFileTaskImplCopyWith<_$SearchFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchFileResult _$SearchFileResultFromJson(Map<String, dynamic> json) {
  return _SearchFileResult.fromJson(json);
}

/// @nodoc
mixin _$SearchFileResult {
  /// List of matching entry IDs
  List<String> get matches => throw _privateConstructorUsedError;

  /// Total number of entries that were searched
  int get totalSearched => throw _privateConstructorUsedError;

  /// The original search query
  String get query => throw _privateConstructorUsedError;

  /// Optional error message if the search was partially or fully unsuccessful
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this SearchFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchFileResultCopyWith<SearchFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFileResultCopyWith<$Res> {
  factory $SearchFileResultCopyWith(
    SearchFileResult value,
    $Res Function(SearchFileResult) then,
  ) = _$SearchFileResultCopyWithImpl<$Res, SearchFileResult>;
  @useResult
  $Res call({
    List<String> matches,
    int totalSearched,
    String query,
    String? error,
  });
}

/// @nodoc
class _$SearchFileResultCopyWithImpl<$Res, $Val extends SearchFileResult>
    implements $SearchFileResultCopyWith<$Res> {
  _$SearchFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matches = null,
    Object? totalSearched = null,
    Object? query = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            matches: null == matches
                ? _value.matches
                : matches // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            totalSearched: null == totalSearched
                ? _value.totalSearched
                : totalSearched // ignore: cast_nullable_to_non_nullable
                      as int,
            query: null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchFileResultImplCopyWith<$Res>
    implements $SearchFileResultCopyWith<$Res> {
  factory _$$SearchFileResultImplCopyWith(
    _$SearchFileResultImpl value,
    $Res Function(_$SearchFileResultImpl) then,
  ) = __$$SearchFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> matches,
    int totalSearched,
    String query,
    String? error,
  });
}

/// @nodoc
class __$$SearchFileResultImplCopyWithImpl<$Res>
    extends _$SearchFileResultCopyWithImpl<$Res, _$SearchFileResultImpl>
    implements _$$SearchFileResultImplCopyWith<$Res> {
  __$$SearchFileResultImplCopyWithImpl(
    _$SearchFileResultImpl _value,
    $Res Function(_$SearchFileResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matches = null,
    Object? totalSearched = null,
    Object? query = null,
    Object? error = freezed,
  }) {
    return _then(
      _$SearchFileResultImpl(
        matches: null == matches
            ? _value._matches
            : matches // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        totalSearched: null == totalSearched
            ? _value.totalSearched
            : totalSearched // ignore: cast_nullable_to_non_nullable
                  as int,
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchFileResultImpl implements _SearchFileResult {
  const _$SearchFileResultImpl({
    required final List<String> matches,
    required this.totalSearched,
    required this.query,
    this.error,
  }) : _matches = matches;

  factory _$SearchFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchFileResultImplFromJson(json);

  /// List of matching entry IDs
  final List<String> _matches;

  /// List of matching entry IDs
  @override
  List<String> get matches {
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matches);
  }

  /// Total number of entries that were searched
  @override
  final int totalSearched;

  /// The original search query
  @override
  final String query;

  /// Optional error message if the search was partially or fully unsuccessful
  @override
  final String? error;

  @override
  String toString() {
    return 'SearchFileResult(matches: $matches, totalSearched: $totalSearched, query: $query, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFileResultImpl &&
            const DeepCollectionEquality().equals(other._matches, _matches) &&
            (identical(other.totalSearched, totalSearched) ||
                other.totalSearched == totalSearched) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_matches),
    totalSearched,
    query,
    error,
  );

  /// Create a copy of SearchFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFileResultImplCopyWith<_$SearchFileResultImpl> get copyWith =>
      __$$SearchFileResultImplCopyWithImpl<_$SearchFileResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchFileResultImplToJson(this);
  }
}

abstract class _SearchFileResult implements SearchFileResult {
  const factory _SearchFileResult({
    required final List<String> matches,
    required final int totalSearched,
    required final String query,
    final String? error,
  }) = _$SearchFileResultImpl;

  factory _SearchFileResult.fromJson(Map<String, dynamic> json) =
      _$SearchFileResultImpl.fromJson;

  /// List of matching entry IDs
  @override
  List<String> get matches;

  /// Total number of entries that were searched
  @override
  int get totalSearched;

  /// The original search query
  @override
  String get query;

  /// Optional error message if the search was partially or fully unsuccessful
  @override
  String? get error;

  /// Create a copy of SearchFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchFileResultImplCopyWith<_$SearchFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
