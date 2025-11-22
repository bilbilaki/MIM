// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'archiv_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ArchiveFileTask _$ArchiveFileTaskFromJson(Map<String, dynamic> json) {
  return _ArchiveFileTask.fromJson(json);
}

/// @nodoc
mixin _$ArchiveFileTask {
  /// IDs of the source entries to be archived
  List<String> get sourceEntryIds => throw _privateConstructorUsedError;

  /// ID of the target folder where the archive will be created
  String get targetFolderId => throw _privateConstructorUsedError;

  /// Optional name for the archive file (without extension)
  String? get archiveName => throw _privateConstructorUsedError;

  /// Archive format (e.g., 'zip', 'tar', '7z')
  String get format => throw _privateConstructorUsedError;

  /// Whether to preserve folder structure in the archive
  bool get preserveStructure => throw _privateConstructorUsedError;

  /// Compression level (0-9, where 0 = no compression, 9 = max compression)
  int get compressionLevel => throw _privateConstructorUsedError;

  /// Serializes this ArchiveFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArchiveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArchiveFileTaskCopyWith<ArchiveFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchiveFileTaskCopyWith<$Res> {
  factory $ArchiveFileTaskCopyWith(
    ArchiveFileTask value,
    $Res Function(ArchiveFileTask) then,
  ) = _$ArchiveFileTaskCopyWithImpl<$Res, ArchiveFileTask>;
  @useResult
  $Res call({
    List<String> sourceEntryIds,
    String targetFolderId,
    String? archiveName,
    String format,
    bool preserveStructure,
    int compressionLevel,
  });
}

/// @nodoc
class _$ArchiveFileTaskCopyWithImpl<$Res, $Val extends ArchiveFileTask>
    implements $ArchiveFileTaskCopyWith<$Res> {
  _$ArchiveFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArchiveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceEntryIds = null,
    Object? targetFolderId = null,
    Object? archiveName = freezed,
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
            archiveName: freezed == archiveName
                ? _value.archiveName
                : archiveName // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$ArchiveFileTaskImplCopyWith<$Res>
    implements $ArchiveFileTaskCopyWith<$Res> {
  factory _$$ArchiveFileTaskImplCopyWith(
    _$ArchiveFileTaskImpl value,
    $Res Function(_$ArchiveFileTaskImpl) then,
  ) = __$$ArchiveFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> sourceEntryIds,
    String targetFolderId,
    String? archiveName,
    String format,
    bool preserveStructure,
    int compressionLevel,
  });
}

