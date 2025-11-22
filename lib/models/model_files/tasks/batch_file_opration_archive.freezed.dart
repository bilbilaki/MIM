// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'batch_file_opration_archive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BatchArchiveOperationResult _$BatchArchiveOperationResultFromJson(
  Map<String, dynamic> json,
) {
  return _BatchArchiveOperationResult.fromJson(json);
}

/// @nodoc
mixin _$BatchArchiveOperationResult {
  /// The source entry IDs that were archived
  List<String> get sourceEntryIds => throw _privateConstructorUsedError;

  /// The ID of the created archive file, null if operation failed
  String? get archiveId => throw _privateConstructorUsedError;

  /// Whether the operation succeeded
  bool get success => throw _privateConstructorUsedError;

  /// Error message if operation failed
  String? get error => throw _privateConstructorUsedError;

  /// Size of the created archive in bytes
  int? get archiveSizeBytes => throw _privateConstructorUsedError;

  /// Serializes this BatchArchiveOperationResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchArchiveOperationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchArchiveOperationResultCopyWith<BatchArchiveOperationResult>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchArchiveOperationResultCopyWith<$Res> {
  factory $BatchArchiveOperationResultCopyWith(
    BatchArchiveOperationResult value,
    $Res Function(BatchArchiveOperationResult) then,
  ) =
      _$BatchArchiveOperationResultCopyWithImpl<
        $Res,
        BatchArchiveOperationResult
      >;
  @useResult
  $Res call({
    List<String> sourceEntryIds,
    String? archiveId,
    bool success,
    String? error,
    int? archiveSizeBytes,
  });
}

/// @nodoc
class _$BatchArchiveOperationResultCopyWithImpl<
  $Res,
  $Val extends BatchArchiveOperationResult
