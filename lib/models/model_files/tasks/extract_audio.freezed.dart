// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extract_audio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ExtractAudioTask _$ExtractAudioTaskFromJson(Map<String, dynamic> json) {
  return _ExtractAudioTask.fromJson(json);
}

/// @nodoc
mixin _$ExtractAudioTask {
  /// Source video file ID
  String get videoFileId => throw _privateConstructorUsedError;

  /// Target folder ID where extracted audio will be placed
  String get targetFolderId => throw _privateConstructorUsedError;

  /// Output audio format (e.g., 'mp3', 'wav', 'aac')
  String get outputFormat => throw _privateConstructorUsedError;

  /// Optional output file name (without extension)
  String? get outputName => throw _privateConstructorUsedError;

  /// Optional time range to extract (start time in seconds)
  double? get startTime => throw _privateConstructorUsedError;

  /// Optional time range to extract (end time in seconds)
  double? get endTime => throw _privateConstructorUsedError;

  /// Audio quality parameters (bitrate, sample rate, etc.)
  Map<String, dynamic> get audioParams => throw _privateConstructorUsedError;

  /// Serializes this ExtractAudioTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtractAudioTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtractAudioTaskCopyWith<ExtractAudioTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtractAudioTaskCopyWith<$Res> {
  factory $ExtractAudioTaskCopyWith(
    ExtractAudioTask value,
    $Res Function(ExtractAudioTask) then,
  ) = _$ExtractAudioTaskCopyWithImpl<$Res, ExtractAudioTask>;
  @useResult
  $Res call({
    String videoFileId,
    String targetFolderId,
    String outputFormat,
    String? outputName,
    double? startTime,
    double? endTime,
    Map<String, dynamic> audioParams,
  });
}

