// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extract_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VideoSegment _$VideoSegmentFromJson(Map<String, dynamic> json) {
  return _VideoSegment.fromJson(json);
}

/// @nodoc
mixin _$VideoSegment {
  /// Start time of the segment in seconds
  double get startTime => throw _privateConstructorUsedError;

  /// End time of the segment in seconds
  double get endTime => throw _privateConstructorUsedError;

  /// Optional name for this segment
  String? get name => throw _privateConstructorUsedError;

  /// Optional output format/extension
  String? get outputFormat => throw _privateConstructorUsedError;

  /// Serializes this VideoSegment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoSegment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoSegmentCopyWith<VideoSegment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoSegmentCopyWith<$Res> {
  factory $VideoSegmentCopyWith(
    VideoSegment value,
    $Res Function(VideoSegment) then,
  ) = _$VideoSegmentCopyWithImpl<$Res, VideoSegment>;
  @useResult
  $Res call({
    double startTime,
    double endTime,
    String? name,
    String? outputFormat,
  });
}

/// @nodoc
class _$VideoSegmentCopyWithImpl<$Res, $Val extends VideoSegment>
    implements $VideoSegmentCopyWith<$Res> {
  _$VideoSegmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoSegment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? name = freezed,
    Object? outputFormat = freezed,
  }) {
    return _then(
      _value.copyWith(
            startTime: null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as double,
            endTime: null == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                      as double,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$VideoSegmentImplCopyWith<$Res>
    implements $VideoSegmentCopyWith<$Res> {
  factory _$$VideoSegmentImplCopyWith(
    _$VideoSegmentImpl value,
    $Res Function(_$VideoSegmentImpl) then,
  ) = __$$VideoSegmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double startTime,
    double endTime,
    String? name,
    String? outputFormat,
  });
}

/// @nodoc
class __$$VideoSegmentImplCopyWithImpl<$Res>
    extends _$VideoSegmentCopyWithImpl<$Res, _$VideoSegmentImpl>
    implements _$$VideoSegmentImplCopyWith<$Res> {
  __$$VideoSegmentImplCopyWithImpl(
    _$VideoSegmentImpl _value,
    $Res Function(_$VideoSegmentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VideoSegment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? name = freezed,
    Object? outputFormat = freezed,
  }) {
    return _then(
      _$VideoSegmentImpl(
        startTime: null == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as double,
        endTime: null == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as double,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
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
class _$VideoSegmentImpl implements _VideoSegment {
  const _$VideoSegmentImpl({
    required this.startTime,
    required this.endTime,
    this.name,
    this.outputFormat,
  });

  factory _$VideoSegmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoSegmentImplFromJson(json);

  /// Start time of the segment in seconds
  @override
  final double startTime;

  /// End time of the segment in seconds
  @override
  final double endTime;

  /// Optional name for this segment
  @override
  final String? name;

  /// Optional output format/extension
  @override
  final String? outputFormat;

  @override
  String toString() {
    return 'VideoSegment(startTime: $startTime, endTime: $endTime, name: $name, outputFormat: $outputFormat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoSegmentImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.outputFormat, outputFormat) ||
                other.outputFormat == outputFormat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startTime, endTime, name, outputFormat);

  /// Create a copy of VideoSegment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoSegmentImplCopyWith<_$VideoSegmentImpl> get copyWith =>
      __$$VideoSegmentImplCopyWithImpl<_$VideoSegmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoSegmentImplToJson(this);
  }
}

abstract class _VideoSegment implements VideoSegment {
  const factory _VideoSegment({
    required final double startTime,
    required final double endTime,
    final String? name,
    final String? outputFormat,
  }) = _$VideoSegmentImpl;

  factory _VideoSegment.fromJson(Map<String, dynamic> json) =
      _$VideoSegmentImpl.fromJson;

  /// Start time of the segment in seconds
  @override
  double get startTime;

  /// End time of the segment in seconds
  @override
  double get endTime;

  /// Optional name for this segment
  @override
  String? get name;

  /// Optional output format/extension
  @override
  String? get outputFormat;

  /// Create a copy of VideoSegment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoSegmentImplCopyWith<_$VideoSegmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtractVideoResult _$ExtractVideoResultFromJson(Map<String, dynamic> json) {
  return _ExtractVideoResult.fromJson(json);
}

/// @nodoc
mixin _$ExtractVideoResult {
  /// ID of the source video that was processed
  String get sourceVideoId => throw _privateConstructorUsedError;

  /// List of successfully extracted video clip entries
  List<FsEntry> get extractedClips => throw _privateConstructorUsedError;

  /// List of segments that failed to extract
  List<VideoSegment> get failedSegments => throw _privateConstructorUsedError;

  /// Total duration of extracted content in seconds
  double get totalExtractedDuration => throw _privateConstructorUsedError;

  /// Serializes this ExtractVideoResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtractVideoResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtractVideoResultCopyWith<ExtractVideoResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtractVideoResultCopyWith<$Res> {
  factory $ExtractVideoResultCopyWith(
    ExtractVideoResult value,
    $Res Function(ExtractVideoResult) then,
  ) = _$ExtractVideoResultCopyWithImpl<$Res, ExtractVideoResult>;
  @useResult
  $Res call({
    String sourceVideoId,
    List<FsEntry> extractedClips,
    List<VideoSegment> failedSegments,
    double totalExtractedDuration,
  });
}

/// @nodoc
class _$ExtractVideoResultCopyWithImpl<$Res, $Val extends ExtractVideoResult>
    implements $ExtractVideoResultCopyWith<$Res> {
  _$ExtractVideoResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtractVideoResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceVideoId = null,
    Object? extractedClips = null,
    Object? failedSegments = null,
    Object? totalExtractedDuration = null,
  }) {
    return _then(
      _value.copyWith(
            sourceVideoId: null == sourceVideoId
                ? _value.sourceVideoId
                : sourceVideoId // ignore: cast_nullable_to_non_nullable
                      as String,
            extractedClips: null == extractedClips
                ? _value.extractedClips
                : extractedClips // ignore: cast_nullable_to_non_nullable
                      as List<FsEntry>,
            failedSegments: null == failedSegments
                ? _value.failedSegments
                : failedSegments // ignore: cast_nullable_to_non_nullable
                      as List<VideoSegment>,
            totalExtractedDuration: null == totalExtractedDuration
                ? _value.totalExtractedDuration
                : totalExtractedDuration // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExtractVideoResultImplCopyWith<$Res>
    implements $ExtractVideoResultCopyWith<$Res> {
  factory _$$ExtractVideoResultImplCopyWith(
    _$ExtractVideoResultImpl value,
    $Res Function(_$ExtractVideoResultImpl) then,
  ) = __$$ExtractVideoResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sourceVideoId,
    List<FsEntry> extractedClips,
    List<VideoSegment> failedSegments,
    double totalExtractedDuration,
  });
}

/// @nodoc
class __$$ExtractVideoResultImplCopyWithImpl<$Res>
    extends _$ExtractVideoResultCopyWithImpl<$Res, _$ExtractVideoResultImpl>
    implements _$$ExtractVideoResultImplCopyWith<$Res> {
  __$$ExtractVideoResultImplCopyWithImpl(
    _$ExtractVideoResultImpl _value,
    $Res Function(_$ExtractVideoResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExtractVideoResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceVideoId = null,
    Object? extractedClips = null,
    Object? failedSegments = null,
    Object? totalExtractedDuration = null,
  }) {
    return _then(
      _$ExtractVideoResultImpl(
        sourceVideoId: null == sourceVideoId
            ? _value.sourceVideoId
            : sourceVideoId // ignore: cast_nullable_to_non_nullable
                  as String,
        extractedClips: null == extractedClips
            ? _value._extractedClips
            : extractedClips // ignore: cast_nullable_to_non_nullable
                  as List<FsEntry>,
        failedSegments: null == failedSegments
            ? _value._failedSegments
            : failedSegments // ignore: cast_nullable_to_non_nullable
                  as List<VideoSegment>,
        totalExtractedDuration: null == totalExtractedDuration
            ? _value.totalExtractedDuration
            : totalExtractedDuration // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtractVideoResultImpl implements _ExtractVideoResult {
  const _$ExtractVideoResultImpl({
    required this.sourceVideoId,
    final List<FsEntry> extractedClips = const <FsEntry>[],
    final List<VideoSegment> failedSegments = const <VideoSegment>[],
    this.totalExtractedDuration = 0.0,
  }) : _extractedClips = extractedClips,
       _failedSegments = failedSegments;

  factory _$ExtractVideoResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtractVideoResultImplFromJson(json);

  /// ID of the source video that was processed
  @override
  final String sourceVideoId;

  /// List of successfully extracted video clip entries
  final List<FsEntry> _extractedClips;

  /// List of successfully extracted video clip entries
  @override
  @JsonKey()
  List<FsEntry> get extractedClips {
    if (_extractedClips is EqualUnmodifiableListView) return _extractedClips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extractedClips);
  }

  /// List of segments that failed to extract
  final List<VideoSegment> _failedSegments;

  /// List of segments that failed to extract
  @override
  @JsonKey()
  List<VideoSegment> get failedSegments {
    if (_failedSegments is EqualUnmodifiableListView) return _failedSegments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_failedSegments);
  }

  /// Total duration of extracted content in seconds
  @override
  @JsonKey()
  final double totalExtractedDuration;

  @override
  String toString() {
    return 'ExtractVideoResult(sourceVideoId: $sourceVideoId, extractedClips: $extractedClips, failedSegments: $failedSegments, totalExtractedDuration: $totalExtractedDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtractVideoResultImpl &&
            (identical(other.sourceVideoId, sourceVideoId) ||
                other.sourceVideoId == sourceVideoId) &&
            const DeepCollectionEquality().equals(
              other._extractedClips,
              _extractedClips,
            ) &&
            const DeepCollectionEquality().equals(
              other._failedSegments,
              _failedSegments,
            ) &&
            (identical(other.totalExtractedDuration, totalExtractedDuration) ||
                other.totalExtractedDuration == totalExtractedDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sourceVideoId,
    const DeepCollectionEquality().hash(_extractedClips),
    const DeepCollectionEquality().hash(_failedSegments),
    totalExtractedDuration,
  );

  /// Create a copy of ExtractVideoResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtractVideoResultImplCopyWith<_$ExtractVideoResultImpl> get copyWith =>
      __$$ExtractVideoResultImplCopyWithImpl<_$ExtractVideoResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtractVideoResultImplToJson(this);
  }
}

abstract class _ExtractVideoResult implements ExtractVideoResult {
  const factory _ExtractVideoResult({
    required final String sourceVideoId,
    final List<FsEntry> extractedClips,
    final List<VideoSegment> failedSegments,
    final double totalExtractedDuration,
  }) = _$ExtractVideoResultImpl;

  factory _ExtractVideoResult.fromJson(Map<String, dynamic> json) =
      _$ExtractVideoResultImpl.fromJson;

  /// ID of the source video that was processed
  @override
  String get sourceVideoId;

  /// List of successfully extracted video clip entries
  @override
  List<FsEntry> get extractedClips;

  /// List of segments that failed to extract
  @override
  List<VideoSegment> get failedSegments;

  /// Total duration of extracted content in seconds
  @override
  double get totalExtractedDuration;

  /// Create a copy of ExtractVideoResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtractVideoResultImplCopyWith<_$ExtractVideoResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtractVideoTask _$ExtractVideoTaskFromJson(Map<String, dynamic> json) {
  return _ExtractVideoTask.fromJson(json);
}

/// @nodoc
mixin _$ExtractVideoTask {
  /// ID of the source video file to extract segments from
  String get sourceVideoId => throw _privateConstructorUsedError;

  /// Target folder where extracted clips will be placed
  String get targetFolderId => throw _privateConstructorUsedError;

  /// List of video segments to extract
  List<VideoSegment> get segments => throw _privateConstructorUsedError;

  /// Optional base name for extracted clips (will be appended with segment info)
  String? get baseName => throw _privateConstructorUsedError;

  /// Output video format/extension (e.g., 'mp4', 'avi')
  String get outputFormat => throw _privateConstructorUsedError;

  /// Quality setting for extracted clips
  String get quality => throw _privateConstructorUsedError;

  /// Serializes this ExtractVideoTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtractVideoTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtractVideoTaskCopyWith<ExtractVideoTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtractVideoTaskCopyWith<$Res> {
  factory $ExtractVideoTaskCopyWith(
    ExtractVideoTask value,
    $Res Function(ExtractVideoTask) then,
  ) = _$ExtractVideoTaskCopyWithImpl<$Res, ExtractVideoTask>;
  @useResult
  $Res call({
    String sourceVideoId,
    String targetFolderId,
    List<VideoSegment> segments,
    String? baseName,
    String outputFormat,
    String quality,
  });
}

/// @nodoc
class _$ExtractVideoTaskCopyWithImpl<$Res, $Val extends ExtractVideoTask>
    implements $ExtractVideoTaskCopyWith<$Res> {
  _$ExtractVideoTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtractVideoTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceVideoId = null,
    Object? targetFolderId = null,
    Object? segments = null,
    Object? baseName = freezed,
    Object? outputFormat = null,
    Object? quality = null,
  }) {
    return _then(
      _value.copyWith(
            sourceVideoId: null == sourceVideoId
                ? _value.sourceVideoId
                : sourceVideoId // ignore: cast_nullable_to_non_nullable
                      as String,
            targetFolderId: null == targetFolderId
                ? _value.targetFolderId
                : targetFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            segments: null == segments
                ? _value.segments
                : segments // ignore: cast_nullable_to_non_nullable
                      as List<VideoSegment>,
            baseName: freezed == baseName
                ? _value.baseName
                : baseName // ignore: cast_nullable_to_non_nullable
                      as String?,
            outputFormat: null == outputFormat
                ? _value.outputFormat
                : outputFormat // ignore: cast_nullable_to_non_nullable
                      as String,
            quality: null == quality
                ? _value.quality
                : quality // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExtractVideoTaskImplCopyWith<$Res>
    implements $ExtractVideoTaskCopyWith<$Res> {
  factory _$$ExtractVideoTaskImplCopyWith(
    _$ExtractVideoTaskImpl value,
    $Res Function(_$ExtractVideoTaskImpl) then,
  ) = __$$ExtractVideoTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sourceVideoId,
    String targetFolderId,
    List<VideoSegment> segments,
    String? baseName,
    String outputFormat,
    String quality,
  });
}

/// @nodoc
class __$$ExtractVideoTaskImplCopyWithImpl<$Res>
    extends _$ExtractVideoTaskCopyWithImpl<$Res, _$ExtractVideoTaskImpl>
    implements _$$ExtractVideoTaskImplCopyWith<$Res> {
  __$$ExtractVideoTaskImplCopyWithImpl(
    _$ExtractVideoTaskImpl _value,
    $Res Function(_$ExtractVideoTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExtractVideoTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceVideoId = null,
    Object? targetFolderId = null,
    Object? segments = null,
    Object? baseName = freezed,
    Object? outputFormat = null,
    Object? quality = null,
  }) {
    return _then(
      _$ExtractVideoTaskImpl(
        sourceVideoId: null == sourceVideoId
            ? _value.sourceVideoId
            : sourceVideoId // ignore: cast_nullable_to_non_nullable
                  as String,
        targetFolderId: null == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        segments: null == segments
            ? _value._segments
            : segments // ignore: cast_nullable_to_non_nullable
                  as List<VideoSegment>,
        baseName: freezed == baseName
            ? _value.baseName
            : baseName // ignore: cast_nullable_to_non_nullable
                  as String?,
        outputFormat: null == outputFormat
            ? _value.outputFormat
            : outputFormat // ignore: cast_nullable_to_non_nullable
                  as String,
        quality: null == quality
            ? _value.quality
            : quality // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtractVideoTaskImpl extends _ExtractVideoTask {
  const _$ExtractVideoTaskImpl({
    required this.sourceVideoId,
    required this.targetFolderId,
    required final List<VideoSegment> segments,
    this.baseName,
    this.outputFormat = 'mp4',
    this.quality = 'medium',
  }) : _segments = segments,
       super._();

  factory _$ExtractVideoTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtractVideoTaskImplFromJson(json);

  /// ID of the source video file to extract segments from
  @override
  final String sourceVideoId;

  /// Target folder where extracted clips will be placed
  @override
  final String targetFolderId;

  /// List of video segments to extract
  final List<VideoSegment> _segments;

  /// List of video segments to extract
  @override
  List<VideoSegment> get segments {
    if (_segments is EqualUnmodifiableListView) return _segments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_segments);
  }

  /// Optional base name for extracted clips (will be appended with segment info)
  @override
  final String? baseName;

  /// Output video format/extension (e.g., 'mp4', 'avi')
  @override
  @JsonKey()
  final String outputFormat;

  /// Quality setting for extracted clips
  @override
  @JsonKey()
  final String quality;

  @override
  String toString() {
    return 'ExtractVideoTask(sourceVideoId: $sourceVideoId, targetFolderId: $targetFolderId, segments: $segments, baseName: $baseName, outputFormat: $outputFormat, quality: $quality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtractVideoTaskImpl &&
            (identical(other.sourceVideoId, sourceVideoId) ||
                other.sourceVideoId == sourceVideoId) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            const DeepCollectionEquality().equals(other._segments, _segments) &&
            (identical(other.baseName, baseName) ||
                other.baseName == baseName) &&
            (identical(other.outputFormat, outputFormat) ||
                other.outputFormat == outputFormat) &&
            (identical(other.quality, quality) || other.quality == quality));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sourceVideoId,
    targetFolderId,
    const DeepCollectionEquality().hash(_segments),
    baseName,
    outputFormat,
    quality,
  );

  /// Create a copy of ExtractVideoTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtractVideoTaskImplCopyWith<_$ExtractVideoTaskImpl> get copyWith =>
      __$$ExtractVideoTaskImplCopyWithImpl<_$ExtractVideoTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtractVideoTaskImplToJson(this);
  }
}

abstract class _ExtractVideoTask extends ExtractVideoTask {
  const factory _ExtractVideoTask({
    required final String sourceVideoId,
    required final String targetFolderId,
    required final List<VideoSegment> segments,
    final String? baseName,
    final String outputFormat,
    final String quality,
  }) = _$ExtractVideoTaskImpl;
  const _ExtractVideoTask._() : super._();

  factory _ExtractVideoTask.fromJson(Map<String, dynamic> json) =
      _$ExtractVideoTaskImpl.fromJson;

  /// ID of the source video file to extract segments from
  @override
  String get sourceVideoId;

  /// Target folder where extracted clips will be placed
  @override
  String get targetFolderId;

  /// List of video segments to extract
  @override
  List<VideoSegment> get segments;

  /// Optional base name for extracted clips (will be appended with segment info)
  @override
  String? get baseName;

  /// Output video format/extension (e.g., 'mp4', 'avi')
  @override
  String get outputFormat;

  /// Quality setting for extracted clips
  @override
  String get quality;

  /// Create a copy of ExtractVideoTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtractVideoTaskImplCopyWith<_$ExtractVideoTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
