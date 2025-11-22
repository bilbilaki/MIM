// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LinkPreview _$LinkPreviewFromJson(Map<String, dynamic> json) {
  return _LinkPreview.fromJson(json);
}

/// @nodoc
mixin _$LinkPreview {
  /// Title of the preview
  String get title => throw _privateConstructorUsedError;

  /// Optional description
  String? get description => throw _privateConstructorUsedError;

  /// Optional thumbnail entry ID
  String? get thumbnailEntryId => throw _privateConstructorUsedError;

  /// MIME type of the preview content
  String? get mimeType => throw _privateConstructorUsedError;

  /// Size of preview data in bytes
  int? get sizeBytes => throw _privateConstructorUsedError;

  /// Additional metadata specific to the preview type
  Map<String, dynamic> get custom => throw _privateConstructorUsedError;

  /// Serializes this LinkPreview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LinkPreview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkPreviewCopyWith<LinkPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkPreviewCopyWith<$Res> {
  factory $LinkPreviewCopyWith(
    LinkPreview value,
    $Res Function(LinkPreview) then,
  ) = _$LinkPreviewCopyWithImpl<$Res, LinkPreview>;
  @useResult
  $Res call({
    String title,
    String? description,
    String? thumbnailEntryId,
    String? mimeType,
    int? sizeBytes,
    Map<String, dynamic> custom,
  });
}

/// @nodoc
class _$LinkPreviewCopyWithImpl<$Res, $Val extends LinkPreview>
    implements $LinkPreviewCopyWith<$Res> {
  _$LinkPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LinkPreview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? thumbnailEntryId = freezed,
    Object? mimeType = freezed,
    Object? sizeBytes = freezed,
    Object? custom = null,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            thumbnailEntryId: freezed == thumbnailEntryId
                ? _value.thumbnailEntryId
                : thumbnailEntryId // ignore: cast_nullable_to_non_nullable
                      as String?,
            mimeType: freezed == mimeType
                ? _value.mimeType
                : mimeType // ignore: cast_nullable_to_non_nullable
                      as String?,
            sizeBytes: freezed == sizeBytes
                ? _value.sizeBytes
                : sizeBytes // ignore: cast_nullable_to_non_nullable
                      as int?,
            custom: null == custom
                ? _value.custom
                : custom // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LinkPreviewImplCopyWith<$Res>
    implements $LinkPreviewCopyWith<$Res> {
  factory _$$LinkPreviewImplCopyWith(
    _$LinkPreviewImpl value,
    $Res Function(_$LinkPreviewImpl) then,
  ) = __$$LinkPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String? description,
    String? thumbnailEntryId,
    String? mimeType,
    int? sizeBytes,
    Map<String, dynamic> custom,
  });
}

/// @nodoc
class __$$LinkPreviewImplCopyWithImpl<$Res>
    extends _$LinkPreviewCopyWithImpl<$Res, _$LinkPreviewImpl>
    implements _$$LinkPreviewImplCopyWith<$Res> {
  __$$LinkPreviewImplCopyWithImpl(
    _$LinkPreviewImpl _value,
    $Res Function(_$LinkPreviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LinkPreview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? thumbnailEntryId = freezed,
    Object? mimeType = freezed,
    Object? sizeBytes = freezed,
    Object? custom = null,
  }) {
    return _then(
      _$LinkPreviewImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        thumbnailEntryId: freezed == thumbnailEntryId
            ? _value.thumbnailEntryId
            : thumbnailEntryId // ignore: cast_nullable_to_non_nullable
                  as String?,
        mimeType: freezed == mimeType
            ? _value.mimeType
            : mimeType // ignore: cast_nullable_to_non_nullable
                  as String?,
        sizeBytes: freezed == sizeBytes
            ? _value.sizeBytes
            : sizeBytes // ignore: cast_nullable_to_non_nullable
                  as int?,
        custom: null == custom
            ? _value._custom
            : custom // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkPreviewImpl implements _LinkPreview {
  const _$LinkPreviewImpl({
    required this.title,
    this.description,
    this.thumbnailEntryId,
    this.mimeType,
    this.sizeBytes,
    final Map<String, dynamic> custom = const <String, dynamic>{},
  }) : _custom = custom;

  factory _$LinkPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkPreviewImplFromJson(json);

  /// Title of the preview
  @override
  final String title;

  /// Optional description
  @override
  final String? description;

  /// Optional thumbnail entry ID
  @override
  final String? thumbnailEntryId;

  /// MIME type of the preview content
  @override
  final String? mimeType;

  /// Size of preview data in bytes
  @override
  final int? sizeBytes;

  /// Additional metadata specific to the preview type
  final Map<String, dynamic> _custom;

  /// Additional metadata specific to the preview type
  @override
  @JsonKey()
  Map<String, dynamic> get custom {
    if (_custom is EqualUnmodifiableMapView) return _custom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_custom);
  }

  @override
  String toString() {
    return 'LinkPreview(title: $title, description: $description, thumbnailEntryId: $thumbnailEntryId, mimeType: $mimeType, sizeBytes: $sizeBytes, custom: $custom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkPreviewImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnailEntryId, thumbnailEntryId) ||
                other.thumbnailEntryId == thumbnailEntryId) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes) &&
            const DeepCollectionEquality().equals(other._custom, _custom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    description,
    thumbnailEntryId,
    mimeType,
    sizeBytes,
    const DeepCollectionEquality().hash(_custom),
  );

  /// Create a copy of LinkPreview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkPreviewImplCopyWith<_$LinkPreviewImpl> get copyWith =>
      __$$LinkPreviewImplCopyWithImpl<_$LinkPreviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkPreviewImplToJson(this);
  }
}

