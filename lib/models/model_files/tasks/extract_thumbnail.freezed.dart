// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extract_thumbnail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ExtractThumbnailTask _$ExtractThumbnailTaskFromJson(Map<String, dynamic> json) {
  return _ExtractThumbnailTask.fromJson(json);
}

/// @nodoc
mixin _$ExtractThumbnailTask {
  /// ID of the source entry (image or video) to extract thumbnail from
  String get sourceEntryId => throw _privateConstructorUsedError;

  /// Maximum width of the thumbnail (maintains aspect ratio)
  int get maxWidth => throw _privateConstructorUsedError;

  /// Maximum height of the thumbnail (maintains aspect ratio)
  int get maxHeight => throw _privateConstructorUsedError;

  /// Quality setting for the thumbnail (0.0 to 1.0)
  double get quality => throw _privateConstructorUsedError;

  /// Optional custom name for the thumbnail file
  String? get thumbnailName => throw _privateConstructorUsedError;

  /// Optional target folder ID for the thumbnail (defaults to source folder)
  String? get targetFolderId => throw _privateConstructorUsedError;

  /// Serializes this ExtractThumbnailTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtractThumbnailTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtractThumbnailTaskCopyWith<ExtractThumbnailTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtractThumbnailTaskCopyWith<$Res> {
  factory $ExtractThumbnailTaskCopyWith(
    ExtractThumbnailTask value,
    $Res Function(ExtractThumbnailTask) then,
  ) = _$ExtractThumbnailTaskCopyWithImpl<$Res, ExtractThumbnailTask>;
  @useResult
  $Res call({
    String sourceEntryId,
    int maxWidth,
    int maxHeight,
    double quality,
    String? thumbnailName,
    String? targetFolderId,
  });
}

/// @nodoc
class _$ExtractThumbnailTaskCopyWithImpl<
  $Res,
  $Val extends ExtractThumbnailTask
