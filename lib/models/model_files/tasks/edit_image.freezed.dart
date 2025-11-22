// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ImageTransformation _$ImageTransformationFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'resize':
      return ImageTransformationResize.fromJson(json);
    case 'crop':
      return ImageTransformationCrop.fromJson(json);
    case 'rotate':
      return ImageTransformationRotate.fromJson(json);
    case 'flip':
      return ImageTransformationFlip.fromJson(json);
    case 'adjust':
      return ImageTransformationAdjust.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'ImageTransformation',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$ImageTransformation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int width, int height, bool maintainAspectRatio)
    resize,
    required TResult Function(double x, double y, double width, double height)
    crop,
    required TResult Function(double degrees) rotate,
    required TResult Function(bool horizontal, bool vertical) flip,
    required TResult Function(
      double? brightness,
      double? contrast,
      double? saturation,
    )
    adjust,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int width, int height, bool maintainAspectRatio)? resize,
    TResult? Function(double x, double y, double width, double height)? crop,
    TResult? Function(double degrees)? rotate,
    TResult? Function(bool horizontal, bool vertical)? flip,
    TResult? Function(double? brightness, double? contrast, double? saturation)?
    adjust,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int width, int height, bool maintainAspectRatio)? resize,
    TResult Function(double x, double y, double width, double height)? crop,
    TResult Function(double degrees)? rotate,
    TResult Function(bool horizontal, bool vertical)? flip,
    TResult Function(double? brightness, double? contrast, double? saturation)?
    adjust,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageTransformationResize value) resize,
    required TResult Function(ImageTransformationCrop value) crop,
    required TResult Function(ImageTransformationRotate value) rotate,
    required TResult Function(ImageTransformationFlip value) flip,
    required TResult Function(ImageTransformationAdjust value) adjust,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageTransformationResize value)? resize,
    TResult? Function(ImageTransformationCrop value)? crop,
    TResult? Function(ImageTransformationRotate value)? rotate,
    TResult? Function(ImageTransformationFlip value)? flip,
    TResult? Function(ImageTransformationAdjust value)? adjust,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageTransformationResize value)? resize,
    TResult Function(ImageTransformationCrop value)? crop,
    TResult Function(ImageTransformationRotate value)? rotate,
    TResult Function(ImageTransformationFlip value)? flip,
    TResult Function(ImageTransformationAdjust value)? adjust,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this ImageTransformation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageTransformationCopyWith<$Res> {
  factory $ImageTransformationCopyWith(
    ImageTransformation value,
    $Res Function(ImageTransformation) then,
  ) = _$ImageTransformationCopyWithImpl<$Res, ImageTransformation>;
}

/// @nodoc
class _$ImageTransformationCopyWithImpl<$Res, $Val extends ImageTransformation>
    implements $ImageTransformationCopyWith<$Res> {
  _$ImageTransformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ImageTransformationResizeImplCopyWith<$Res> {
  factory _$$ImageTransformationResizeImplCopyWith(
    _$ImageTransformationResizeImpl value,
    $Res Function(_$ImageTransformationResizeImpl) then,
  ) = __$$ImageTransformationResizeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int width, int height, bool maintainAspectRatio});
}