abstract class _LinkPreview implements LinkPreview {
  const factory _LinkPreview({
    required final String title,
    final String? description,
    final String? thumbnailEntryId,
    final String? mimeType,
    final int? sizeBytes,
    final Map<String, dynamic> custom,
  }) = _$LinkPreviewImpl;

  factory _LinkPreview.fromJson(Map<String, dynamic> json) =
      _$LinkPreviewImpl.fromJson;

  /// Title of the preview
  @override
  String get title;

  /// Optional description
  @override
  String? get description;

  /// Optional thumbnail entry ID
  @override
  String? get thumbnailEntryId;

  /// MIME type of the preview content
  @override
  String? get mimeType;

  /// Size of preview data in bytes
  @override
  int? get sizeBytes;

  /// Additional metadata specific to the preview type
  @override
  Map<String, dynamic> get custom;

  /// Create a copy of LinkPreview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkPreviewImplCopyWith<_$LinkPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkPreviewTask _$LinkPreviewTaskFromJson(Map<String, dynamic> json) {
  return _LinkPreviewTask.fromJson(json);
}

/// @nodoc
mixin _$LinkPreviewTask {
  /// ID of the entry to generate preview for
  String get entryId => throw _privateConstructorUsedError;

  /// Optional target size for generated thumbnails
  int get thumbnailSize => throw _privateConstructorUsedError;

  /// Whether to extract content for text-based files
  bool get extractContent => throw _privateConstructorUsedError;

  /// Maximum length for extracted content preview
  int get maxContentLength => throw _privateConstructorUsedError;

  /// Serializes this LinkPreviewTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LinkPreviewTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkPreviewTaskCopyWith<LinkPreviewTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkPreviewTaskCopyWith<$Res> {
  factory $LinkPreviewTaskCopyWith(
    LinkPreviewTask value,
    $Res Function(LinkPreviewTask) then,
  ) = _$LinkPreviewTaskCopyWithImpl<$Res, LinkPreviewTask>;
  @useResult
  $Res call({
    String entryId,
    int thumbnailSize,
    bool extractContent,
    int maxContentLength,
  });
}

