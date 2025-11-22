// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cache_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CacheMediaEntryResult _$CacheMediaEntryResultFromJson(
  Map<String, dynamic> json,
) {
  return _CacheMediaEntryResult.fromJson(json);
}

/// @nodoc
mixin _$CacheMediaEntryResult {
  /// The ID of the media entry that was processed
  String get entryId => throw _privateConstructorUsedError;

  /// Whether caching was successful
  bool get success => throw _privateConstructorUsedError;

  /// Error message if caching failed
  String? get error => throw _privateConstructorUsedError;

  /// Whether metadata was actually updated (false if already cached)
  bool get metadataUpdated => throw _privateConstructorUsedError;

  /// Whether thumbnail was generated/updated
  bool get thumbnailUpdated => throw _privateConstructorUsedError;

  /// Serializes this CacheMediaEntryResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CacheMediaEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CacheMediaEntryResultCopyWith<CacheMediaEntryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheMediaEntryResultCopyWith<$Res> {
  factory $CacheMediaEntryResultCopyWith(
    CacheMediaEntryResult value,
    $Res Function(CacheMediaEntryResult) then,
  ) = _$CacheMediaEntryResultCopyWithImpl<$Res, CacheMediaEntryResult>;
  @useResult
  $Res call({
    String entryId,
    bool success,
    String? error,
    bool metadataUpdated,
    bool thumbnailUpdated,
  });
}

/// @nodoc
class _$CacheMediaEntryResultCopyWithImpl<
  $Res,
  $Val extends CacheMediaEntryResult