/// @nodoc
class __$$ImageTransformationResizeImplCopyWithImpl<$Res>
    extends
        _$ImageTransformationCopyWithImpl<$Res, _$ImageTransformationResizeImpl>
    implements _$$ImageTransformationResizeImplCopyWith<$Res> {
  __$$ImageTransformationResizeImplCopyWithImpl(
    _$ImageTransformationResizeImpl _value,
    $Res Function(_$ImageTransformationResizeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? maintainAspectRatio = null,
  }) {
    return _then(
      _$ImageTransformationResizeImpl(
        width: null == width
            ? _value.width
            : width // ignore: cast_nullable_to_non_nullable
                  as int,
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int,
        maintainAspectRatio: null == maintainAspectRatio
            ? _value.maintainAspectRatio
            : maintainAspectRatio // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageTransformationResizeImpl
    with DiagnosticableTreeMixin
    implements ImageTransformationResize {
  const _$ImageTransformationResizeImpl({
    required this.width,
    required this.height,
    this.maintainAspectRatio = true,
    final String? $type,
  }) : $type = $type ?? 'resize';

  factory _$ImageTransformationResizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageTransformationResizeImplFromJson(json);

  @override
  final int width;
  @override
  final int height;
  @override
  @JsonKey()
  final bool maintainAspectRatio;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageTransformation.resize(width: $width, height: $height, maintainAspectRatio: $maintainAspectRatio)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageTransformation.resize'))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('maintainAspectRatio', maintainAspectRatio));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageTransformationResizeImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.maintainAspectRatio, maintainAspectRatio) ||
                other.maintainAspectRatio == maintainAspectRatio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, width, height, maintainAspectRatio);

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageTransformationResizeImplCopyWith<_$ImageTransformationResizeImpl>
  get copyWith =>
      __$$ImageTransformationResizeImplCopyWithImpl<
        _$ImageTransformationResizeImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int width, int height, bool maintainAspectRatio)
    resize,
    required TResult Function(double x, double y, double width, double height)
    crop,
    required TResult Function(double degrees) rotate,
    required TResult Function(bool horizontal, bool vertical) flip,
    required TResult Function(
      double? brightness,
      double? contrast,
      double? saturation,
    )
    adjust,
  }) {
    return resize(width, height, maintainAspectRatio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int width, int height, bool maintainAspectRatio)? resize,
    TResult? Function(double x, double y, double width, double height)? crop,
    TResult? Function(double degrees)? rotate,
    TResult? Function(bool horizontal, bool vertical)? flip,
    TResult? Function(double? brightness, double? contrast, double? saturation)?
    adjust,
  }) {
    return resize?.call(width, height, maintainAspectRatio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int width, int height, bool maintainAspectRatio)? resize,
    TResult Function(double x, double y, double width, double height)? crop,
    TResult Function(double degrees)? rotate,
    TResult Function(bool horizontal, bool vertical)? flip,
    TResult Function(double? brightness, double? contrast, double? saturation)?
    adjust,
    required TResult orElse(),
  }) {
    if (resize != null) {
      return resize(width, height, maintainAspectRatio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageTransformationResize value) resize,
    required TResult Function(ImageTransformationCrop value) crop,
    required TResult Function(ImageTransformationRotate value) rotate,
    required TResult Function(ImageTransformationFlip value) flip,
    required TResult Function(ImageTransformationAdjust value) adjust,
  }) {
    return resize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageTransformationResize value)? resize,
    TResult? Function(ImageTransformationCrop value)? crop,
    TResult? Function(ImageTransformationRotate value)? rotate,
    TResult? Function(ImageTransformationFlip value)? flip,
    TResult? Function(ImageTransformationAdjust value)? adjust,
  }) {
    return resize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageTransformationResize value)? resize,
    TResult Function(ImageTransformationCrop value)? crop,
    TResult Function(ImageTransformationRotate value)? rotate,
    TResult Function(ImageTransformationFlip value)? flip,
    TResult Function(ImageTransformationAdjust value)? adjust,
    required TResult orElse(),
  }) {
    if (resize != null) {
      return resize(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageTransformationResizeImplToJson(this);
  }
}

abstract class ImageTransformationResize implements ImageTransformation {
  const factory ImageTransformationResize({
    required final int width,
    required final int height,
    final bool maintainAspectRatio,
  }) = _$ImageTransformationResizeImpl;

  factory ImageTransformationResize.fromJson(Map<String, dynamic> json) =
      _$ImageTransformationResizeImpl.fromJson;

  int get width;
  int get height;
  bool get maintainAspectRatio;

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageTransformationResizeImplCopyWith<_$ImageTransformationResizeImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageTransformationCropImplCopyWith<$Res> {
  factory _$$ImageTransformationCropImplCopyWith(
    _$ImageTransformationCropImpl value,
    $Res Function(_$ImageTransformationCropImpl) then,
  ) = __$$ImageTransformationCropImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double x, double y, double width, double height});
}