/// @nodoc
class _$ExtractAudioTaskCopyWithImpl<$Res, $Val extends ExtractAudioTask>
    implements $ExtractAudioTaskCopyWith<$Res> {
  _$ExtractAudioTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtractAudioTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoFileId = null,
    Object? targetFolderId = null,
    Object? outputFormat = null,
    Object? outputName = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? audioParams = null,
  }) {
    return _then(
      _value.copyWith(
            videoFileId: null == videoFileId
                ? _value.videoFileId
                : videoFileId // ignore: cast_nullable_to_non_nullable
                      as String,
            targetFolderId: null == targetFolderId
                ? _value.targetFolderId
                : targetFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            outputFormat: null == outputFormat
                ? _value.outputFormat
                : outputFormat // ignore: cast_nullable_to_non_nullable
                      as String,
            outputName: freezed == outputName
                ? _value.outputName
                : outputName // ignore: cast_nullable_to_non_nullable
                      as String?,
            startTime: freezed == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as double?,
            endTime: freezed == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                      as double?,
            audioParams: null == audioParams
                ? _value.audioParams
                : audioParams // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExtractAudioTaskImplCopyWith<$Res>
    implements $ExtractAudioTaskCopyWith<$Res> {
  factory _$$ExtractAudioTaskImplCopyWith(
    _$ExtractAudioTaskImpl value,
    $Res Function(_$ExtractAudioTaskImpl) then,
  ) = __$$ExtractAudioTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String videoFileId,
    String targetFolderId,
    String outputFormat,
    String? outputName,
    double? startTime,
    double? endTime,
    Map<String, dynamic> audioParams,
  });
}

/// @nodoc
class __$$ExtractAudioTaskImplCopyWithImpl<$Res>
    extends _$ExtractAudioTaskCopyWithImpl<$Res, _$ExtractAudioTaskImpl>
    implements _$$ExtractAudioTaskImplCopyWith<$Res> {
  __$$ExtractAudioTaskImplCopyWithImpl(
    _$ExtractAudioTaskImpl _value,
    $Res Function(_$ExtractAudioTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExtractAudioTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoFileId = null,
    Object? targetFolderId = null,
    Object? outputFormat = null,
    Object? outputName = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? audioParams = null,
  }) {
    return _then(
      _$ExtractAudioTaskImpl(
        videoFileId: null == videoFileId
            ? _value.videoFileId
            : videoFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        targetFolderId: null == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        outputFormat: null == outputFormat
            ? _value.outputFormat
            : outputFormat // ignore: cast_nullable_to_non_nullable
                  as String,
        outputName: freezed == outputName
            ? _value.outputName
            : outputName // ignore: cast_nullable_to_non_nullable
                  as String?,
        startTime: freezed == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as double?,
        endTime: freezed == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as double?,
        audioParams: null == audioParams
            ? _value._audioParams
            : audioParams // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtractAudioTaskImpl extends _ExtractAudioTask {
  const _$ExtractAudioTaskImpl({
    required this.videoFileId,
    required this.targetFolderId,
    this.outputFormat = 'mp3',
    this.outputName,
    this.startTime,
    this.endTime,
    final Map<String, dynamic> audioParams = const <String, dynamic>{},
  }) : _audioParams = audioParams,
       super._();

  factory _$ExtractAudioTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtractAudioTaskImplFromJson(json);

  /// Source video file ID
  @override
  final String videoFileId;

  /// Target folder ID where extracted audio will be placed
  @override
  final String targetFolderId;

  /// Output audio format (e.g., 'mp3', 'wav', 'aac')
  @override
  @JsonKey()
  final String outputFormat;

  /// Optional output file name (without extension)
  @override
  final String? outputName;

  /// Optional time range to extract (start time in seconds)
  @override
  final double? startTime;

  /// Optional time range to extract (end time in seconds)
  @override
  final double? endTime;

  /// Audio quality parameters (bitrate, sample rate, etc.)
  final Map<String, dynamic> _audioParams;

  /// Audio quality parameters (bitrate, sample rate, etc.)
  @override
  @JsonKey()
  Map<String, dynamic> get audioParams {
    if (_audioParams is EqualUnmodifiableMapView) return _audioParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_audioParams);
  }

  @override
  String toString() {
    return 'ExtractAudioTask(videoFileId: $videoFileId, targetFolderId: $targetFolderId, outputFormat: $outputFormat, outputName: $outputName, startTime: $startTime, endTime: $endTime, audioParams: $audioParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtractAudioTaskImpl &&
            (identical(other.videoFileId, videoFileId) ||
                other.videoFileId == videoFileId) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            (identical(other.outputFormat, outputFormat) ||
                other.outputFormat == outputFormat) &&
            (identical(other.outputName, outputName) ||
                other.outputName == outputName) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality().equals(
              other._audioParams,
              _audioParams,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    videoFileId,
    targetFolderId,
    outputFormat,
    outputName,
    startTime,
    endTime,
    const DeepCollectionEquality().hash(_audioParams),
  );

  /// Create a copy of ExtractAudioTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtractAudioTaskImplCopyWith<_$ExtractAudioTaskImpl> get copyWith =>
      __$$ExtractAudioTaskImplCopyWithImpl<_$ExtractAudioTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtractAudioTaskImplToJson(this);
  }
}

abstract class _ExtractAudioTask extends ExtractAudioTask {
  const factory _ExtractAudioTask({
    required final String videoFileId,
    required final String targetFolderId,
    final String outputFormat,
    final String? outputName,
    final double? startTime,
    final double? endTime,
    final Map<String, dynamic> audioParams,
  }) = _$ExtractAudioTaskImpl;
  const _ExtractAudioTask._() : super._();

  factory _ExtractAudioTask.fromJson(Map<String, dynamic> json) =
      _$ExtractAudioTaskImpl.fromJson;

  /// Source video file ID
  @override
  String get videoFileId;

  /// Target folder ID where extracted audio will be placed
  @override
  String get targetFolderId;

  /// Output audio format (e.g., 'mp3', 'wav', 'aac')
  @override
  String get outputFormat;

  /// Optional output file name (without extension)
  @override
  String? get outputName;

  /// Optional time range to extract (start time in seconds)
  @override
  double? get startTime;

  /// Optional time range to extract (end time in seconds)
  @override
  double? get endTime;

  /// Audio quality parameters (bitrate, sample rate, etc.)
  @override
  Map<String, dynamic> get audioParams;

  /// Create a copy of ExtractAudioTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtractAudioTaskImplCopyWith<_$ExtractAudioTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtractAudioResult _$ExtractAudioResultFromJson(Map<String, dynamic> json) {
  return _ExtractAudioResult.fromJson(json);
}

/// @nodoc
mixin _$ExtractAudioResult {
  /// ID of the newly created audio file
  String get audioFileId => throw _privateConstructorUsedError;

  /// Path to the extracted audio file
  String get audioFilePath => throw _privateConstructorUsedError;

  /// Duration of the extracted audio in seconds
  double? get durationSeconds => throw _privateConstructorUsedError;

  /// Size of the extracted audio file in bytes
  int? get fileSizeBytes => throw _privateConstructorUsedError;

  /// Any warnings or additional info about the extraction
  List<String> get warnings => throw _privateConstructorUsedError;

  /// Serializes this ExtractAudioResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtractAudioResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtractAudioResultCopyWith<ExtractAudioResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtractAudioResultCopyWith<$Res> {
  factory $ExtractAudioResultCopyWith(
    ExtractAudioResult value,
    $Res Function(ExtractAudioResult) then,
  ) = _$ExtractAudioResultCopyWithImpl<$Res, ExtractAudioResult>;
  @useResult
  $Res call({
    String audioFileId,
    String audioFilePath,
    double? durationSeconds,
    int? fileSizeBytes,
    List<String> warnings,
  });
}

/// @nodoc
class _$ExtractAudioResultCopyWithImpl<$Res, $Val extends ExtractAudioResult>
    implements $ExtractAudioResultCopyWith<$Res> {
  _$ExtractAudioResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtractAudioResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioFileId = null,
    Object? audioFilePath = null,
    Object? durationSeconds = freezed,
    Object? fileSizeBytes = freezed,
    Object? warnings = null,
  }) {
    return _then(
      _value.copyWith(
            audioFileId: null == audioFileId
                ? _value.audioFileId
                : audioFileId // ignore: cast_nullable_to_non_nullable
                      as String,
            audioFilePath: null == audioFilePath
                ? _value.audioFilePath
                : audioFilePath // ignore: cast_nullable_to_non_nullable
                      as String,
            durationSeconds: freezed == durationSeconds
                ? _value.durationSeconds
                : durationSeconds // ignore: cast_nullable_to_non_nullable
                      as double?,
            fileSizeBytes: freezed == fileSizeBytes
                ? _value.fileSizeBytes
                : fileSizeBytes // ignore: cast_nullable_to_non_nullable
                      as int?,
            warnings: null == warnings
                ? _value.warnings
                : warnings // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExtractAudioResultImplCopyWith<$Res>
    implements $ExtractAudioResultCopyWith<$Res> {
  factory _$$ExtractAudioResultImplCopyWith(
    _$ExtractAudioResultImpl value,
    $Res Function(_$ExtractAudioResultImpl) then,
  ) = __$$ExtractAudioResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String audioFileId,
    String audioFilePath,
    double? durationSeconds,
    int? fileSizeBytes,
    List<String> warnings,
  });
}

/// @nodoc
class __$$ExtractAudioResultImplCopyWithImpl<$Res>
    extends _$ExtractAudioResultCopyWithImpl<$Res, _$ExtractAudioResultImpl>
    implements _$$ExtractAudioResultImplCopyWith<$Res> {
  __$$ExtractAudioResultImplCopyWithImpl(
    _$ExtractAudioResultImpl _value,
    $Res Function(_$ExtractAudioResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExtractAudioResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioFileId = null,
    Object? audioFilePath = null,
    Object? durationSeconds = freezed,
    Object? fileSizeBytes = freezed,
    Object? warnings = null,
  }) {
    return _then(
      _$ExtractAudioResultImpl(
        audioFileId: null == audioFileId
            ? _value.audioFileId
            : audioFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        audioFilePath: null == audioFilePath
            ? _value.audioFilePath
            : audioFilePath // ignore: cast_nullable_to_non_nullable
                  as String,
        durationSeconds: freezed == durationSeconds
            ? _value.durationSeconds
            : durationSeconds // ignore: cast_nullable_to_non_nullable
                  as double?,
        fileSizeBytes: freezed == fileSizeBytes
            ? _value.fileSizeBytes
            : fileSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int?,
        warnings: null == warnings
            ? _value._warnings
            : warnings // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtractAudioResultImpl implements _ExtractAudioResult {
  const _$ExtractAudioResultImpl({
    required this.audioFileId,
    required this.audioFilePath,
    this.durationSeconds,
    this.fileSizeBytes,
    final List<String> warnings = const <String>[],
  }) : _warnings = warnings;

  factory _$ExtractAudioResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtractAudioResultImplFromJson(json);

  /// ID of the newly created audio file
  @override
  final String audioFileId;

  /// Path to the extracted audio file
  @override
  final String audioFilePath;

  /// Duration of the extracted audio in seconds
  @override
  final double? durationSeconds;

  /// Size of the extracted audio file in bytes
  @override
  final int? fileSizeBytes;

  /// Any warnings or additional info about the extraction
  final List<String> _warnings;

  /// Any warnings or additional info about the extraction
  @override
  @JsonKey()
  List<String> get warnings {
    if (_warnings is EqualUnmodifiableListView) return _warnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_warnings);
  }

  @override
  String toString() {
    return 'ExtractAudioResult(audioFileId: $audioFileId, audioFilePath: $audioFilePath, durationSeconds: $durationSeconds, fileSizeBytes: $fileSizeBytes, warnings: $warnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtractAudioResultImpl &&
            (identical(other.audioFileId, audioFileId) ||
                other.audioFileId == audioFileId) &&
            (identical(other.audioFilePath, audioFilePath) ||
                other.audioFilePath == audioFilePath) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.fileSizeBytes, fileSizeBytes) ||
                other.fileSizeBytes == fileSizeBytes) &&
            const DeepCollectionEquality().equals(other._warnings, _warnings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    audioFileId,
    audioFilePath,
    durationSeconds,
    fileSizeBytes,
    const DeepCollectionEquality().hash(_warnings),
  );

  /// Create a copy of ExtractAudioResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtractAudioResultImplCopyWith<_$ExtractAudioResultImpl> get copyWith =>
      __$$ExtractAudioResultImplCopyWithImpl<_$ExtractAudioResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtractAudioResultImplToJson(this);
  }
}

abstract class _ExtractAudioResult implements ExtractAudioResult {
  const factory _ExtractAudioResult({
    required final String audioFileId,
    required final String audioFilePath,
    final double? durationSeconds,
    final int? fileSizeBytes,
    final List<String> warnings,
  }) = _$ExtractAudioResultImpl;

  factory _ExtractAudioResult.fromJson(Map<String, dynamic> json) =
      _$ExtractAudioResultImpl.fromJson;

  /// ID of the newly created audio file
  @override
  String get audioFileId;

  /// Path to the extracted audio file
  @override
  String get audioFilePath;

  /// Duration of the extracted audio in seconds
  @override
  double? get durationSeconds;

  /// Size of the extracted audio file in bytes
  @override
  int? get fileSizeBytes;

  /// Any warnings or additional info about the extraction
  @override
  List<String> get warnings;

  /// Create a copy of ExtractAudioResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtractAudioResultImplCopyWith<_$ExtractAudioResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