/// @nodoc
class __$$ArchiveFileTaskImplCopyWithImpl<$Res>
    extends _$ArchiveFileTaskCopyWithImpl<$Res, _$ArchiveFileTaskImpl>
    implements _$$ArchiveFileTaskImplCopyWith<$Res> {
  __$$ArchiveFileTaskImplCopyWithImpl(
    _$ArchiveFileTaskImpl _value,
    $Res Function(_$ArchiveFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchiveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceEntryIds = null,
    Object? targetFolderId = null,
    Object? archiveName = freezed,
    Object? format = null,
    Object? preserveStructure = null,
    Object? compressionLevel = null,
  }) {
    return _then(
      _$ArchiveFileTaskImpl(
        sourceEntryIds: null == sourceEntryIds
            ? _value._sourceEntryIds
            : sourceEntryIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        targetFolderId: null == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        archiveName: freezed == archiveName
            ? _value.archiveName
            : archiveName // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$ArchiveFileTaskImpl extends _ArchiveFileTask {
  const _$ArchiveFileTaskImpl({
    required final List<String> sourceEntryIds,
    required this.targetFolderId,
    this.archiveName,
    this.format = 'zip',
    this.preserveStructure = true,
    this.compressionLevel = 6,
  }) : _sourceEntryIds = sourceEntryIds,
       super._();

  factory _$ArchiveFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArchiveFileTaskImplFromJson(json);

  /// IDs of the source entries to be archived
  final List<String> _sourceEntryIds;

  /// IDs of the source entries to be archived
  @override
  List<String> get sourceEntryIds {
    if (_sourceEntryIds is EqualUnmodifiableListView) return _sourceEntryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sourceEntryIds);
  }

  /// ID of the target folder where the archive will be created
  @override
  final String targetFolderId;

  /// Optional name for the archive file (without extension)
  @override
  final String? archiveName;

  /// Archive format (e.g., 'zip', 'tar', '7z')
  @override
  @JsonKey()
  final String format;

  /// Whether to preserve folder structure in the archive
  @override
  @JsonKey()
  final bool preserveStructure;

  /// Compression level (0-9, where 0 = no compression, 9 = max compression)
  @override
  @JsonKey()
  final int compressionLevel;

  @override
  String toString() {
    return 'ArchiveFileTask(sourceEntryIds: $sourceEntryIds, targetFolderId: $targetFolderId, archiveName: $archiveName, format: $format, preserveStructure: $preserveStructure, compressionLevel: $compressionLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArchiveFileTaskImpl &&
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

  /// Create a copy of ArchiveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArchiveFileTaskImplCopyWith<_$ArchiveFileTaskImpl> get copyWith =>
      __$$ArchiveFileTaskImplCopyWithImpl<_$ArchiveFileTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ArchiveFileTaskImplToJson(this);
  }
}

abstract class _ArchiveFileTask extends ArchiveFileTask {
  const factory _ArchiveFileTask({
    required final List<String> sourceEntryIds,
    required final String targetFolderId,
    final String? archiveName,
    final String format,
    final bool preserveStructure,
    final int compressionLevel,
  }) = _$ArchiveFileTaskImpl;
  const _ArchiveFileTask._() : super._();

  factory _ArchiveFileTask.fromJson(Map<String, dynamic> json) =
      _$ArchiveFileTaskImpl.fromJson;

  /// IDs of the source entries to be archived
  @override
  List<String> get sourceEntryIds;

  /// ID of the target folder where the archive will be created
  @override
  String get targetFolderId;

  /// Optional name for the archive file (without extension)
  @override
  String? get archiveName;

  /// Archive format (e.g., 'zip', 'tar', '7z')
  @override
  String get format;

  /// Whether to preserve folder structure in the archive
  @override
  bool get preserveStructure;

  /// Compression level (0-9, where 0 = no compression, 9 = max compression)
  @override
  int get compressionLevel;

  /// Create a copy of ArchiveFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArchiveFileTaskImplCopyWith<_$ArchiveFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArchiveFileResult _$ArchiveFileResultFromJson(Map<String, dynamic> json) {
  return _ArchiveFileResult.fromJson(json);
}

/// @nodoc
mixin _$ArchiveFileResult {
  /// ID of the created archive file
  String get archiveId => throw _privateConstructorUsedError;

  /// IDs of source entries that were successfully archived
  List<String> get includedSourceIds => throw _privateConstructorUsedError;

  /// Total size of the archive in bytes
  int get archiveSizeBytes => throw _privateConstructorUsedError;

  /// Number of files included in the archive
  int get fileCount => throw _privateConstructorUsedError;

  /// Number of folders included in the archive
  int get folderCount => throw _privateConstructorUsedError;

  /// Any errors encountered during archiving
  List<String> get errors => throw _privateConstructorUsedError;

  /// Serializes this ArchiveFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArchiveFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArchiveFileResultCopyWith<ArchiveFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchiveFileResultCopyWith<$Res> {
  factory $ArchiveFileResultCopyWith(
    ArchiveFileResult value,
    $Res Function(ArchiveFileResult) then,
  ) = _$ArchiveFileResultCopyWithImpl<$Res, ArchiveFileResult>;
  @useResult
  $Res call({
    String archiveId,
    List<String> includedSourceIds,
    int archiveSizeBytes,
    int fileCount,
    int folderCount,
    List<String> errors,
  });
}

/// @nodoc
class _$ArchiveFileResultCopyWithImpl<$Res, $Val extends ArchiveFileResult>
    implements $ArchiveFileResultCopyWith<$Res> {
  _$ArchiveFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArchiveFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? archiveId = null,
    Object? includedSourceIds = null,
    Object? archiveSizeBytes = null,
    Object? fileCount = null,
    Object? folderCount = null,
    Object? errors = null,
  }) {
    return _then(
      _value.copyWith(
            archiveId: null == archiveId
                ? _value.archiveId
                : archiveId // ignore: cast_nullable_to_non_nullable
                      as String,
            includedSourceIds: null == includedSourceIds
                ? _value.includedSourceIds
                : includedSourceIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            archiveSizeBytes: null == archiveSizeBytes
                ? _value.archiveSizeBytes
                : archiveSizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
            fileCount: null == fileCount
                ? _value.fileCount
                : fileCount // ignore: cast_nullable_to_non_nullable
                      as int,
            folderCount: null == folderCount
                ? _value.folderCount
                : folderCount // ignore: cast_nullable_to_non_nullable
                      as int,
            errors: null == errors
                ? _value.errors
                : errors // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArchiveFileResultImplCopyWith<$Res>
    implements $ArchiveFileResultCopyWith<$Res> {
  factory _$$ArchiveFileResultImplCopyWith(
    _$ArchiveFileResultImpl value,
    $Res Function(_$ArchiveFileResultImpl) then,
  ) = __$$ArchiveFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String archiveId,
    List<String> includedSourceIds,
    int archiveSizeBytes,
    int fileCount,
    int folderCount,
    List<String> errors,
  });
}

/// @nodoc
class __$$ArchiveFileResultImplCopyWithImpl<$Res>
    extends _$ArchiveFileResultCopyWithImpl<$Res, _$ArchiveFileResultImpl>
    implements _$$ArchiveFileResultImplCopyWith<$Res> {
  __$$ArchiveFileResultImplCopyWithImpl(
    _$ArchiveFileResultImpl _value,
    $Res Function(_$ArchiveFileResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchiveFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? archiveId = null,
    Object? includedSourceIds = null,
    Object? archiveSizeBytes = null,
    Object? fileCount = null,
    Object? folderCount = null,
    Object? errors = null,
  }) {
    return _then(
      _$ArchiveFileResultImpl(
        archiveId: null == archiveId
            ? _value.archiveId
            : archiveId // ignore: cast_nullable_to_non_nullable
                  as String,
        includedSourceIds: null == includedSourceIds
            ? _value._includedSourceIds
            : includedSourceIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        archiveSizeBytes: null == archiveSizeBytes
            ? _value.archiveSizeBytes
            : archiveSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        fileCount: null == fileCount
            ? _value.fileCount
            : fileCount // ignore: cast_nullable_to_non_nullable
                  as int,
        folderCount: null == folderCount
            ? _value.folderCount
            : folderCount // ignore: cast_nullable_to_non_nullable
                  as int,
        errors: null == errors
            ? _value._errors
            : errors // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ArchiveFileResultImpl implements _ArchiveFileResult {
  const _$ArchiveFileResultImpl({
    required this.archiveId,
    required final List<String> includedSourceIds,
    required this.archiveSizeBytes,
    required this.fileCount,
    required this.folderCount,
    final List<String> errors = const <String>[],
  }) : _includedSourceIds = includedSourceIds,
       _errors = errors;

  factory _$ArchiveFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArchiveFileResultImplFromJson(json);

  /// ID of the created archive file
  @override
  final String archiveId;

  /// IDs of source entries that were successfully archived
  final List<String> _includedSourceIds;

  /// IDs of source entries that were successfully archived
  @override
  List<String> get includedSourceIds {
    if (_includedSourceIds is EqualUnmodifiableListView)
      return _includedSourceIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_includedSourceIds);
  }

  /// Total size of the archive in bytes
  @override
  final int archiveSizeBytes;

  /// Number of files included in the archive
  @override
  final int fileCount;

  /// Number of folders included in the archive
  @override
  final int folderCount;

  /// Any errors encountered during archiving
  final List<String> _errors;

  /// Any errors encountered during archiving
  @override
  @JsonKey()
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'ArchiveFileResult(archiveId: $archiveId, includedSourceIds: $includedSourceIds, archiveSizeBytes: $archiveSizeBytes, fileCount: $fileCount, folderCount: $folderCount, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArchiveFileResultImpl &&
            (identical(other.archiveId, archiveId) ||
                other.archiveId == archiveId) &&
            const DeepCollectionEquality().equals(
              other._includedSourceIds,
              _includedSourceIds,
            ) &&
            (identical(other.archiveSizeBytes, archiveSizeBytes) ||
                other.archiveSizeBytes == archiveSizeBytes) &&
            (identical(other.fileCount, fileCount) ||
                other.fileCount == fileCount) &&
            (identical(other.folderCount, folderCount) ||
                other.folderCount == folderCount) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    archiveId,
    const DeepCollectionEquality().hash(_includedSourceIds),
    archiveSizeBytes,
    fileCount,
    folderCount,
    const DeepCollectionEquality().hash(_errors),
  );

  /// Create a copy of ArchiveFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArchiveFileResultImplCopyWith<_$ArchiveFileResultImpl> get copyWith =>
      __$$ArchiveFileResultImplCopyWithImpl<_$ArchiveFileResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ArchiveFileResultImplToJson(this);
  }
}

abstract class _ArchiveFileResult implements ArchiveFileResult {
  const factory _ArchiveFileResult({
    required final String archiveId,
    required final List<String> includedSourceIds,
    required final int archiveSizeBytes,
    required final int fileCount,
    required final int folderCount,
    final List<String> errors,
  }) = _$ArchiveFileResultImpl;

  factory _ArchiveFileResult.fromJson(Map<String, dynamic> json) =
      _$ArchiveFileResultImpl.fromJson;

  /// ID of the created archive file
  @override
  String get archiveId;

  /// IDs of source entries that were successfully archived
  @override
  List<String> get includedSourceIds;

  /// Total size of the archive in bytes
  @override
  int get archiveSizeBytes;

  /// Number of files included in the archive
  @override
  int get fileCount;

  /// Number of folders included in the archive
  @override
  int get folderCount;

  /// Any errors encountered during archiving
  @override
  List<String> get errors;

  /// Create a copy of ArchiveFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArchiveFileResultImplCopyWith<_$ArchiveFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