>
    implements $CacheMediaEntryResultCopyWith<$Res> {
  _$CacheMediaEntryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CacheMediaEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? success = null,
    Object? error = freezed,
    Object? metadataUpdated = null,
    Object? thumbnailUpdated = null,
  }) {
    return _then(
      _value.copyWith(
            entryId: null == entryId
                ? _value.entryId
                : entryId // ignore: cast_nullable_to_non_nullable
                      as String,
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            metadataUpdated: null == metadataUpdated
                ? _value.metadataUpdated
                : metadataUpdated // ignore: cast_nullable_to_non_nullable
                      as bool,
            thumbnailUpdated: null == thumbnailUpdated
                ? _value.thumbnailUpdated
                : thumbnailUpdated // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CacheMediaEntryResultImplCopyWith<$Res>
    implements $CacheMediaEntryResultCopyWith<$Res> {
  factory _$$CacheMediaEntryResultImplCopyWith(
    _$CacheMediaEntryResultImpl value,
    $Res Function(_$CacheMediaEntryResultImpl) then,
  ) = __$$CacheMediaEntryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String entryId,
    bool success,
    String? error,
    bool metadataUpdated,
    bool thumbnailUpdated,
  });
}

/// @nodoc
class __$$CacheMediaEntryResultImplCopyWithImpl<$Res>
    extends
        _$CacheMediaEntryResultCopyWithImpl<$Res, _$CacheMediaEntryResultImpl>
    implements _$$CacheMediaEntryResultImplCopyWith<$Res> {
  __$$CacheMediaEntryResultImplCopyWithImpl(
    _$CacheMediaEntryResultImpl _value,
    $Res Function(_$CacheMediaEntryResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CacheMediaEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? success = null,
    Object? error = freezed,
    Object? metadataUpdated = null,
    Object? thumbnailUpdated = null,
  }) {
    return _then(
      _$CacheMediaEntryResultImpl(
        entryId: null == entryId
            ? _value.entryId
            : entryId // ignore: cast_nullable_to_non_nullable
                  as String,
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        metadataUpdated: null == metadataUpdated
            ? _value.metadataUpdated
            : metadataUpdated // ignore: cast_nullable_to_non_nullable
                  as bool,
        thumbnailUpdated: null == thumbnailUpdated
            ? _value.thumbnailUpdated
            : thumbnailUpdated // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CacheMediaEntryResultImpl implements _CacheMediaEntryResult {
  const _$CacheMediaEntryResultImpl({
    required this.entryId,
    required this.success,
    this.error,
    this.metadataUpdated = false,
    this.thumbnailUpdated = false,
  });

  factory _$CacheMediaEntryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CacheMediaEntryResultImplFromJson(json);

  /// The ID of the media entry that was processed
  @override
  final String entryId;

  /// Whether caching was successful
  @override
  final bool success;

  /// Error message if caching failed
  @override
  final String? error;

  /// Whether metadata was actually updated (false if already cached)
  @override
  @JsonKey()
  final bool metadataUpdated;

  /// Whether thumbnail was generated/updated
  @override
  @JsonKey()
  final bool thumbnailUpdated;

  @override
  String toString() {
    return 'CacheMediaEntryResult(entryId: $entryId, success: $success, error: $error, metadataUpdated: $metadataUpdated, thumbnailUpdated: $thumbnailUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheMediaEntryResultImpl &&
            (identical(other.entryId, entryId) || other.entryId == entryId) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.metadataUpdated, metadataUpdated) ||
                other.metadataUpdated == metadataUpdated) &&
            (identical(other.thumbnailUpdated, thumbnailUpdated) ||
                other.thumbnailUpdated == thumbnailUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    entryId,
    success,
    error,
    metadataUpdated,
    thumbnailUpdated,
  );

  /// Create a copy of CacheMediaEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheMediaEntryResultImplCopyWith<_$CacheMediaEntryResultImpl>
  get copyWith =>
      __$$CacheMediaEntryResultImplCopyWithImpl<_$CacheMediaEntryResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CacheMediaEntryResultImplToJson(this);
  }
}

abstract class _CacheMediaEntryResult implements CacheMediaEntryResult {
  const factory _CacheMediaEntryResult({
    required final String entryId,
    required final bool success,
    final String? error,
    final bool metadataUpdated,
    final bool thumbnailUpdated,
  }) = _$CacheMediaEntryResultImpl;

  factory _CacheMediaEntryResult.fromJson(Map<String, dynamic> json) =
      _$CacheMediaEntryResultImpl.fromJson;

  /// The ID of the media entry that was processed
  @override
  String get entryId;

  /// Whether caching was successful
  @override
  bool get success;

  /// Error message if caching failed
  @override
  String? get error;

  /// Whether metadata was actually updated (false if already cached)
  @override
  bool get metadataUpdated;

  /// Whether thumbnail was generated/updated
  @override
  bool get thumbnailUpdated;

  /// Create a copy of CacheMediaEntryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheMediaEntryResultImplCopyWith<_$CacheMediaEntryResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}

CacheMediaResult _$CacheMediaResultFromJson(Map<String, dynamic> json) {
  return _CacheMediaResult.fromJson(json);
}

/// @nodoc
mixin _$CacheMediaResult {
  /// Results for each individual media entry
  List<CacheMediaEntryResult> get entryResults =>
      throw _privateConstructorUsedError;

  /// Total number of entries processed
  int get totalProcessed => throw _privateConstructorUsedError;

  /// Number of entries successfully cached
  int get successful => throw _privateConstructorUsedError;

  /// Number of entries that failed
  int get failed => throw _privateConstructorUsedError;

  /// Serializes this CacheMediaResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CacheMediaResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CacheMediaResultCopyWith<CacheMediaResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheMediaResultCopyWith<$Res> {
  factory $CacheMediaResultCopyWith(
    CacheMediaResult value,
    $Res Function(CacheMediaResult) then,
  ) = _$CacheMediaResultCopyWithImpl<$Res, CacheMediaResult>;
  @useResult
  $Res call({
    List<CacheMediaEntryResult> entryResults,
    int totalProcessed,
    int successful,
    int failed,
  });
}

/// @nodoc
class _$CacheMediaResultCopyWithImpl<$Res, $Val extends CacheMediaResult>
    implements $CacheMediaResultCopyWith<$Res> {
  _$CacheMediaResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CacheMediaResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryResults = null,
    Object? totalProcessed = null,
    Object? successful = null,
    Object? failed = null,
  }) {
    return _then(
      _value.copyWith(
            entryResults: null == entryResults
                ? _value.entryResults
                : entryResults // ignore: cast_nullable_to_non_nullable
                      as List<CacheMediaEntryResult>,
            totalProcessed: null == totalProcessed
                ? _value.totalProcessed
                : totalProcessed // ignore: cast_nullable_to_non_nullable
                      as int,
            successful: null == successful
                ? _value.successful
                : successful // ignore: cast_nullable_to_non_nullable
                      as int,
            failed: null == failed
                ? _value.failed
                : failed // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CacheMediaResultImplCopyWith<$Res>
    implements $CacheMediaResultCopyWith<$Res> {
  factory _$$CacheMediaResultImplCopyWith(
    _$CacheMediaResultImpl value,
    $Res Function(_$CacheMediaResultImpl) then,
  ) = __$$CacheMediaResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<CacheMediaEntryResult> entryResults,
    int totalProcessed,
    int successful,
    int failed,
  });
}

/// @nodoc
class __$$CacheMediaResultImplCopyWithImpl<$Res>
    extends _$CacheMediaResultCopyWithImpl<$Res, _$CacheMediaResultImpl>
    implements _$$CacheMediaResultImplCopyWith<$Res> {
  __$$CacheMediaResultImplCopyWithImpl(
    _$CacheMediaResultImpl _value,
    $Res Function(_$CacheMediaResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CacheMediaResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryResults = null,
    Object? totalProcessed = null,
    Object? successful = null,
    Object? failed = null,
  }) {
    return _then(
      _$CacheMediaResultImpl(
        entryResults: null == entryResults
            ? _value._entryResults
            : entryResults // ignore: cast_nullable_to_non_nullable
                  as List<CacheMediaEntryResult>,
        totalProcessed: null == totalProcessed
            ? _value.totalProcessed
            : totalProcessed // ignore: cast_nullable_to_non_nullable
                  as int,
        successful: null == successful
            ? _value.successful
            : successful // ignore: cast_nullable_to_non_nullable
                  as int,
        failed: null == failed
            ? _value.failed
            : failed // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CacheMediaResultImpl implements _CacheMediaResult {
  const _$CacheMediaResultImpl({
    required final List<CacheMediaEntryResult> entryResults,
    this.totalProcessed = 0,
    this.successful = 0,
    this.failed = 0,
  }) : _entryResults = entryResults;

  factory _$CacheMediaResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CacheMediaResultImplFromJson(json);

  /// Results for each individual media entry
  final List<CacheMediaEntryResult> _entryResults;

  /// Results for each individual media entry
  @override
  List<CacheMediaEntryResult> get entryResults {
    if (_entryResults is EqualUnmodifiableListView) return _entryResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entryResults);
  }

  /// Total number of entries processed
  @override
  @JsonKey()
  final int totalProcessed;

  /// Number of entries successfully cached
  @override
  @JsonKey()
  final int successful;

  /// Number of entries that failed
  @override
  @JsonKey()
  final int failed;

  @override
  String toString() {
    return 'CacheMediaResult(entryResults: $entryResults, totalProcessed: $totalProcessed, successful: $successful, failed: $failed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheMediaResultImpl &&
            const DeepCollectionEquality().equals(
              other._entryResults,
              _entryResults,
            ) &&
            (identical(other.totalProcessed, totalProcessed) ||
                other.totalProcessed == totalProcessed) &&
            (identical(other.successful, successful) ||
                other.successful == successful) &&
            (identical(other.failed, failed) || other.failed == failed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_entryResults),
    totalProcessed,
    successful,
    failed,
  );

  /// Create a copy of CacheMediaResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheMediaResultImplCopyWith<_$CacheMediaResultImpl> get copyWith =>
      __$$CacheMediaResultImplCopyWithImpl<_$CacheMediaResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CacheMediaResultImplToJson(this);
  }
}

abstract class _CacheMediaResult implements CacheMediaResult {
  const factory _CacheMediaResult({
    required final List<CacheMediaEntryResult> entryResults,
    final int totalProcessed,
    final int successful,
    final int failed,
  }) = _$CacheMediaResultImpl;

  factory _CacheMediaResult.fromJson(Map<String, dynamic> json) =
      _$CacheMediaResultImpl.fromJson;

  /// Results for each individual media entry
  @override
  List<CacheMediaEntryResult> get entryResults;

  /// Total number of entries processed
  @override
  int get totalProcessed;

  /// Number of entries successfully cached
  @override
  int get successful;

  /// Number of entries that failed
  @override
  int get failed;

  /// Create a copy of CacheMediaResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheMediaResultImplCopyWith<_$CacheMediaResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CacheMediaTask _$CacheMediaTaskFromJson(Map<String, dynamic> json) {
  return _CacheMediaTask.fromJson(json);
}

/// @nodoc
mixin _$CacheMediaTask {
  /// IDs of media entries to cache (images, videos, audio)
  List<String> get mediaEntryIds => throw _privateConstructorUsedError;

  /// Whether to generate thumbnails
  bool get generateThumbnails => throw _privateConstructorUsedError;

  /// Whether to extract detailed metadata
  bool get extractMetadata => throw _privateConstructorUsedError;

  /// Thumbnail size parameters (width, height)
  int get thumbnailSize => throw _privateConstructorUsedError;

  /// Force refresh even if already cached
  bool get forceRefresh => throw _privateConstructorUsedError;

  /// Serializes this CacheMediaTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CacheMediaTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CacheMediaTaskCopyWith<CacheMediaTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheMediaTaskCopyWith<$Res> {
  factory $CacheMediaTaskCopyWith(
    CacheMediaTask value,
    $Res Function(CacheMediaTask) then,
  ) = _$CacheMediaTaskCopyWithImpl<$Res, CacheMediaTask>;
  @useResult
  $Res call({
    List<String> mediaEntryIds,
    bool generateThumbnails,
    bool extractMetadata,
    int thumbnailSize,
    bool forceRefresh,
  });
}

/// @nodoc
class _$CacheMediaTaskCopyWithImpl<$Res, $Val extends CacheMediaTask>
    implements $CacheMediaTaskCopyWith<$Res> {
  _$CacheMediaTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CacheMediaTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaEntryIds = null,
    Object? generateThumbnails = null,
    Object? extractMetadata = null,
    Object? thumbnailSize = null,
    Object? forceRefresh = null,
  }) {
    return _then(
      _value.copyWith(
            mediaEntryIds: null == mediaEntryIds
                ? _value.mediaEntryIds
                : mediaEntryIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            generateThumbnails: null == generateThumbnails
                ? _value.generateThumbnails
                : generateThumbnails // ignore: cast_nullable_to_non_nullable
                      as bool,
            extractMetadata: null == extractMetadata
                ? _value.extractMetadata
                : extractMetadata // ignore: cast_nullable_to_non_nullable
                      as bool,
            thumbnailSize: null == thumbnailSize
                ? _value.thumbnailSize
                : thumbnailSize // ignore: cast_nullable_to_non_nullable
                      as int,
            forceRefresh: null == forceRefresh
                ? _value.forceRefresh
                : forceRefresh // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CacheMediaTaskImplCopyWith<$Res>
    implements $CacheMediaTaskCopyWith<$Res> {
  factory _$$CacheMediaTaskImplCopyWith(
    _$CacheMediaTaskImpl value,
    $Res Function(_$CacheMediaTaskImpl) then,
  ) = __$$CacheMediaTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> mediaEntryIds,
    bool generateThumbnails,
    bool extractMetadata,
    int thumbnailSize,
    bool forceRefresh,
  });
}

/// @nodoc
class __$$CacheMediaTaskImplCopyWithImpl<$Res>
    extends _$CacheMediaTaskCopyWithImpl<$Res, _$CacheMediaTaskImpl>
    implements _$$CacheMediaTaskImplCopyWith<$Res> {
  __$$CacheMediaTaskImplCopyWithImpl(
    _$CacheMediaTaskImpl _value,
    $Res Function(_$CacheMediaTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CacheMediaTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaEntryIds = null,
    Object? generateThumbnails = null,
    Object? extractMetadata = null,
    Object? thumbnailSize = null,
    Object? forceRefresh = null,
  }) {
    return _then(
      _$CacheMediaTaskImpl(
        mediaEntryIds: null == mediaEntryIds
            ? _value._mediaEntryIds
            : mediaEntryIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        generateThumbnails: null == generateThumbnails
            ? _value.generateThumbnails
            : generateThumbnails // ignore: cast_nullable_to_non_nullable
                  as bool,
        extractMetadata: null == extractMetadata
            ? _value.extractMetadata
            : extractMetadata // ignore: cast_nullable_to_non_nullable
                  as bool,
        thumbnailSize: null == thumbnailSize
            ? _value.thumbnailSize
            : thumbnailSize // ignore: cast_nullable_to_non_nullable
                  as int,
        forceRefresh: null == forceRefresh
            ? _value.forceRefresh
            : forceRefresh // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CacheMediaTaskImpl extends _CacheMediaTask {
  const _$CacheMediaTaskImpl({
    required final List<String> mediaEntryIds,
    this.generateThumbnails = true,
    this.extractMetadata = true,
    this.thumbnailSize = 256,
    this.forceRefresh = false,
  }) : _mediaEntryIds = mediaEntryIds,
       super._();

  factory _$CacheMediaTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$CacheMediaTaskImplFromJson(json);

  /// IDs of media entries to cache (images, videos, audio)
  final List<String> _mediaEntryIds;

  /// IDs of media entries to cache (images, videos, audio)
  @override
  List<String> get mediaEntryIds {
    if (_mediaEntryIds is EqualUnmodifiableListView) return _mediaEntryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaEntryIds);
  }

  /// Whether to generate thumbnails
  @override
  @JsonKey()
  final bool generateThumbnails;

  /// Whether to extract detailed metadata
  @override
  @JsonKey()
  final bool extractMetadata;

  /// Thumbnail size parameters (width, height)
  @override
  @JsonKey()
  final int thumbnailSize;

  /// Force refresh even if already cached
  @override
  @JsonKey()
  final bool forceRefresh;

  @override
  String toString() {
    return 'CacheMediaTask(mediaEntryIds: $mediaEntryIds, generateThumbnails: $generateThumbnails, extractMetadata: $extractMetadata, thumbnailSize: $thumbnailSize, forceRefresh: $forceRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheMediaTaskImpl &&
            const DeepCollectionEquality().equals(
              other._mediaEntryIds,
              _mediaEntryIds,
            ) &&
            (identical(other.generateThumbnails, generateThumbnails) ||
                other.generateThumbnails == generateThumbnails) &&
            (identical(other.extractMetadata, extractMetadata) ||
                other.extractMetadata == extractMetadata) &&
            (identical(other.thumbnailSize, thumbnailSize) ||
                other.thumbnailSize == thumbnailSize) &&
            (identical(other.forceRefresh, forceRefresh) ||
                other.forceRefresh == forceRefresh));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_mediaEntryIds),
    generateThumbnails,
    extractMetadata,
    thumbnailSize,
    forceRefresh,
  );

  /// Create a copy of CacheMediaTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheMediaTaskImplCopyWith<_$CacheMediaTaskImpl> get copyWith =>
      __$$CacheMediaTaskImplCopyWithImpl<_$CacheMediaTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CacheMediaTaskImplToJson(this);
  }
}

abstract class _CacheMediaTask extends CacheMediaTask {
  const factory _CacheMediaTask({
    required final List<String> mediaEntryIds,
    final bool generateThumbnails,
    final bool extractMetadata,
    final int thumbnailSize,
    final bool forceRefresh,
  }) = _$CacheMediaTaskImpl;
  const _CacheMediaTask._() : super._();

  factory _CacheMediaTask.fromJson(Map<String, dynamic> json) =
      _$CacheMediaTaskImpl.fromJson;

  /// IDs of media entries to cache (images, videos, audio)
  @override
  List<String> get mediaEntryIds;

  /// Whether to generate thumbnails
  @override
  bool get generateThumbnails;

  /// Whether to extract detailed metadata
  @override
  bool get extractMetadata;

  /// Thumbnail size parameters (width, height)
  @override
  int get thumbnailSize;

  /// Force refresh even if already cached
  @override
  bool get forceRefresh;

  /// Create a copy of CacheMediaTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheMediaTaskImplCopyWith<_$CacheMediaTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