>
    implements $ExtractThumbnailTaskCopyWith<$Res> {
  _$ExtractThumbnailTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtractThumbnailTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceEntryId = null,
    Object? maxWidth = null,
    Object? maxHeight = null,
    Object? quality = null,
    Object? thumbnailName = freezed,
    Object? targetFolderId = freezed,
  }) {
    return _then(
      _value.copyWith(
            sourceEntryId: null == sourceEntryId
                ? _value.sourceEntryId
                : sourceEntryId // ignore: cast_nullable_to_non_nullable
                      as String,
            maxWidth: null == maxWidth
                ? _value.maxWidth
                : maxWidth // ignore: cast_nullable_to_non_nullable
                      as int,
            maxHeight: null == maxHeight
                ? _value.maxHeight
                : maxHeight // ignore: cast_nullable_to_non_nullable
                      as int,
            quality: null == quality
                ? _value.quality
                : quality // ignore: cast_nullable_to_non_nullable
                      as double,
            thumbnailName: freezed == thumbnailName
                ? _value.thumbnailName
                : thumbnailName // ignore: cast_nullable_to_non_nullable
                      as String?,
            targetFolderId: freezed == targetFolderId
                ? _value.targetFolderId
                : targetFolderId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExtractThumbnailTaskImplCopyWith<$Res>
    implements $ExtractThumbnailTaskCopyWith<$Res> {
  factory _$$ExtractThumbnailTaskImplCopyWith(
    _$ExtractThumbnailTaskImpl value,
    $Res Function(_$ExtractThumbnailTaskImpl) then,
  ) = __$$ExtractThumbnailTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sourceEntryId,
    int maxWidth,
    int maxHeight,
    double quality,
    String? thumbnailName,
    String? targetFolderId,
  });
}

/// @nodoc
class __$$ExtractThumbnailTaskImplCopyWithImpl<$Res>
    extends _$ExtractThumbnailTaskCopyWithImpl<$Res, _$ExtractThumbnailTaskImpl>
    implements _$$ExtractThumbnailTaskImplCopyWith<$Res> {
  __$$ExtractThumbnailTaskImplCopyWithImpl(
    _$ExtractThumbnailTaskImpl _value,
    $Res Function(_$ExtractThumbnailTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExtractThumbnailTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceEntryId = null,
    Object? maxWidth = null,
    Object? maxHeight = null,
    Object? quality = null,
    Object? thumbnailName = freezed,
    Object? targetFolderId = freezed,
  }) {
    return _then(
      _$ExtractThumbnailTaskImpl(
        sourceEntryId: null == sourceEntryId
            ? _value.sourceEntryId
            : sourceEntryId // ignore: cast_nullable_to_non_nullable
                  as String,
        maxWidth: null == maxWidth
            ? _value.maxWidth
            : maxWidth // ignore: cast_nullable_to_non_nullable
                  as int,
        maxHeight: null == maxHeight
            ? _value.maxHeight
            : maxHeight // ignore: cast_nullable_to_non_nullable
                  as int,
        quality: null == quality
            ? _value.quality
            : quality // ignore: cast_nullable_to_non_nullable
                  as double,
        thumbnailName: freezed == thumbnailName
            ? _value.thumbnailName
            : thumbnailName // ignore: cast_nullable_to_non_nullable
                  as String?,
        targetFolderId: freezed == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtractThumbnailTaskImpl extends _ExtractThumbnailTask {
  const _$ExtractThumbnailTaskImpl({
    required this.sourceEntryId,
    required this.maxWidth,
    required this.maxHeight,
    this.quality = 0.8,
    this.thumbnailName,
    this.targetFolderId,
  }) : super._();

  factory _$ExtractThumbnailTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtractThumbnailTaskImplFromJson(json);

  /// ID of the source entry (image or video) to extract thumbnail from
  @override
  final String sourceEntryId;

  /// Maximum width of the thumbnail (maintains aspect ratio)
  @override
  final int maxWidth;

  /// Maximum height of the thumbnail (maintains aspect ratio)
  @override
  final int maxHeight;

  /// Quality setting for the thumbnail (0.0 to 1.0)
  @override
  @JsonKey()
  final double quality;

  /// Optional custom name for the thumbnail file
  @override
  final String? thumbnailName;

  /// Optional target folder ID for the thumbnail (defaults to source folder)
  @override
  final String? targetFolderId;

  @override
  String toString() {
    return 'ExtractThumbnailTask(sourceEntryId: $sourceEntryId, maxWidth: $maxWidth, maxHeight: $maxHeight, quality: $quality, thumbnailName: $thumbnailName, targetFolderId: $targetFolderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtractThumbnailTaskImpl &&
            (identical(other.sourceEntryId, sourceEntryId) ||
                other.sourceEntryId == sourceEntryId) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth) &&
            (identical(other.maxHeight, maxHeight) ||
                other.maxHeight == maxHeight) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.thumbnailName, thumbnailName) ||
                other.thumbnailName == thumbnailName) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sourceEntryId,
    maxWidth,
    maxHeight,
    quality,
    thumbnailName,
    targetFolderId,
  );

  /// Create a copy of ExtractThumbnailTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtractThumbnailTaskImplCopyWith<_$ExtractThumbnailTaskImpl>
  get copyWith =>
      __$$ExtractThumbnailTaskImplCopyWithImpl<_$ExtractThumbnailTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtractThumbnailTaskImplToJson(this);
  }
}

abstract class _ExtractThumbnailTask extends ExtractThumbnailTask {
  const factory _ExtractThumbnailTask({
    required final String sourceEntryId,
    required final int maxWidth,
    required final int maxHeight,
    final double quality,
    final String? thumbnailName,
    final String? targetFolderId,
  }) = _$ExtractThumbnailTaskImpl;
  const _ExtractThumbnailTask._() : super._();

  factory _ExtractThumbnailTask.fromJson(Map<String, dynamic> json) =
      _$ExtractThumbnailTaskImpl.fromJson;

  /// ID of the source entry (image or video) to extract thumbnail from
  @override
  String get sourceEntryId;

  /// Maximum width of the thumbnail (maintains aspect ratio)
  @override
  int get maxWidth;

  /// Maximum height of the thumbnail (maintains aspect ratio)
  @override
  int get maxHeight;

  /// Quality setting for the thumbnail (0.0 to 1.0)
  @override
  double get quality;

  /// Optional custom name for the thumbnail file
  @override
  String? get thumbnailName;

  /// Optional target folder ID for the thumbnail (defaults to source folder)
  @override
  String? get targetFolderId;

  /// Create a copy of ExtractThumbnailTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtractThumbnailTaskImplCopyWith<_$ExtractThumbnailTaskImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ExtractThumbnailResult _$ExtractThumbnailResultFromJson(
  Map<String, dynamic> json,
) {
  return _ExtractThumbnailResult.fromJson(json);
}

/// @nodoc
mixin _$ExtractThumbnailResult {
  /// ID of the generated thumbnail file
  String get thumbnailId => throw _privateConstructorUsedError;

  /// Path where the thumbnail was saved
  String get thumbnailPath => throw _privateConstructorUsedError;

  /// Actual dimensions of the generated thumbnail
  ThumbnailDimensions get dimensions => throw _privateConstructorUsedError;

  /// Source entry ID that was used to generate this thumbnail
  String get sourceEntryId => throw _privateConstructorUsedError;

  /// Serializes this ExtractThumbnailResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtractThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtractThumbnailResultCopyWith<ExtractThumbnailResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtractThumbnailResultCopyWith<$Res> {
  factory $ExtractThumbnailResultCopyWith(
    ExtractThumbnailResult value,
    $Res Function(ExtractThumbnailResult) then,
  ) = _$ExtractThumbnailResultCopyWithImpl<$Res, ExtractThumbnailResult>;
  @useResult
  $Res call({
    String thumbnailId,
    String thumbnailPath,
    ThumbnailDimensions dimensions,
    String sourceEntryId,
  });

  $ThumbnailDimensionsCopyWith<$Res> get dimensions;
}

/// @nodoc
class _$ExtractThumbnailResultCopyWithImpl<
  $Res,
  $Val extends ExtractThumbnailResult
>
    implements $ExtractThumbnailResultCopyWith<$Res> {
  _$ExtractThumbnailResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtractThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnailId = null,
    Object? thumbnailPath = null,
    Object? dimensions = null,
    Object? sourceEntryId = null,
  }) {
    return _then(
      _value.copyWith(
            thumbnailId: null == thumbnailId
                ? _value.thumbnailId
                : thumbnailId // ignore: cast_nullable_to_non_nullable
                      as String,
            thumbnailPath: null == thumbnailPath
                ? _value.thumbnailPath
                : thumbnailPath // ignore: cast_nullable_to_non_nullable
                      as String,
            dimensions: null == dimensions
                ? _value.dimensions
                : dimensions // ignore: cast_nullable_to_non_nullable
                      as ThumbnailDimensions,
            sourceEntryId: null == sourceEntryId
                ? _value.sourceEntryId
                : sourceEntryId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of ExtractThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThumbnailDimensionsCopyWith<$Res> get dimensions {
    return $ThumbnailDimensionsCopyWith<$Res>(_value.dimensions, (value) {
      return _then(_value.copyWith(dimensions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExtractThumbnailResultImplCopyWith<$Res>
    implements $ExtractThumbnailResultCopyWith<$Res> {
  factory _$$ExtractThumbnailResultImplCopyWith(
    _$ExtractThumbnailResultImpl value,
    $Res Function(_$ExtractThumbnailResultImpl) then,
  ) = __$$ExtractThumbnailResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String thumbnailId,
    String thumbnailPath,
    ThumbnailDimensions dimensions,
    String sourceEntryId,
  });

  @override
  $ThumbnailDimensionsCopyWith<$Res> get dimensions;
}

/// @nodoc
class __$$ExtractThumbnailResultImplCopyWithImpl<$Res>
    extends
        _$ExtractThumbnailResultCopyWithImpl<$Res, _$ExtractThumbnailResultImpl>
    implements _$$ExtractThumbnailResultImplCopyWith<$Res> {
  __$$ExtractThumbnailResultImplCopyWithImpl(
    _$ExtractThumbnailResultImpl _value,
    $Res Function(_$ExtractThumbnailResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExtractThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnailId = null,
    Object? thumbnailPath = null,
    Object? dimensions = null,
    Object? sourceEntryId = null,
  }) {
    return _then(
      _$ExtractThumbnailResultImpl(
        thumbnailId: null == thumbnailId
            ? _value.thumbnailId
            : thumbnailId // ignore: cast_nullable_to_non_nullable
                  as String,
        thumbnailPath: null == thumbnailPath
            ? _value.thumbnailPath
            : thumbnailPath // ignore: cast_nullable_to_non_nullable
                  as String,
        dimensions: null == dimensions
            ? _value.dimensions
            : dimensions // ignore: cast_nullable_to_non_nullable
                  as ThumbnailDimensions,
        sourceEntryId: null == sourceEntryId
            ? _value.sourceEntryId
            : sourceEntryId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtractThumbnailResultImpl implements _ExtractThumbnailResult {
  const _$ExtractThumbnailResultImpl({
    required this.thumbnailId,
    required this.thumbnailPath,
    required this.dimensions,
    required this.sourceEntryId,
  });

  factory _$ExtractThumbnailResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtractThumbnailResultImplFromJson(json);

  /// ID of the generated thumbnail file
  @override
  final String thumbnailId;

  /// Path where the thumbnail was saved
  @override
  final String thumbnailPath;

  /// Actual dimensions of the generated thumbnail
  @override
  final ThumbnailDimensions dimensions;

  /// Source entry ID that was used to generate this thumbnail
  @override
  final String sourceEntryId;

  @override
  String toString() {
    return 'ExtractThumbnailResult(thumbnailId: $thumbnailId, thumbnailPath: $thumbnailPath, dimensions: $dimensions, sourceEntryId: $sourceEntryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtractThumbnailResultImpl &&
            (identical(other.thumbnailId, thumbnailId) ||
                other.thumbnailId == thumbnailId) &&
            (identical(other.thumbnailPath, thumbnailPath) ||
                other.thumbnailPath == thumbnailPath) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.sourceEntryId, sourceEntryId) ||
                other.sourceEntryId == sourceEntryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    thumbnailId,
    thumbnailPath,
    dimensions,
    sourceEntryId,
  );

  /// Create a copy of ExtractThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtractThumbnailResultImplCopyWith<_$ExtractThumbnailResultImpl>
  get copyWith =>
      __$$ExtractThumbnailResultImplCopyWithImpl<_$ExtractThumbnailResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtractThumbnailResultImplToJson(this);
  }
}

abstract class _ExtractThumbnailResult implements ExtractThumbnailResult {
  const factory _ExtractThumbnailResult({
    required final String thumbnailId,
    required final String thumbnailPath,
    required final ThumbnailDimensions dimensions,
    required final String sourceEntryId,
  }) = _$ExtractThumbnailResultImpl;

  factory _ExtractThumbnailResult.fromJson(Map<String, dynamic> json) =
      _$ExtractThumbnailResultImpl.fromJson;

  /// ID of the generated thumbnail file
  @override
  String get thumbnailId;

  /// Path where the thumbnail was saved
  @override
  String get thumbnailPath;

  /// Actual dimensions of the generated thumbnail
  @override
  ThumbnailDimensions get dimensions;

  /// Source entry ID that was used to generate this thumbnail
  @override
  String get sourceEntryId;

  /// Create a copy of ExtractThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtractThumbnailResultImplCopyWith<_$ExtractThumbnailResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ThumbnailDimensions _$ThumbnailDimensionsFromJson(Map<String, dynamic> json) {
  return _ThumbnailDimensions.fromJson(json);
}

/// @nodoc
mixin _$ThumbnailDimensions {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  /// Serializes this ThumbnailDimensions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThumbnailDimensions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThumbnailDimensionsCopyWith<ThumbnailDimensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailDimensionsCopyWith<$Res> {
  factory $ThumbnailDimensionsCopyWith(
    ThumbnailDimensions value,
    $Res Function(ThumbnailDimensions) then,
  ) = _$ThumbnailDimensionsCopyWithImpl<$Res, ThumbnailDimensions>;
  @useResult
  $Res call({int width, int height});
}

/// @nodoc
class _$ThumbnailDimensionsCopyWithImpl<$Res, $Val extends ThumbnailDimensions>
    implements $ThumbnailDimensionsCopyWith<$Res> {
  _$ThumbnailDimensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThumbnailDimensions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? width = null, Object? height = null}) {
    return _then(
      _value.copyWith(
            width: null == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                      as int,
            height: null == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ThumbnailDimensionsImplCopyWith<$Res>
    implements $ThumbnailDimensionsCopyWith<$Res> {
  factory _$$ThumbnailDimensionsImplCopyWith(
    _$ThumbnailDimensionsImpl value,
    $Res Function(_$ThumbnailDimensionsImpl) then,
  ) = __$$ThumbnailDimensionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int width, int height});
}

/// @nodoc
class __$$ThumbnailDimensionsImplCopyWithImpl<$Res>
    extends _$ThumbnailDimensionsCopyWithImpl<$Res, _$ThumbnailDimensionsImpl>
    implements _$$ThumbnailDimensionsImplCopyWith<$Res> {
  __$$ThumbnailDimensionsImplCopyWithImpl(
    _$ThumbnailDimensionsImpl _value,
    $Res Function(_$ThumbnailDimensionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ThumbnailDimensions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? width = null, Object? height = null}) {
    return _then(
      _$ThumbnailDimensionsImpl(
        width: null == width
            ? _value.width
            : width // ignore: cast_nullable_to_non_nullable
                  as int,
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ThumbnailDimensionsImpl implements _ThumbnailDimensions {
  const _$ThumbnailDimensionsImpl({required this.width, required this.height});

  factory _$ThumbnailDimensionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThumbnailDimensionsImplFromJson(json);

  @override
  final int width;
  @override
  final int height;

  @override
  String toString() {
    return 'ThumbnailDimensions(width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThumbnailDimensionsImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  /// Create a copy of ThumbnailDimensions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThumbnailDimensionsImplCopyWith<_$ThumbnailDimensionsImpl> get copyWith =>
      __$$ThumbnailDimensionsImplCopyWithImpl<_$ThumbnailDimensionsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ThumbnailDimensionsImplToJson(this);
  }
}

abstract class _ThumbnailDimensions implements ThumbnailDimensions {
  const factory _ThumbnailDimensions({
    required final int width,
    required final int height,
  }) = _$ThumbnailDimensionsImpl;

  factory _ThumbnailDimensions.fromJson(Map<String, dynamic> json) =
      _$ThumbnailDimensionsImpl.fromJson;

  @override
  int get width;
  @override
  int get height;

  /// Create a copy of ThumbnailDimensions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThumbnailDimensionsImplCopyWith<_$ThumbnailDimensionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
