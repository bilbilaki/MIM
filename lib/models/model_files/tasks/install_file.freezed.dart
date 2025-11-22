// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'install_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InstallFileResult _$InstallFileResultFromJson(Map<String, dynamic> json) {
  return _InstallFileResult.fromJson(json);
}

/// @nodoc
mixin _$InstallFileResult {
  /// Whether the installation was successful
  bool get success => throw _privateConstructorUsedError;

  /// ID of the installed entry (if applicable)
  String? get installedEntryId => throw _privateConstructorUsedError;

  /// Installation status message
  String? get message => throw _privateConstructorUsedError;

  /// Error code if installation failed
  String? get errorCode => throw _privateConstructorUsedError;

  /// Additional installation metadata
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this InstallFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstallFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstallFileResultCopyWith<InstallFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstallFileResultCopyWith<$Res> {
  factory $InstallFileResultCopyWith(
    InstallFileResult value,
    $Res Function(InstallFileResult) then,
  ) = _$InstallFileResultCopyWithImpl<$Res, InstallFileResult>;
  @useResult
  $Res call({
    bool success,
    String? installedEntryId,
    String? message,
    String? errorCode,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$InstallFileResultCopyWithImpl<$Res, $Val extends InstallFileResult>
    implements $InstallFileResultCopyWith<$Res> {
  _$InstallFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstallFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? installedEntryId = freezed,
    Object? message = freezed,
    Object? errorCode = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            installedEntryId: freezed == installedEntryId
                ? _value.installedEntryId
                : installedEntryId // ignore: cast_nullable_to_non_nullable
                      as String?,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            errorCode: freezed == errorCode
                ? _value.errorCode
                : errorCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InstallFileResultImplCopyWith<$Res>
    implements $InstallFileResultCopyWith<$Res> {
  factory _$$InstallFileResultImplCopyWith(
    _$InstallFileResultImpl value,
    $Res Function(_$InstallFileResultImpl) then,
  ) = __$$InstallFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool success,
    String? installedEntryId,
    String? message,
    String? errorCode,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$InstallFileResultImplCopyWithImpl<$Res>
    extends _$InstallFileResultCopyWithImpl<$Res, _$InstallFileResultImpl>
    implements _$$InstallFileResultImplCopyWith<$Res> {
  __$$InstallFileResultImplCopyWithImpl(
    _$InstallFileResultImpl _value,
    $Res Function(_$InstallFileResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InstallFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? installedEntryId = freezed,
    Object? message = freezed,
    Object? errorCode = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$InstallFileResultImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        installedEntryId: freezed == installedEntryId
            ? _value.installedEntryId
            : installedEntryId // ignore: cast_nullable_to_non_nullable
                  as String?,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        errorCode: freezed == errorCode
            ? _value.errorCode
            : errorCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        metadata: freezed == metadata
            ? _value._metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InstallFileResultImpl implements _InstallFileResult {
  const _$InstallFileResultImpl({
    required this.success,
    this.installedEntryId,
    this.message,
    this.errorCode,
    final Map<String, dynamic>? metadata,
  }) : _metadata = metadata;

  factory _$InstallFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstallFileResultImplFromJson(json);

  /// Whether the installation was successful
  @override
  final bool success;

  /// ID of the installed entry (if applicable)
  @override
  final String? installedEntryId;

  /// Installation status message
  @override
  final String? message;

  /// Error code if installation failed
  @override
  final String? errorCode;

  /// Additional installation metadata
  final Map<String, dynamic>? _metadata;

  /// Additional installation metadata
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'InstallFileResult(success: $success, installedEntryId: $installedEntryId, message: $message, errorCode: $errorCode, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstallFileResultImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.installedEntryId, installedEntryId) ||
                other.installedEntryId == installedEntryId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    installedEntryId,
    message,
    errorCode,
    const DeepCollectionEquality().hash(_metadata),
  );

  /// Create a copy of InstallFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstallFileResultImplCopyWith<_$InstallFileResultImpl> get copyWith =>
      __$$InstallFileResultImplCopyWithImpl<_$InstallFileResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InstallFileResultImplToJson(this);
  }
}

abstract class _InstallFileResult implements InstallFileResult {
  const factory _InstallFileResult({
    required final bool success,
    final String? installedEntryId,
    final String? message,
    final String? errorCode,
    final Map<String, dynamic>? metadata,
  }) = _$InstallFileResultImpl;

  factory _InstallFileResult.fromJson(Map<String, dynamic> json) =
      _$InstallFileResultImpl.fromJson;

  /// Whether the installation was successful
  @override
  bool get success;

  /// ID of the installed entry (if applicable)
  @override
  String? get installedEntryId;

  /// Installation status message
  @override
  String? get message;

  /// Error code if installation failed
  @override
  String? get errorCode;

  /// Additional installation metadata
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of InstallFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstallFileResultImplCopyWith<_$InstallFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InstallFileTask _$InstallFileTaskFromJson(Map<String, dynamic> json) {
  return _InstallFileTask.fromJson(json);
}

/// @nodoc
mixin _$InstallFileTask {
  /// ID of the source file to install
  String get sourceFileId => throw _privateConstructorUsedError;

  /// Target platform/environment parameters
  Map<String, dynamic> get platformParams => throw _privateConstructorUsedError;

  /// Installation options
  Map<String, dynamic> get options => throw _privateConstructorUsedError;

  /// Serializes this InstallFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstallFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstallFileTaskCopyWith<InstallFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstallFileTaskCopyWith<$Res> {
  factory $InstallFileTaskCopyWith(
    InstallFileTask value,
    $Res Function(InstallFileTask) then,
  ) = _$InstallFileTaskCopyWithImpl<$Res, InstallFileTask>;
  @useResult
  $Res call({
    String sourceFileId,
    Map<String, dynamic> platformParams,
    Map<String, dynamic> options,
  });
}

/// @nodoc
class _$InstallFileTaskCopyWithImpl<$Res, $Val extends InstallFileTask>
    implements $InstallFileTaskCopyWith<$Res> {
  _$InstallFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstallFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFileId = null,
    Object? platformParams = null,
    Object? options = null,
  }) {
    return _then(
      _value.copyWith(
            sourceFileId: null == sourceFileId
                ? _value.sourceFileId
                : sourceFileId // ignore: cast_nullable_to_non_nullable
                      as String,
            platformParams: null == platformParams
                ? _value.platformParams
                : platformParams // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
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
abstract class _$$InstallFileTaskImplCopyWith<$Res>
    implements $InstallFileTaskCopyWith<$Res> {
  factory _$$InstallFileTaskImplCopyWith(
    _$InstallFileTaskImpl value,
    $Res Function(_$InstallFileTaskImpl) then,
  ) = __$$InstallFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sourceFileId,
    Map<String, dynamic> platformParams,
    Map<String, dynamic> options,
  });
}

/// @nodoc
class __$$InstallFileTaskImplCopyWithImpl<$Res>
    extends _$InstallFileTaskCopyWithImpl<$Res, _$InstallFileTaskImpl>
    implements _$$InstallFileTaskImplCopyWith<$Res> {
  __$$InstallFileTaskImplCopyWithImpl(
    _$InstallFileTaskImpl _value,
    $Res Function(_$InstallFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InstallFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceFileId = null,
    Object? platformParams = null,
    Object? options = null,
  }) {
    return _then(
      _$InstallFileTaskImpl(
        sourceFileId: null == sourceFileId
            ? _value.sourceFileId
            : sourceFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        platformParams: null == platformParams
            ? _value._platformParams
            : platformParams // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
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
class _$InstallFileTaskImpl extends _InstallFileTask {
  const _$InstallFileTaskImpl({
    required this.sourceFileId,
    required final Map<String, dynamic> platformParams,
    final Map<String, dynamic> options = const <String, dynamic>{},
  }) : _platformParams = platformParams,
       _options = options,
       super._();

  factory _$InstallFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstallFileTaskImplFromJson(json);

  /// ID of the source file to install
  @override
  final String sourceFileId;

  /// Target platform/environment parameters
  final Map<String, dynamic> _platformParams;

  /// Target platform/environment parameters
  @override
  Map<String, dynamic> get platformParams {
    if (_platformParams is EqualUnmodifiableMapView) return _platformParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_platformParams);
  }

  /// Installation options
  final Map<String, dynamic> _options;

  /// Installation options
  @override
  @JsonKey()
  Map<String, dynamic> get options {
    if (_options is EqualUnmodifiableMapView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_options);
  }

  @override
  String toString() {
    return 'InstallFileTask(sourceFileId: $sourceFileId, platformParams: $platformParams, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstallFileTaskImpl &&
            (identical(other.sourceFileId, sourceFileId) ||
                other.sourceFileId == sourceFileId) &&
            const DeepCollectionEquality().equals(
              other._platformParams,
              _platformParams,
            ) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sourceFileId,
    const DeepCollectionEquality().hash(_platformParams),
    const DeepCollectionEquality().hash(_options),
  );

  /// Create a copy of InstallFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstallFileTaskImplCopyWith<_$InstallFileTaskImpl> get copyWith =>
      __$$InstallFileTaskImplCopyWithImpl<_$InstallFileTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InstallFileTaskImplToJson(this);
  }
}

abstract class _InstallFileTask extends InstallFileTask {
  const factory _InstallFileTask({
    required final String sourceFileId,
    required final Map<String, dynamic> platformParams,
    final Map<String, dynamic> options,
  }) = _$InstallFileTaskImpl;
  const _InstallFileTask._() : super._();

  factory _InstallFileTask.fromJson(Map<String, dynamic> json) =
      _$InstallFileTaskImpl.fromJson;

  /// ID of the source file to install
  @override
  String get sourceFileId;

  /// Target platform/environment parameters
  @override
  Map<String, dynamic> get platformParams;

  /// Installation options
  @override
  Map<String, dynamic> get options;

  /// Create a copy of InstallFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstallFileTaskImplCopyWith<_$InstallFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