>
    implements $BatchArchiveOperationResultCopyWith<$Res> {
  _$BatchArchiveOperationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchArchiveOperationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceEntryIds = null,
    Object? archiveId = freezed,
    Object? success = null,
    Object? error = freezed,
    Object? archiveSizeBytes = freezed,
  }) {
    return _then(
      _value.copyWith(
            sourceEntryIds: null == sourceEntryIds
                ? _value.sourceEntryIds
                : sourceEntryIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            archiveId: freezed == archiveId
                ? _value.archiveId
                : archiveId // ignore: cast_nullable_to_non_nullable
                      as String?,
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            archiveSizeBytes: freezed == archiveSizeBytes
                ? _value.archiveSizeBytes
                : archiveSizeBytes // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BatchArchiveOperationResultImplCopyWith<$Res>
    implements $BatchArchiveOperationResultCopyWith<$Res> {
  factory _$$BatchArchiveOperationResultImplCopyWith(
    _$BatchArchiveOperationResultImpl value,
    $Res Function(_$BatchArchiveOperationResultImpl) then,
  ) = __$$BatchArchiveOperationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> sourceEntryIds,
    String? archiveId,
    bool success,
    String? error,
    int? archiveSizeBytes,
  });
}

/// @nodoc
class __$$BatchArchiveOperationResultImplCopyWithImpl<$Res>
    extends
        _$BatchArchiveOperationResultCopyWithImpl<
          $Res,
          _$BatchArchiveOperationResultImpl
        >
    implements _$$BatchArchiveOperationResultImplCopyWith<$Res> {
  __$$BatchArchiveOperationResultImplCopyWithImpl(
    _$BatchArchiveOperationResultImpl _value,
    $Res Function(_$BatchArchiveOperationResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchArchiveOperationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceEntryIds = null,
    Object? archiveId = freezed,
    Object? success = null,
    Object? error = freezed,
    Object? archiveSizeBytes = freezed,
  }) {
    return _then(
      _$BatchArchiveOperationResultImpl(
        sourceEntryIds: null == sourceEntryIds
            ? _value._sourceEntryIds
            : sourceEntryIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        archiveId: freezed == archiveId
            ? _value.archiveId
            : archiveId // ignore: cast_nullable_to_non_nullable
                  as String?,
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        archiveSizeBytes: freezed == archiveSizeBytes
            ? _value.archiveSizeBytes
            : archiveSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchArchiveOperationResultImpl
    implements _BatchArchiveOperationResult {
  const _$BatchArchiveOperationResultImpl({
    required final List<String> sourceEntryIds,
    this.archiveId,
    required this.success,
    this.error,
    this.archiveSizeBytes,
  }) : _sourceEntryIds = sourceEntryIds;

  factory _$BatchArchiveOperationResultImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$BatchArchiveOperationResultImplFromJson(json);

  /// The source entry IDs that were archived
  final List<String> _sourceEntryIds;

  /// The source entry IDs that were archived
  @override
  List<String> get sourceEntryIds {
    if (_sourceEntryIds is EqualUnmodifiableListView) return _sourceEntryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sourceEntryIds);
  }

  /// The ID of the created archive file, null if operation failed
  @override
  final String? archiveId;

  /// Whether the operation succeeded
  @override
  final bool success;

  /// Error message if operation failed
  @override
  final String? error;

  /// Size of the created archive in bytes
  @override
  final int? archiveSizeBytes;

  @override
  String toString() {
    return 'BatchArchiveOperationResult(sourceEntryIds: $sourceEntryIds, archiveId: $archiveId, success: $success, error: $error, archiveSizeBytes: $archiveSizeBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchArchiveOperationResultImpl &&
            const DeepCollectionEquality().equals(
              other._sourceEntryIds,
              _sourceEntryIds,
            ) &&
            (identical(other.archiveId, archiveId) ||
                other.archiveId == archiveId) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.archiveSizeBytes, archiveSizeBytes) ||
                other.archiveSizeBytes == archiveSizeBytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_sourceEntryIds),
    archiveId,
    success,
    error,
    archiveSizeBytes,
  );

  /// Create a copy of BatchArchiveOperationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchArchiveOperationResultImplCopyWith<_$BatchArchiveOperationResultImpl>
  get copyWith =>
      __$$BatchArchiveOperationResultImplCopyWithImpl<
        _$BatchArchiveOperationResultImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchArchiveOperationResultImplToJson(this);
  }
}

abstract class _BatchArchiveOperationResult
    implements BatchArchiveOperationResult {
  const factory _BatchArchiveOperationResult({
    required final List<String> sourceEntryIds,
    final String? archiveId,
    required final bool success,
    final String? error,
    final int? archiveSizeBytes,
  }) = _$BatchArchiveOperationResultImpl;

  factory _BatchArchiveOperationResult.fromJson(Map<String, dynamic> json) =
      _$BatchArchiveOperationResultImpl.fromJson;

  /// The source entry IDs that were archived
  @override
  List<String> get sourceEntryIds;

  /// The ID of the created archive file, null if operation failed
  @override
  String? get archiveId;

  /// Whether the operation succeeded
  @override
  bool get success;

  /// Error message if operation failed
  @override
  String? get error;

  /// Size of the created archive in bytes
  @override
  int? get archiveSizeBytes;

  /// Create a copy of BatchArchiveOperationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchArchiveOperationResultImplCopyWith<_$BatchArchiveOperationResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}

BatchFileArchiveResult _$BatchFileArchiveResultFromJson(
  Map<String, dynamic> json,
) {
  return _BatchFileArchiveResult.fromJson(json);
}

/// @nodoc
mixin _$BatchFileArchiveResult {
  /// Results for each individual archive operation
  List<BatchArchiveOperationResult> get operationResults =>
      throw _privateConstructorUsedError;

  /// Total number of operations that succeeded
  int get successCount => throw _privateConstructorUsedError;

  /// Total number of operations that failed
  int get failureCount => throw _privateConstructorUsedError;

  /// Total size of all created archives in bytes
  int get totalArchiveSizeBytes => throw _privateConstructorUsedError;

  /// Serializes this BatchFileArchiveResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchFileArchiveResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchFileArchiveResultCopyWith<BatchFileArchiveResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchFileArchiveResultCopyWith<$Res> {
  factory $BatchFileArchiveResultCopyWith(
    BatchFileArchiveResult value,
    $Res Function(BatchFileArchiveResult) then,
  ) = _$BatchFileArchiveResultCopyWithImpl<$Res, BatchFileArchiveResult>;
  @useResult
  $Res call({
    List<BatchArchiveOperationResult> operationResults,
    int successCount,
    int failureCount,
    int totalArchiveSizeBytes,
  });
}

/// @nodoc
class _$BatchFileArchiveResultCopyWithImpl<
  $Res,
  $Val extends BatchFileArchiveResult
>
    implements $BatchFileArchiveResultCopyWith<$Res> {
  _$BatchFileArchiveResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchFileArchiveResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operationResults = null,
    Object? successCount = null,
    Object? failureCount = null,
    Object? totalArchiveSizeBytes = null,
  }) {
    return _then(
      _value.copyWith(
            operationResults: null == operationResults
                ? _value.operationResults
                : operationResults // ignore: cast_nullable_to_non_nullable
                      as List<BatchArchiveOperationResult>,
            successCount: null == successCount
                ? _value.successCount
                : successCount // ignore: cast_nullable_to_non_nullable
                      as int,
            failureCount: null == failureCount
                ? _value.failureCount
                : failureCount // ignore: cast_nullable_to_non_nullable
                      as int,
            totalArchiveSizeBytes: null == totalArchiveSizeBytes
                ? _value.totalArchiveSizeBytes
                : totalArchiveSizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BatchFileArchiveResultImplCopyWith<$Res>
    implements $BatchFileArchiveResultCopyWith<$Res> {
  factory _$$BatchFileArchiveResultImplCopyWith(
    _$BatchFileArchiveResultImpl value,
    $Res Function(_$BatchFileArchiveResultImpl) then,
  ) = __$$BatchFileArchiveResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<BatchArchiveOperationResult> operationResults,
    int successCount,
    int failureCount,
    int totalArchiveSizeBytes,
  });
}

/// @nodoc
class __$$BatchFileArchiveResultImplCopyWithImpl<$Res>
    extends
        _$BatchFileArchiveResultCopyWithImpl<$Res, _$BatchFileArchiveResultImpl>
    implements _$$BatchFileArchiveResultImplCopyWith<$Res> {
  __$$BatchFileArchiveResultImplCopyWithImpl(
    _$BatchFileArchiveResultImpl _value,
    $Res Function(_$BatchFileArchiveResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchFileArchiveResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operationResults = null,
    Object? successCount = null,
    Object? failureCount = null,
    Object? totalArchiveSizeBytes = null,
  }) {
    return _then(
      _$BatchFileArchiveResultImpl(
        operationResults: null == operationResults
            ? _value._operationResults
            : operationResults // ignore: cast_nullable_to_non_nullable
                  as List<BatchArchiveOperationResult>,
        successCount: null == successCount
            ? _value.successCount
            : successCount // ignore: cast_nullable_to_non_nullable
                  as int,
        failureCount: null == failureCount
            ? _value.failureCount
            : failureCount // ignore: cast_nullable_to_non_nullable
                  as int,
        totalArchiveSizeBytes: null == totalArchiveSizeBytes
            ? _value.totalArchiveSizeBytes
            : totalArchiveSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchFileArchiveResultImpl implements _BatchFileArchiveResult {
  const _$BatchFileArchiveResultImpl({
    required final List<BatchArchiveOperationResult> operationResults,
    this.successCount = 0,
    this.failureCount = 0,
    this.totalArchiveSizeBytes = 0,
  }) : _operationResults = operationResults;

  factory _$BatchFileArchiveResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchFileArchiveResultImplFromJson(json);

  /// Results for each individual archive operation
  final List<BatchArchiveOperationResult> _operationResults;

  /// Results for each individual archive operation
  @override
  List<BatchArchiveOperationResult> get operationResults {
    if (_operationResults is EqualUnmodifiableListView)
      return _operationResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_operationResults);
  }

  /// Total number of operations that succeeded
  @override
  @JsonKey()
  final int successCount;

  /// Total number of operations that failed
  @override
  @JsonKey()
  final int failureCount;

  /// Total size of all created archives in bytes
  @override
  @JsonKey()
  final int totalArchiveSizeBytes;

  @override
  String toString() {
    return 'BatchFileArchiveResult(operationResults: $operationResults, successCount: $successCount, failureCount: $failureCount, totalArchiveSizeBytes: $totalArchiveSizeBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchFileArchiveResultImpl &&
            const DeepCollectionEquality().equals(
              other._operationResults,
              _operationResults,
            ) &&
            (identical(other.successCount, successCount) ||
                other.successCount == successCount) &&
            (identical(other.failureCount, failureCount) ||
                other.failureCount == failureCount) &&
            (identical(other.totalArchiveSizeBytes, totalArchiveSizeBytes) ||
                other.totalArchiveSizeBytes == totalArchiveSizeBytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_operationResults),
    successCount,
    failureCount,
    totalArchiveSizeBytes,
  );

  /// Create a copy of BatchFileArchiveResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchFileArchiveResultImplCopyWith<_$BatchFileArchiveResultImpl>
  get copyWith =>
      __$$BatchFileArchiveResultImplCopyWithImpl<_$BatchFileArchiveResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchFileArchiveResultImplToJson(this);
  }
}

abstract class _BatchFileArchiveResult implements BatchFileArchiveResult {
  const factory _BatchFileArchiveResult({
    required final List<BatchArchiveOperationResult> operationResults,
    final int successCount,
    final int failureCount,
    final int totalArchiveSizeBytes,
  }) = _$BatchFileArchiveResultImpl;

  factory _BatchFileArchiveResult.fromJson(Map<String, dynamic> json) =
      _$BatchFileArchiveResultImpl.fromJson;

  /// Results for each individual archive operation
  @override
  List<BatchArchiveOperationResult> get operationResults;

  /// Total number of operations that succeeded
  @override
  int get successCount;

  /// Total number of operations that failed
  @override
  int get failureCount;

  /// Total size of all created archives in bytes
  @override
  int get totalArchiveSizeBytes;

  /// Create a copy of BatchFileArchiveResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchFileArchiveResultImplCopyWith<_$BatchFileArchiveResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ArchiveOperationConfig _$ArchiveOperationConfigFromJson(
  Map<String, dynamic> json,
) {
  return _ArchiveOperationConfig.fromJson(json);
}

/// @nodoc
mixin _$ArchiveOperationConfig {
  /// IDs of entries to archive together
  List<String> get sourceEntryIds => throw _privateConstructorUsedError;

  /// Target folder ID where archive will be created
  String get targetFolderId => throw _privateConstructorUsedError;

  /// Name for the archive file (without extension)
  String get archiveName => throw _privateConstructorUsedError;

  /// Archive format (zip, tar, etc.)
  String get format => throw _privateConstructorUsedError;

  /// Whether to include folder structure in archive
  bool get preserveStructure => throw _privateConstructorUsedError;

  /// Compression level (0-9, where 0 = no compression)
  int get compressionLevel => throw _privateConstructorUsedError;

  /// Serializes this ArchiveOperationConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArchiveOperationConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArchiveOperationConfigCopyWith<ArchiveOperationConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchiveOperationConfigCopyWith<$Res> {
  factory $ArchiveOperationConfigCopyWith(
    ArchiveOperationConfig value,
    $Res Function(ArchiveOperationConfig) then,
  ) = _$ArchiveOperationConfigCopyWithImpl<$Res, ArchiveOperationConfig>;
  @useResult
  $Res call({
    List<String> sourceEntryIds,
    String targetFolderId,
    String archiveName,
    String format,
    bool preserveStructure,
    int compressionLevel,
  });
}

/// @nodoc
class _$ArchiveOperationConfigCopyWithImpl<
  $Res,
  $Val extends ArchiveOperationConfig
>
    implements $ArchiveOperationConfigCopyWith<$Res> {
  _$ArchiveOperationConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArchiveOperationConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceEntryIds = null,
    Object? targetFolderId = null,
    Object? archiveName = null,
    Object? format = null,
    Object? preserveStructure = null,
    Object? compressionLevel = null,
  }) {
    return _then(
      _value.copyWith(
            sourceEntryIds: null == sourceEntryIds
                ? _value.sourceEntryIds
                : sourceEntryIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            targetFolderId: null == targetFolderId
                ? _value.targetFolderId
                : targetFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            archiveName: null == archiveName
                ? _value.archiveName
                : archiveName // ignore: cast_nullable_to_non_nullable
                      as String,
            format: null == format
                ? _value.format
                : format // ignore: cast_nullable_to_non_nullable
                      as String,
            preserveStructure: null == preserveStructure
                ? _value.preserveStructure
                : preserveStructure // ignore: cast_nullable_to_non_nullable
                      as bool,
            compressionLevel: null == compressionLevel
                ? _value.compressionLevel
                : compressionLevel // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArchiveOperationConfigImplCopyWith<$Res>
    implements $ArchiveOperationConfigCopyWith<$Res> {
  factory _$$ArchiveOperationConfigImplCopyWith(
    _$ArchiveOperationConfigImpl value,
    $Res Function(_$ArchiveOperationConfigImpl) then,
  ) = __$$ArchiveOperationConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> sourceEntryIds,
    String targetFolderId,
    String archiveName,
    String format,
    bool preserveStructure,
    int compressionLevel,
  });
}

/// @nodoc
class __$$ArchiveOperationConfigImplCopyWithImpl<$Res>
    extends
        _$ArchiveOperationConfigCopyWithImpl<$Res, _$ArchiveOperationConfigImpl>
    implements _$$ArchiveOperationConfigImplCopyWith<$Res> {
  __$$ArchiveOperationConfigImplCopyWithImpl(
    _$ArchiveOperationConfigImpl _value,
    $Res Function(_$ArchiveOperationConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchiveOperationConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceEntryIds = null,
    Object? targetFolderId = null,
    Object? archiveName = null,
    Object? format = null,
    Object? preserveStructure = null,
    Object? compressionLevel = null,
  }) {
    return _then(
      _$ArchiveOperationConfigImpl(
        sourceEntryIds: null == sourceEntryIds
            ? _value._sourceEntryIds
            : sourceEntryIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        targetFolderId: null == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        archiveName: null == archiveName
            ? _value.archiveName
            : archiveName // ignore: cast_nullable_to_non_nullable
                  as String,
        format: null == format
            ? _value.format
            : format // ignore: cast_nullable_to_non_nullable
                  as String,
        preserveStructure: null == preserveStructure
            ? _value.preserveStructure
            : preserveStructure // ignore: cast_nullable_to_non_nullable
                  as bool,
        compressionLevel: null == compressionLevel
            ? _value.compressionLevel
            : compressionLevel // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ArchiveOperationConfigImpl implements _ArchiveOperationConfig {
  const _$ArchiveOperationConfigImpl({
    required final List<String> sourceEntryIds,
    required this.targetFolderId,
    required this.archiveName,
    this.format = 'zip',
    this.preserveStructure = true,
    this.compressionLevel = 6,
  }) : _sourceEntryIds = sourceEntryIds;

  factory _$ArchiveOperationConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArchiveOperationConfigImplFromJson(json);

  /// IDs of entries to archive together
  final List<String> _sourceEntryIds;

  /// IDs of entries to archive together
  @override
  List<String> get sourceEntryIds {
    if (_sourceEntryIds is EqualUnmodifiableListView) return _sourceEntryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sourceEntryIds);
  }

  /// Target folder ID where archive will be created
  @override
  final String targetFolderId;

  /// Name for the archive file (without extension)
  @override
  final String archiveName;

  /// Archive format (zip, tar, etc.)
  @override
  @JsonKey()
  final String format;

  /// Whether to include folder structure in archive
  @override
  @JsonKey()
  final bool preserveStructure;

  /// Compression level (0-9, where 0 = no compression)
  @override
  @JsonKey()
  final int compressionLevel;

  @override
  String toString() {
    return 'ArchiveOperationConfig(sourceEntryIds: $sourceEntryIds, targetFolderId: $targetFolderId, archiveName: $archiveName, format: $format, preserveStructure: $preserveStructure, compressionLevel: $compressionLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArchiveOperationConfigImpl &&
            const DeepCollectionEquality().equals(
              other._sourceEntryIds,
              _sourceEntryIds,
            ) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            (identical(other.archiveName, archiveName) ||
                other.archiveName == archiveName) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.preserveStructure, preserveStructure) ||
                other.preserveStructure == preserveStructure) &&
            (identical(other.compressionLevel, compressionLevel) ||
                other.compressionLevel == compressionLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_sourceEntryIds),
    targetFolderId,
    archiveName,
    format,
    preserveStructure,
    compressionLevel,
  );

  /// Create a copy of ArchiveOperationConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArchiveOperationConfigImplCopyWith<_$ArchiveOperationConfigImpl>
  get copyWith =>
      __$$ArchiveOperationConfigImplCopyWithImpl<_$ArchiveOperationConfigImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ArchiveOperationConfigImplToJson(this);
  }
}

abstract class _ArchiveOperationConfig implements ArchiveOperationConfig {
  const factory _ArchiveOperationConfig({
    required final List<String> sourceEntryIds,
    required final String targetFolderId,
    required final String archiveName,
    final String format,
    final bool preserveStructure,
    final int compressionLevel,
  }) = _$ArchiveOperationConfigImpl;

  factory _ArchiveOperationConfig.fromJson(Map<String, dynamic> json) =
      _$ArchiveOperationConfigImpl.fromJson;

  /// IDs of entries to archive together
  @override
  List<String> get sourceEntryIds;

  /// Target folder ID where archive will be created
  @override
  String get targetFolderId;

  /// Name for the archive file (without extension)
  @override
  String get archiveName;

  /// Archive format (zip, tar, etc.)
  @override
  String get format;

  /// Whether to include folder structure in archive
  @override
  bool get preserveStructure;

  /// Compression level (0-9, where 0 = no compression)
  @override
  int get compressionLevel;

  /// Create a copy of ArchiveOperationConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArchiveOperationConfigImplCopyWith<_$ArchiveOperationConfigImpl>
  get copyWith => throw _privateConstructorUsedError;
}