/// @nodoc
class __$$ImageTransformationCropImplCopyWithImpl<$Res>
    extends
        _$ImageTransformationCopyWithImpl<$Res, _$ImageTransformationCropImpl>
    implements _$$ImageTransformationCropImplCopyWith<$Res> {
  __$$ImageTransformationCropImplCopyWithImpl(
    _$ImageTransformationCropImpl _value,
    $Res Function(_$ImageTransformationCropImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(
      _$ImageTransformationCropImpl(
        x: null == x
            ? _value.x
            : x // ignore: cast_nullable_to_non_nullable
                  as double,
        y: null == y
            ? _value.y
            : y // ignore: cast_nullable_to_non_nullable
                  as double,
        width: null == width
            ? _value.width
            : width // ignore: cast_nullable_to_non_nullable
                  as double,
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageTransformationCropImpl
    with DiagnosticableTreeMixin
    implements ImageTransformationCrop {
  const _$ImageTransformationCropImpl({
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    final String? $type,
  }) : $type = $type ?? 'crop';

  factory _$ImageTransformationCropImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageTransformationCropImplFromJson(json);

  @override
  final double x;
  @override
  final double y;
  @override
  final double width;
  @override
  final double height;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageTransformation.crop(x: $x, y: $y, width: $width, height: $height)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageTransformation.crop'))
      ..add(DiagnosticsProperty('x', x))
      ..add(DiagnosticsProperty('y', y))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageTransformationCropImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, width, height);

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageTransformationCropImplCopyWith<_$ImageTransformationCropImpl>
  get copyWith =>
      __$$ImageTransformationCropImplCopyWithImpl<
        _$ImageTransformationCropImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int width, int height, bool maintainAspectRatio)
    resize,
    required TResult Function(double x, double y, double width, double height)
    crop,
    required TResult Function(double degrees) rotate,
    required TResult Function(bool horizontal, bool vertical) flip,
    required TResult Function(
      double? brightness,
      double? contrast,
      double? saturation,
    )
    adjust,
  }) {
    return crop(x, y, width, height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int width, int height, bool maintainAspectRatio)? resize,
    TResult? Function(double x, double y, double width, double height)? crop,
    TResult? Function(double degrees)? rotate,
    TResult? Function(bool horizontal, bool vertical)? flip,
    TResult? Function(double? brightness, double? contrast, double? saturation)?
    adjust,
  }) {
    return crop?.call(x, y, width, height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int width, int height, bool maintainAspectRatio)? resize,
    TResult Function(double x, double y, double width, double height)? crop,
    TResult Function(double degrees)? rotate,
    TResult Function(bool horizontal, bool vertical)? flip,
    TResult Function(double? brightness, double? contrast, double? saturation)?
    adjust,
    required TResult orElse(),
  }) {
    if (crop != null) {
      return crop(x, y, width, height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageTransformationResize value) resize,
    required TResult Function(ImageTransformationCrop value) crop,
    required TResult Function(ImageTransformationRotate value) rotate,
    required TResult Function(ImageTransformationFlip value) flip,
    required TResult Function(ImageTransformationAdjust value) adjust,
  }) {
    return crop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageTransformationResize value)? resize,
    TResult? Function(ImageTransformationCrop value)? crop,
    TResult? Function(ImageTransformationRotate value)? rotate,
    TResult? Function(ImageTransformationFlip value)? flip,
    TResult? Function(ImageTransformationAdjust value)? adjust,
  }) {
    return crop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageTransformationResize value)? resize,
    TResult Function(ImageTransformationCrop value)? crop,
    TResult Function(ImageTransformationRotate value)? rotate,
    TResult Function(ImageTransformationFlip value)? flip,
    TResult Function(ImageTransformationAdjust value)? adjust,
    required TResult orElse(),
  }) {
    if (crop != null) {
      return crop(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageTransformationCropImplToJson(this);
  }
}

abstract class ImageTransformationCrop implements ImageTransformation {
  const factory ImageTransformationCrop({
    required final double x,
    required final double y,
    required final double width,
    required final double height,
  }) = _$ImageTransformationCropImpl;

  factory ImageTransformationCrop.fromJson(Map<String, dynamic> json) =
      _$ImageTransformationCropImpl.fromJson;

  double get x;
  double get y;
  double get width;
  double get height;

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageTransformationCropImplCopyWith<_$ImageTransformationCropImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageTransformationRotateImplCopyWith<$Res> {
  factory _$$ImageTransformationRotateImplCopyWith(
    _$ImageTransformationRotateImpl value,
    $Res Function(_$ImageTransformationRotateImpl) then,
  ) = __$$ImageTransformationRotateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double degrees});
}

/// @nodoc
class __$$ImageTransformationRotateImplCopyWithImpl<$Res>
    extends
        _$ImageTransformationCopyWithImpl<$Res, _$ImageTransformationRotateImpl>
    implements _$$ImageTransformationRotateImplCopyWith<$Res> {
  __$$ImageTransformationRotateImplCopyWithImpl(
    _$ImageTransformationRotateImpl _value,
    $Res Function(_$ImageTransformationRotateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? degrees = null}) {
    return _then(
      _$ImageTransformationRotateImpl(
        degrees: null == degrees
            ? _value.degrees
            : degrees // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageTransformationRotateImpl
    with DiagnosticableTreeMixin
    implements ImageTransformationRotate {
  const _$ImageTransformationRotateImpl({
    required this.degrees,
    final String? $type,
  }) : $type = $type ?? 'rotate';

  factory _$ImageTransformationRotateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageTransformationRotateImplFromJson(json);

  @override
  final double degrees;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageTransformation.rotate(degrees: $degrees)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageTransformation.rotate'))
      ..add(DiagnosticsProperty('degrees', degrees));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageTransformationRotateImpl &&
            (identical(other.degrees, degrees) || other.degrees == degrees));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, degrees);

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageTransformationRotateImplCopyWith<_$ImageTransformationRotateImpl>
  get copyWith =>
      __$$ImageTransformationRotateImplCopyWithImpl<
        _$ImageTransformationRotateImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int width, int height, bool maintainAspectRatio)
    resize,
    required TResult Function(double x, double y, double width, double height)
    crop,
    required TResult Function(double degrees) rotate,
    required TResult Function(bool horizontal, bool vertical) flip,
    required TResult Function(
      double? brightness,
      double? contrast,
      double? saturation,
    )
    adjust,
  }) {
    return rotate(degrees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int width, int height, bool maintainAspectRatio)? resize,
    TResult? Function(double x, double y, double width, double height)? crop,
    TResult? Function(double degrees)? rotate,
    TResult? Function(bool horizontal, bool vertical)? flip,
    TResult? Function(double? brightness, double? contrast, double? saturation)?
    adjust,
  }) {
    return rotate?.call(degrees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int width, int height, bool maintainAspectRatio)? resize,
    TResult Function(double x, double y, double width, double height)? crop,
    TResult Function(double degrees)? rotate,
    TResult Function(bool horizontal, bool vertical)? flip,
    TResult Function(double? brightness, double? contrast, double? saturation)?
    adjust,
    required TResult orElse(),
  }) {
    if (rotate != null) {
      return rotate(degrees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageTransformationResize value) resize,
    required TResult Function(ImageTransformationCrop value) crop,
    required TResult Function(ImageTransformationRotate value) rotate,
    required TResult Function(ImageTransformationFlip value) flip,
    required TResult Function(ImageTransformationAdjust value) adjust,
  }) {
    return rotate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageTransformationResize value)? resize,
    TResult? Function(ImageTransformationCrop value)? crop,
    TResult? Function(ImageTransformationRotate value)? rotate,
    TResult? Function(ImageTransformationFlip value)? flip,
    TResult? Function(ImageTransformationAdjust value)? adjust,
  }) {
    return rotate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageTransformationResize value)? resize,
    TResult Function(ImageTransformationCrop value)? crop,
    TResult Function(ImageTransformationRotate value)? rotate,
    TResult Function(ImageTransformationFlip value)? flip,
    TResult Function(ImageTransformationAdjust value)? adjust,
    required TResult orElse(),
  }) {
    if (rotate != null) {
      return rotate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageTransformationRotateImplToJson(this);
  }
}