/// @nodoc
class _$LinkPreviewTaskCopyWithImpl<$Res, $Val extends LinkPreviewTask>
    implements $LinkPreviewTaskCopyWith<$Res> {
  _$LinkPreviewTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LinkPreviewTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? thumbnailSize = null,
    Object? extractContent = null,
    Object? maxContentLength = null,
  }) {
    return _then(
      _value.copyWith(
            entryId: null == entryId
                ? _value.entryId
                : entryId // ignore: cast_nullable_to_non_nullable
                      as String,
            thumbnailSize: null == thumbnailSize
                ? _value.thumbnailSize
                : thumbnailSize // ignore: cast_nullable_to_non_nullable
                      as int,
            extractContent: null == extractContent
                ? _value.extractContent
                : extractContent // ignore: cast_nullable_to_non_nullable
                      as bool,
            maxContentLength: null == maxContentLength
                ? _value.maxContentLength
                : maxContentLength // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LinkPreviewTaskImplCopyWith<$Res>
    implements $LinkPreviewTaskCopyWith<$Res> {
  factory _$$LinkPreviewTaskImplCopyWith(
    _$LinkPreviewTaskImpl value,
    $Res Function(_$LinkPreviewTaskImpl) then,
  ) = __$$LinkPreviewTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String entryId,
    int thumbnailSize,
    bool extractContent,
    int maxContentLength,
  });
}

/// @nodoc
class __$$LinkPreviewTaskImplCopyWithImpl<$Res>
    extends _$LinkPreviewTaskCopyWithImpl<$Res, _$LinkPreviewTaskImpl>
    implements _$$LinkPreviewTaskImplCopyWith<$Res> {
  __$$LinkPreviewTaskImplCopyWithImpl(
    _$LinkPreviewTaskImpl _value,
    $Res Function(_$LinkPreviewTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LinkPreviewTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? thumbnailSize = null,
    Object? extractContent = null,
    Object? maxContentLength = null,
  }) {
    return _then(
      _$LinkPreviewTaskImpl(
        entryId: null == entryId
            ? _value.entryId
            : entryId // ignore: cast_nullable_to_non_nullable
                  as String,
        thumbnailSize: null == thumbnailSize
            ? _value.thumbnailSize
            : thumbnailSize // ignore: cast_nullable_to_non_nullable
                  as int,
        extractContent: null == extractContent
            ? _value.extractContent
            : extractContent // ignore: cast_nullable_to_non_nullable
                  as bool,
        maxContentLength: null == maxContentLength
            ? _value.maxContentLength
            : maxContentLength // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkPreviewTaskImpl implements _LinkPreviewTask {
  const _$LinkPreviewTaskImpl({
    required this.entryId,
    this.thumbnailSize = 256,
    this.extractContent = false,
    this.maxContentLength = 500,
  });

  factory _$LinkPreviewTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkPreviewTaskImplFromJson(json);

  /// ID of the entry to generate preview for
  @override
  final String entryId;

  /// Optional target size for generated thumbnails
  @override
  @JsonKey()
  final int thumbnailSize;

  /// Whether to extract content for text-based files
  @override
  @JsonKey()
  final bool extractContent;

  /// Maximum length for extracted content preview
  @override
  @JsonKey()
  final int maxContentLength;

  @override
  String toString() {
    return 'LinkPreviewTask(entryId: $entryId, thumbnailSize: $thumbnailSize, extractContent: $extractContent, maxContentLength: $maxContentLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkPreviewTaskImpl &&
            (identical(other.entryId, entryId) || other.entryId == entryId) &&
            (identical(other.thumbnailSize, thumbnailSize) ||
                other.thumbnailSize == thumbnailSize) &&
            (identical(other.extractContent, extractContent) ||
                other.extractContent == extractContent) &&
            (identical(other.maxContentLength, maxContentLength) ||
                other.maxContentLength == maxContentLength));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    entryId,
    thumbnailSize,
    extractContent,
    maxContentLength,
  );

  /// Create a copy of LinkPreviewTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkPreviewTaskImplCopyWith<_$LinkPreviewTaskImpl> get copyWith =>
      __$$LinkPreviewTaskImplCopyWithImpl<_$LinkPreviewTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkPreviewTaskImplToJson(this);
  }
}

abstract class _LinkPreviewTask implements LinkPreviewTask {
  const factory _LinkPreviewTask({
    required final String entryId,
    final int thumbnailSize,
    final bool extractContent,
    final int maxContentLength,
  }) = _$LinkPreviewTaskImpl;

  factory _LinkPreviewTask.fromJson(Map<String, dynamic> json) =
      _$LinkPreviewTaskImpl.fromJson;

  /// ID of the entry to generate preview for
  @override
  String get entryId;

  /// Optional target size for generated thumbnails
  @override
  int get thumbnailSize;

  /// Whether to extract content for text-based files
  @override
  bool get extractContent;

  /// Maximum length for extracted content preview
  @override
  int get maxContentLength;

  /// Create a copy of LinkPreviewTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkPreviewTaskImplCopyWith<_$LinkPreviewTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkPreviewResult _$LinkPreviewResultFromJson(Map<String, dynamic> json) {
  return _LinkPreviewResult.fromJson(json);
}

/// @nodoc
mixin _$LinkPreviewResult {
  /// The generated preview metadata
  LinkPreview get preview => throw _privateConstructorUsedError;

  /// ID of the original entry
  String get entryId => throw _privateConstructorUsedError;

  /// Whether preview was successfully generated
  bool get success => throw _privateConstructorUsedError;

  /// Error message if generation failed
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this LinkPreviewResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LinkPreviewResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkPreviewResultCopyWith<LinkPreviewResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkPreviewResultCopyWith<$Res> {
  factory $LinkPreviewResultCopyWith(
    LinkPreviewResult value,
    $Res Function(LinkPreviewResult) then,
  ) = _$LinkPreviewResultCopyWithImpl<$Res, LinkPreviewResult>;
  @useResult
  $Res call({LinkPreview preview, String entryId, bool success, String? error});

  $LinkPreviewCopyWith<$Res> get preview;
}

/// @nodoc
class _$LinkPreviewResultCopyWithImpl<$Res, $Val extends LinkPreviewResult>
    implements $LinkPreviewResultCopyWith<$Res> {
  _$LinkPreviewResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LinkPreviewResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preview = null,
    Object? entryId = null,
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            preview: null == preview
                ? _value.preview
                : preview // ignore: cast_nullable_to_non_nullable
                      as LinkPreview,
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
          )
          as $Val,
    );
  }

  /// Create a copy of LinkPreviewResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinkPreviewCopyWith<$Res> get preview {
    return $LinkPreviewCopyWith<$Res>(_value.preview, (value) {
      return _then(_value.copyWith(preview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LinkPreviewResultImplCopyWith<$Res>
    implements $LinkPreviewResultCopyWith<$Res> {
  factory _$$LinkPreviewResultImplCopyWith(
    _$LinkPreviewResultImpl value,
    $Res Function(_$LinkPreviewResultImpl) then,
  ) = __$$LinkPreviewResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LinkPreview preview, String entryId, bool success, String? error});

  @override
  $LinkPreviewCopyWith<$Res> get preview;
}

/// @nodoc
class __$$LinkPreviewResultImplCopyWithImpl<$Res>
    extends _$LinkPreviewResultCopyWithImpl<$Res, _$LinkPreviewResultImpl>
    implements _$$LinkPreviewResultImplCopyWith<$Res> {
  __$$LinkPreviewResultImplCopyWithImpl(
    _$LinkPreviewResultImpl _value,
    $Res Function(_$LinkPreviewResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LinkPreviewResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preview = null,
    Object? entryId = null,
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(
      _$LinkPreviewResultImpl(
        preview: null == preview
            ? _value.preview
            : preview // ignore: cast_nullable_to_non_nullable
                  as LinkPreview,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkPreviewResultImpl implements _LinkPreviewResult {
  const _$LinkPreviewResultImpl({
    required this.preview,
    required this.entryId,
    required this.success,
    this.error,
  });

  factory _$LinkPreviewResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkPreviewResultImplFromJson(json);

  /// The generated preview metadata
  @override
  final LinkPreview preview;

  /// ID of the original entry
  @override
  final String entryId;

  /// Whether preview was successfully generated
  @override
  final bool success;

  /// Error message if generation failed
  @override
  final String? error;

  @override
  String toString() {
    return 'LinkPreviewResult(preview: $preview, entryId: $entryId, success: $success, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkPreviewResultImpl &&
            (identical(other.preview, preview) || other.preview == preview) &&
            (identical(other.entryId, entryId) || other.entryId == entryId) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, preview, entryId, success, error);

  /// Create a copy of LinkPreviewResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkPreviewResultImplCopyWith<_$LinkPreviewResultImpl> get copyWith =>
      __$$LinkPreviewResultImplCopyWithImpl<_$LinkPreviewResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkPreviewResultImplToJson(this);
  }
}

abstract class _LinkPreviewResult implements LinkPreviewResult {
  const factory _LinkPreviewResult({
    required final LinkPreview preview,
    required final String entryId,
    required final bool success,
    final String? error,
  }) = _$LinkPreviewResultImpl;

  factory _LinkPreviewResult.fromJson(Map<String, dynamic> json) =
      _$LinkPreviewResultImpl.fromJson;

  /// The generated preview metadata
  @override
  LinkPreview get preview;

  /// ID of the original entry
  @override
  String get entryId;

  /// Whether preview was successfully generated
  @override
  bool get success;

  /// Error message if generation failed
  @override
  String? get error;

  /// Create a copy of LinkPreviewResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkPreviewResultImplCopyWith<_$LinkPreviewResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