abstract class ImageTransformationRotate implements ImageTransformation {
  const factory ImageTransformationRotate({required final double degrees}) =
      _$ImageTransformationRotateImpl;

  factory ImageTransformationRotate.fromJson(Map<String, dynamic> json) =
      _$ImageTransformationRotateImpl.fromJson;

  double get degrees;

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageTransformationRotateImplCopyWith<_$ImageTransformationRotateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageTransformationFlipImplCopyWith<$Res> {
  factory _$$ImageTransformationFlipImplCopyWith(
    _$ImageTransformationFlipImpl value,
    $Res Function(_$ImageTransformationFlipImpl) then,
  ) = __$$ImageTransformationFlipImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool horizontal, bool vertical});
}

/// @nodoc
class __$$ImageTransformationFlipImplCopyWithImpl<$Res>
    extends
        _$ImageTransformationCopyWithImpl<$Res, _$ImageTransformationFlipImpl>
    implements _$$ImageTransformationFlipImplCopyWith<$Res> {
  __$$ImageTransformationFlipImplCopyWithImpl(
    _$ImageTransformationFlipImpl _value,
    $Res Function(_$ImageTransformationFlipImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? horizontal = null, Object? vertical = null}) {
    return _then(
      _$ImageTransformationFlipImpl(
        horizontal: null == horizontal
            ? _value.horizontal
            : horizontal // ignore: cast_nullable_to_non_nullable
                  as bool,
        vertical: null == vertical
            ? _value.vertical
            : vertical // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageTransformationFlipImpl
    with DiagnosticableTreeMixin
    implements ImageTransformationFlip {
  const _$ImageTransformationFlipImpl({
    this.horizontal = false,
    this.vertical = false,
    final String? $type,
  }) : $type = $type ?? 'flip';

  factory _$ImageTransformationFlipImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageTransformationFlipImplFromJson(json);

  @override
  @JsonKey()
  final bool horizontal;
  @override
  @JsonKey()
  final bool vertical;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageTransformation.flip(horizontal: $horizontal, vertical: $vertical)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageTransformation.flip'))
      ..add(DiagnosticsProperty('horizontal', horizontal))
      ..add(DiagnosticsProperty('vertical', vertical));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageTransformationFlipImpl &&
            (identical(other.horizontal, horizontal) ||
                other.horizontal == horizontal) &&
            (identical(other.vertical, vertical) ||
                other.vertical == vertical));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, horizontal, vertical);

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageTransformationFlipImplCopyWith<_$ImageTransformationFlipImpl>
  get copyWith =>
      __$$ImageTransformationFlipImplCopyWithImpl<
        _$ImageTransformationFlipImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int width, int height, bool maintainAspectRatio)
    resize,
    required TResult Function(double x, double y, double width, double height)
    crop,
    required TResult Function(double degrees) rotate,
    required TResult Function(bool horizontal, bool vertical) flip,
    required TResult Function(
      double? brightness,
      double? contrast,
      double? saturation,
    )
    adjust,
  }) {
    return flip(horizontal, vertical);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int width, int height, bool maintainAspectRatio)? resize,
    TResult? Function(double x, double y, double width, double height)? crop,
    TResult? Function(double degrees)? rotate,
    TResult? Function(bool horizontal, bool vertical)? flip,
    TResult? Function(double? brightness, double? contrast, double? saturation)?
    adjust,
  }) {
    return flip?.call(horizontal, vertical);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int width, int height, bool maintainAspectRatio)? resize,
    TResult Function(double x, double y, double width, double height)? crop,
    TResult Function(double degrees)? rotate,
    TResult Function(bool horizontal, bool vertical)? flip,
    TResult Function(double? brightness, double? contrast, double? saturation)?
    adjust,
    required TResult orElse(),
  }) {
    if (flip != null) {
      return flip(horizontal, vertical);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageTransformationResize value) resize,
    required TResult Function(ImageTransformationCrop value) crop,
    required TResult Function(ImageTransformationRotate value) rotate,
    required TResult Function(ImageTransformationFlip value) flip,
    required TResult Function(ImageTransformationAdjust value) adjust,
  }) {
    return flip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageTransformationResize value)? resize,
    TResult? Function(ImageTransformationCrop value)? crop,
    TResult? Function(ImageTransformationRotate value)? rotate,
    TResult? Function(ImageTransformationFlip value)? flip,
    TResult? Function(ImageTransformationAdjust value)? adjust,
  }) {
    return flip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageTransformationResize value)? resize,
    TResult Function(ImageTransformationCrop value)? crop,
    TResult Function(ImageTransformationRotate value)? rotate,
    TResult Function(ImageTransformationFlip value)? flip,
    TResult Function(ImageTransformationAdjust value)? adjust,
    required TResult orElse(),
  }) {
    if (flip != null) {
      return flip(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageTransformationFlipImplToJson(this);
  }
}

abstract class ImageTransformationFlip implements ImageTransformation {
  const factory ImageTransformationFlip({
    final bool horizontal,
    final bool vertical,
  }) = _$ImageTransformationFlipImpl;

  factory ImageTransformationFlip.fromJson(Map<String, dynamic> json) =
      _$ImageTransformationFlipImpl.fromJson;

  bool get horizontal;
  bool get vertical;

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageTransformationFlipImplCopyWith<_$ImageTransformationFlipImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageTransformationAdjustImplCopyWith<$Res> {
  factory _$$ImageTransformationAdjustImplCopyWith(
    _$ImageTransformationAdjustImpl value,
    $Res Function(_$ImageTransformationAdjustImpl) then,
  ) = __$$ImageTransformationAdjustImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? brightness, double? contrast, double? saturation});
}

/// @nodoc
class __$$ImageTransformationAdjustImplCopyWithImpl<$Res>
    extends
        _$ImageTransformationCopyWithImpl<$Res, _$ImageTransformationAdjustImpl>
    implements _$$ImageTransformationAdjustImplCopyWith<$Res> {
  __$$ImageTransformationAdjustImplCopyWithImpl(
    _$ImageTransformationAdjustImpl _value,
    $Res Function(_$ImageTransformationAdjustImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = freezed,
    Object? contrast = freezed,
    Object? saturation = freezed,
  }) {
    return _then(
      _$ImageTransformationAdjustImpl(
        brightness: freezed == brightness
            ? _value.brightness
            : brightness // ignore: cast_nullable_to_non_nullable
                  as double?,
        contrast: freezed == contrast
            ? _value.contrast
            : contrast // ignore: cast_nullable_to_non_nullable
                  as double?,
        saturation: freezed == saturation
            ? _value.saturation
            : saturation // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageTransformationAdjustImpl
    with DiagnosticableTreeMixin
    implements ImageTransformationAdjust {
  const _$ImageTransformationAdjustImpl({
    this.brightness,
    this.contrast,
    this.saturation,
    final String? $type,
  }) : $type = $type ?? 'adjust';

  factory _$ImageTransformationAdjustImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageTransformationAdjustImplFromJson(json);

  @override
  final double? brightness;
  @override
  final double? contrast;
  @override
  final double? saturation;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageTransformation.adjust(brightness: $brightness, contrast: $contrast, saturation: $saturation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageTransformation.adjust'))
      ..add(DiagnosticsProperty('brightness', brightness))
      ..add(DiagnosticsProperty('contrast', contrast))
      ..add(DiagnosticsProperty('saturation', saturation));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageTransformationAdjustImpl &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.contrast, contrast) ||
                other.contrast == contrast) &&
            (identical(other.saturation, saturation) ||
                other.saturation == saturation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, brightness, contrast, saturation);

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageTransformationAdjustImplCopyWith<_$ImageTransformationAdjustImpl>
  get copyWith =>
      __$$ImageTransformationAdjustImplCopyWithImpl<
        _$ImageTransformationAdjustImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int width, int height, bool maintainAspectRatio)
    resize,
    required TResult Function(double x, double y, double width, double height)
    crop,
    required TResult Function(double degrees) rotate,
    required TResult Function(bool horizontal, bool vertical) flip,
    required TResult Function(
      double? brightness,
      double? contrast,
      double? saturation,
    )
    adjust,
  }) {
    return adjust(brightness, contrast, saturation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int width, int height, bool maintainAspectRatio)? resize,
    TResult? Function(double x, double y, double width, double height)? crop,
    TResult? Function(double degrees)? rotate,
    TResult? Function(bool horizontal, bool vertical)? flip,
    TResult? Function(double? brightness, double? contrast, double? saturation)?
    adjust,
  }) {
    return adjust?.call(brightness, contrast, saturation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int width, int height, bool maintainAspectRatio)? resize,
    TResult Function(double x, double y, double width, double height)? crop,
    TResult Function(double degrees)? rotate,
    TResult Function(bool horizontal, bool vertical)? flip,
    TResult Function(double? brightness, double? contrast, double? saturation)?
    adjust,
    required TResult orElse(),
  }) {
    if (adjust != null) {
      return adjust(brightness, contrast, saturation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageTransformationResize value) resize,
    required TResult Function(ImageTransformationCrop value) crop,
    required TResult Function(ImageTransformationRotate value) rotate,
    required TResult Function(ImageTransformationFlip value) flip,
    required TResult Function(ImageTransformationAdjust value) adjust,
  }) {
    return adjust(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageTransformationResize value)? resize,
    TResult? Function(ImageTransformationCrop value)? crop,
    TResult? Function(ImageTransformationRotate value)? rotate,
    TResult? Function(ImageTransformationFlip value)? flip,
    TResult? Function(ImageTransformationAdjust value)? adjust,
  }) {
    return adjust?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageTransformationResize value)? resize,
    TResult Function(ImageTransformationCrop value)? crop,
    TResult Function(ImageTransformationRotate value)? rotate,
    TResult Function(ImageTransformationFlip value)? flip,
    TResult Function(ImageTransformationAdjust value)? adjust,
    required TResult orElse(),
  }) {
    if (adjust != null) {
      return adjust(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageTransformationAdjustImplToJson(this);
  }
}

abstract class ImageTransformationAdjust implements ImageTransformation {
  const factory ImageTransformationAdjust({
    final double? brightness,
    final double? contrast,
    final double? saturation,
  }) = _$ImageTransformationAdjustImpl;

  factory ImageTransformationAdjust.fromJson(Map<String, dynamic> json) =
      _$ImageTransformationAdjustImpl.fromJson;

  double? get brightness;
  double? get contrast;
  double? get saturation;

  /// Create a copy of ImageTransformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageTransformationAdjustImplCopyWith<_$ImageTransformationAdjustImpl>
  get copyWith => throw _privateConstructorUsedError;
}

EditImageResult _$EditImageResultFromJson(Map<String, dynamic> json) {
  return _EditImageResult.fromJson(json);
}

/// @nodoc
mixin _$EditImageResult {
  /// The ID of the resulting image file
  String get imageId => throw _privateConstructorUsedError;

  /// Whether the operation created a new file or modified the original
  bool get createdNewFile => throw _privateConstructorUsedError;

  /// The path of the resulting image
  String get imagePath => throw _privateConstructorUsedError;

  /// New dimensions if they changed
  Map<String, int> get newDimensions => throw _privateConstructorUsedError;

  /// Serializes this EditImageResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditImageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditImageResultCopyWith<EditImageResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditImageResultCopyWith<$Res> {
  factory $EditImageResultCopyWith(
    EditImageResult value,
    $Res Function(EditImageResult) then,
  ) = _$EditImageResultCopyWithImpl<$Res, EditImageResult>;
  @useResult
  $Res call({
    String imageId,
    bool createdNewFile,
    String imagePath,
    Map<String, int> newDimensions,
  });
}

/// @nodoc
class _$EditImageResultCopyWithImpl<$Res, $Val extends EditImageResult>
    implements $EditImageResultCopyWith<$Res> {
  _$EditImageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditImageResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
    Object? createdNewFile = null,
    Object? imagePath = null,
    Object? newDimensions = null,
  }) {
    return _then(
      _value.copyWith(
            imageId: null == imageId
                ? _value.imageId
                : imageId // ignore: cast_nullable_to_non_nullable
                      as String,
            createdNewFile: null == createdNewFile
                ? _value.createdNewFile
                : createdNewFile // ignore: cast_nullable_to_non_nullable
                      as bool,
            imagePath: null == imagePath
                ? _value.imagePath
                : imagePath // ignore: cast_nullable_to_non_nullable
                      as String,
            newDimensions: null == newDimensions
                ? _value.newDimensions
                : newDimensions // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EditImageResultImplCopyWith<$Res>
    implements $EditImageResultCopyWith<$Res> {
  factory _$$EditImageResultImplCopyWith(
    _$EditImageResultImpl value,
    $Res Function(_$EditImageResultImpl) then,
  ) = __$$EditImageResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String imageId,
    bool createdNewFile,
    String imagePath,
    Map<String, int> newDimensions,
  });
}

/// @nodoc
class __$$EditImageResultImplCopyWithImpl<$Res>
    extends _$EditImageResultCopyWithImpl<$Res, _$EditImageResultImpl>
    implements _$$EditImageResultImplCopyWith<$Res> {
  __$$EditImageResultImplCopyWithImpl(
    _$EditImageResultImpl _value,
    $Res Function(_$EditImageResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditImageResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
    Object? createdNewFile = null,
    Object? imagePath = null,
    Object? newDimensions = null,
  }) {
    return _then(
      _$EditImageResultImpl(
        imageId: null == imageId
            ? _value.imageId
            : imageId // ignore: cast_nullable_to_non_nullable
                  as String,
        createdNewFile: null == createdNewFile
            ? _value.createdNewFile
            : createdNewFile // ignore: cast_nullable_to_non_nullable
                  as bool,
        imagePath: null == imagePath
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                  as String,
        newDimensions: null == newDimensions
            ? _value._newDimensions
            : newDimensions // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EditImageResultImpl
    with DiagnosticableTreeMixin
    implements _EditImageResult {
  const _$EditImageResultImpl({
    required this.imageId,
    required this.createdNewFile,
    required this.imagePath,
    final Map<String, int> newDimensions = const <String, int>{},
  }) : _newDimensions = newDimensions;

  factory _$EditImageResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditImageResultImplFromJson(json);

  /// The ID of the resulting image file
  @override
  final String imageId;

  /// Whether the operation created a new file or modified the original
  @override
  final bool createdNewFile;

  /// The path of the resulting image
  @override
  final String imagePath;

  /// New dimensions if they changed
  final Map<String, int> _newDimensions;

  /// New dimensions if they changed
  @override
  @JsonKey()
  Map<String, int> get newDimensions {
    if (_newDimensions is EqualUnmodifiableMapView) return _newDimensions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_newDimensions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditImageResult(imageId: $imageId, createdNewFile: $createdNewFile, imagePath: $imagePath, newDimensions: $newDimensions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditImageResult'))
      ..add(DiagnosticsProperty('imageId', imageId))
      ..add(DiagnosticsProperty('createdNewFile', createdNewFile))
      ..add(DiagnosticsProperty('imagePath', imagePath))
      ..add(DiagnosticsProperty('newDimensions', newDimensions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditImageResultImpl &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.createdNewFile, createdNewFile) ||
                other.createdNewFile == createdNewFile) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality().equals(
              other._newDimensions,
              _newDimensions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    imageId,
    createdNewFile,
    imagePath,
    const DeepCollectionEquality().hash(_newDimensions),
  );

  /// Create a copy of EditImageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditImageResultImplCopyWith<_$EditImageResultImpl> get copyWith =>
      __$$EditImageResultImplCopyWithImpl<_$EditImageResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EditImageResultImplToJson(this);
  }
}

abstract class _EditImageResult implements EditImageResult {
  const factory _EditImageResult({
    required final String imageId,
    required final bool createdNewFile,
    required final String imagePath,
    final Map<String, int> newDimensions,
  }) = _$EditImageResultImpl;

  factory _EditImageResult.fromJson(Map<String, dynamic> json) =
      _$EditImageResultImpl.fromJson;

  /// The ID of the resulting image file
  @override
  String get imageId;

  /// Whether the operation created a new file or modified the original
  @override
  bool get createdNewFile;

  /// The path of the resulting image
  @override
  String get imagePath;

  /// New dimensions if they changed
  @override
  Map<String, int> get newDimensions;

  /// Create a copy of EditImageResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditImageResultImplCopyWith<_$EditImageResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EditImageTask _$EditImageTaskFromJson(Map<String, dynamic> json) {
  return _EditImageTask.fromJson(json);
}

/// @nodoc
mixin _$EditImageTask {
  /// ID of the source image file to edit
  String get sourceImageId => throw _privateConstructorUsedError;

  /// List of transformations to apply
  List<ImageTransformation> get transformations =>
      throw _privateConstructorUsedError;

  /// Whether to create a new file or overwrite the original
  bool get createNewFile => throw _privateConstructorUsedError;

  /// Optional name for the new file (if createNewFile is true)
  String? get newFileName => throw _privateConstructorUsedError;

  /// Optional target folder for the new file
  String? get targetFolderId => throw _privateConstructorUsedError;

  /// Output format if different from source
  String? get outputFormat => throw _privateConstructorUsedError;

  /// Serializes this EditImageTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditImageTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditImageTaskCopyWith<EditImageTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditImageTaskCopyWith<$Res> {
  factory $EditImageTaskCopyWith(
    EditImageTask value,
    $Res Function(EditImageTask) then,
  ) = _$EditImageTaskCopyWithImpl<$Res, EditImageTask>;
  @useResult
  $Res call({
    String sourceImageId,
    List<ImageTransformation> transformations,
    bool createNewFile,
    String? newFileName,
    String? targetFolderId,
    String? outputFormat,
  });
}

/// @nodoc
class _$EditImageTaskCopyWithImpl<$Res, $Val extends EditImageTask>
    implements $EditImageTaskCopyWith<$Res> {
  _$EditImageTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditImageTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceImageId = null,
    Object? transformations = null,
    Object? createNewFile = null,
    Object? newFileName = freezed,
    Object? targetFolderId = freezed,
    Object? outputFormat = freezed,
  }) {
    return _then(
      _value.copyWith(
            sourceImageId: null == sourceImageId
                ? _value.sourceImageId
                : sourceImageId // ignore: cast_nullable_to_non_nullable
                      as String,
            transformations: null == transformations
                ? _value.transformations
                : transformations // ignore: cast_nullable_to_non_nullable
                      as List<ImageTransformation>,
            createNewFile: null == createNewFile
                ? _value.createNewFile
                : createNewFile // ignore: cast_nullable_to_non_nullable
                      as bool,
            newFileName: freezed == newFileName
                ? _value.newFileName
                : newFileName // ignore: cast_nullable_to_non_nullable
                      as String?,
            targetFolderId: freezed == targetFolderId
                ? _value.targetFolderId
                : targetFolderId // ignore: cast_nullable_to_non_nullable
                      as String?,
            outputFormat: freezed == outputFormat
                ? _value.outputFormat
                : outputFormat // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EditImageTaskImplCopyWith<$Res>
    implements $EditImageTaskCopyWith<$Res> {
  factory _$$EditImageTaskImplCopyWith(
    _$EditImageTaskImpl value,
    $Res Function(_$EditImageTaskImpl) then,
  ) = __$$EditImageTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sourceImageId,
    List<ImageTransformation> transformations,
    bool createNewFile,
    String? newFileName,
    String? targetFolderId,
    String? outputFormat,
  });
}

/// @nodoc
class __$$EditImageTaskImplCopyWithImpl<$Res>
    extends _$EditImageTaskCopyWithImpl<$Res, _$EditImageTaskImpl>
    implements _$$EditImageTaskImplCopyWith<$Res> {
  __$$EditImageTaskImplCopyWithImpl(
    _$EditImageTaskImpl _value,
    $Res Function(_$EditImageTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditImageTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceImageId = null,
    Object? transformations = null,
    Object? createNewFile = null,
    Object? newFileName = freezed,
    Object? targetFolderId = freezed,
    Object? outputFormat = freezed,
  }) {
    return _then(
      _$EditImageTaskImpl(
        sourceImageId: null == sourceImageId
            ? _value.sourceImageId
            : sourceImageId // ignore: cast_nullable_to_non_nullable
                  as String,
        transformations: null == transformations
            ? _value._transformations
            : transformations // ignore: cast_nullable_to_non_nullable
                  as List<ImageTransformation>,
        createNewFile: null == createNewFile
            ? _value.createNewFile
            : createNewFile // ignore: cast_nullable_to_non_nullable
                  as bool,
        newFileName: freezed == newFileName
            ? _value.newFileName
            : newFileName // ignore: cast_nullable_to_non_nullable
                  as String?,
        targetFolderId: freezed == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String?,
        outputFormat: freezed == outputFormat
            ? _value.outputFormat
            : outputFormat // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EditImageTaskImpl extends _EditImageTask with DiagnosticableTreeMixin {
  const _$EditImageTaskImpl({
    required this.sourceImageId,
    final List<ImageTransformation> transformations =
        const <ImageTransformation>[],
    this.createNewFile = false,
    this.newFileName,
    this.targetFolderId,
    this.outputFormat,
  }) : _transformations = transformations,
       super._();

  factory _$EditImageTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditImageTaskImplFromJson(json);

  /// ID of the source image file to edit
  @override
  final String sourceImageId;

  /// List of transformations to apply
  final List<ImageTransformation> _transformations;

  /// List of transformations to apply
  @override
  @JsonKey()
  List<ImageTransformation> get transformations {
    if (_transformations is EqualUnmodifiableListView) return _transformations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transformations);
  }

  /// Whether to create a new file or overwrite the original
  @override
  @JsonKey()
  final bool createNewFile;

  /// Optional name for the new file (if createNewFile is true)
  @override
  final String? newFileName;

  /// Optional target folder for the new file
  @override
  final String? targetFolderId;

  /// Output format if different from source
  @override
  final String? outputFormat;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditImageTask(sourceImageId: $sourceImageId, transformations: $transformations, createNewFile: $createNewFile, newFileName: $newFileName, targetFolderId: $targetFolderId, outputFormat: $outputFormat)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditImageTask'))
      ..add(DiagnosticsProperty('sourceImageId', sourceImageId))
      ..add(DiagnosticsProperty('transformations', transformations))
      ..add(DiagnosticsProperty('createNewFile', createNewFile))
      ..add(DiagnosticsProperty('newFileName', newFileName))
      ..add(DiagnosticsProperty('targetFolderId', targetFolderId))
      ..add(DiagnosticsProperty('outputFormat', outputFormat));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditImageTaskImpl &&
            (identical(other.sourceImageId, sourceImageId) ||
                other.sourceImageId == sourceImageId) &&
            const DeepCollectionEquality().equals(
              other._transformations,
              _transformations,
            ) &&
            (identical(other.createNewFile, createNewFile) ||
                other.createNewFile == createNewFile) &&
            (identical(other.newFileName, newFileName) ||
                other.newFileName == newFileName) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            (identical(other.outputFormat, outputFormat) ||
                other.outputFormat == outputFormat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sourceImageId,
    const DeepCollectionEquality().hash(_transformations),
    createNewFile,
    newFileName,
    targetFolderId,
    outputFormat,
  );

  /// Create a copy of EditImageTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditImageTaskImplCopyWith<_$EditImageTaskImpl> get copyWith =>
      __$$EditImageTaskImplCopyWithImpl<_$EditImageTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditImageTaskImplToJson(this);
  }
}

abstract class _EditImageTask extends EditImageTask {
  const factory _EditImageTask({
    required final String sourceImageId,
    final List<ImageTransformation> transformations,
    final bool createNewFile,
    final String? newFileName,
    final String? targetFolderId,
    final String? outputFormat,
  }) = _$EditImageTaskImpl;
  const _EditImageTask._() : super._();

  factory _EditImageTask.fromJson(Map<String, dynamic> json) =
      _$EditImageTaskImpl.fromJson;

  /// ID of the source image file to edit
  @override
  String get sourceImageId;

  /// List of transformations to apply
  @override
  List<ImageTransformation> get transformations;

  /// Whether to create a new file or overwrite the original
  @override
  bool get createNewFile;

  /// Optional name for the new file (if createNewFile is true)
  @override
  String? get newFileName;

  /// Optional target folder for the new file
  @override
  String? get targetFolderId;

  /// Output format if different from source
  @override
  String? get outputFormat;

  /// Create a copy of EditImageTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditImageTaskImplCopyWith<_$EditImageTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
