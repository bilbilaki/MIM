// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreateFileTask _$CreateFileTaskFromJson(Map<String, dynamic> json) {
  return _CreateFileTask.fromJson(json);
}

/// @nodoc
mixin _$CreateFileTask {
  /// ID of the target folder where the file will be created
  String get targetFolderId => throw _privateConstructorUsedError;

  /// Name of the new file (including extension if applicable)
  String get name => throw _privateConstructorUsedError;

  /// Kind of file to create
  FileKind get kind => throw _privateConstructorUsedError;

  /// Optional file extension (without dot)
  String? get extension => throw _privateConstructorUsedError;

  /// Optional initial content source
  /// Could be a template identifier, empty content marker, or source file ID to copy from
  String? get initialContentSource => throw _privateConstructorUsedError;

  /// Optional file size in bytes (if known in advance)
  int? get sizeBytes => throw _privateConstructorUsedError;

  /// Optional access permissions for the new file
  EntryAccess? get access => throw _privateConstructorUsedError;

  /// Optional timestamps for the new file
  EntryTimestamps? get timestamps => throw _privateConstructorUsedError;

  /// Optional metadata for the new file
  EntryMeta? get meta => throw _privateConstructorUsedError;

  /// Optional file type specific metadata
  FileTypeMeta? get typeMeta => throw _privateConstructorUsedError;

  /// Optional storage location configuration
  StorageLocation? get storageLocation => throw _privateConstructorUsedError;

  /// Optional MIME type
  String? get mime => throw _privateConstructorUsedError;

  /// Conflict resolution policy when a file with the same name already exists
  CreateFileConflictPolicy get conflictPolicy =>
      throw _privateConstructorUsedError;

  /// Serializes this CreateFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFileTaskCopyWith<CreateFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFileTaskCopyWith<$Res> {
  factory $CreateFileTaskCopyWith(
    CreateFileTask value,
    $Res Function(CreateFileTask) then,
  ) = _$CreateFileTaskCopyWithImpl<$Res, CreateFileTask>;
  @useResult
  $Res call({
    String targetFolderId,
    String name,
    FileKind kind,
    String? extension,
    String? initialContentSource,
    int? sizeBytes,
    EntryAccess? access,
    EntryTimestamps? timestamps,
    EntryMeta? meta,
    FileTypeMeta? typeMeta,
    StorageLocation? storageLocation,
    String? mime,
    CreateFileConflictPolicy conflictPolicy,
  });

  $EntryAccessCopyWith<$Res>? get access;
  $EntryTimestampsCopyWith<$Res>? get timestamps;
  $EntryMetaCopyWith<$Res>? get meta;
  $FileTypeMetaCopyWith<$Res>? get typeMeta;
  $StorageLocationCopyWith<$Res>? get storageLocation;
}

/// @nodoc
class _$CreateFileTaskCopyWithImpl<$Res, $Val extends CreateFileTask>
    implements $CreateFileTaskCopyWith<$Res> {
  _$CreateFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetFolderId = null,
    Object? name = null,
    Object? kind = null,
    Object? extension = freezed,
    Object? initialContentSource = freezed,
    Object? sizeBytes = freezed,
    Object? access = freezed,
    Object? timestamps = freezed,
    Object? meta = freezed,
    Object? typeMeta = freezed,
    Object? storageLocation = freezed,
    Object? mime = freezed,
    Object? conflictPolicy = null,
  }) {
    return _then(
      _value.copyWith(
            targetFolderId: null == targetFolderId
                ? _value.targetFolderId
                : targetFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            kind: null == kind
                ? _value.kind
                : kind // ignore: cast_nullable_to_non_nullable
                      as FileKind,
            extension: freezed == extension
                ? _value.extension
                : extension // ignore: cast_nullable_to_non_nullable
                      as String?,
            initialContentSource: freezed == initialContentSource
                ? _value.initialContentSource
                : initialContentSource // ignore: cast_nullable_to_non_nullable
                      as String?,
            sizeBytes: freezed == sizeBytes
                ? _value.sizeBytes
                : sizeBytes // ignore: cast_nullable_to_non_nullable
                      as int?,
            access: freezed == access
                ? _value.access
                : access // ignore: cast_nullable_to_non_nullable
                      as EntryAccess?,
            timestamps: freezed == timestamps
                ? _value.timestamps
                : timestamps // ignore: cast_nullable_to_non_nullable
                      as EntryTimestamps?,
            meta: freezed == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                      as EntryMeta?,
            typeMeta: freezed == typeMeta
                ? _value.typeMeta
                : typeMeta // ignore: cast_nullable_to_non_nullable
                      as FileTypeMeta?,
            storageLocation: freezed == storageLocation
                ? _value.storageLocation
                : storageLocation // ignore: cast_nullable_to_non_nullable
                      as StorageLocation?,
            mime: freezed == mime
                ? _value.mime
                : mime // ignore: cast_nullable_to_non_nullable
                      as String?,
            conflictPolicy: null == conflictPolicy
                ? _value.conflictPolicy
                : conflictPolicy // ignore: cast_nullable_to_non_nullable
                      as CreateFileConflictPolicy,
          )
          as $Val,
    );
  }

  /// Create a copy of CreateFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntryAccessCopyWith<$Res>? get access {
    if (_value.access == null) {
      return null;
    }

    return $EntryAccessCopyWith<$Res>(_value.access!, (value) {
      return _then(_value.copyWith(access: value) as $Val);
    });
  }

  /// Create a copy of CreateFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntryTimestampsCopyWith<$Res>? get timestamps {
    if (_value.timestamps == null) {
      return null;
    }

    return $EntryTimestampsCopyWith<$Res>(_value.timestamps!, (value) {
      return _then(_value.copyWith(timestamps: value) as $Val);
    });
  }

  /// Create a copy of CreateFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntryMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $EntryMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  /// Create a copy of CreateFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileTypeMetaCopyWith<$Res>? get typeMeta {
    if (_value.typeMeta == null) {
      return null;
    }

    return $FileTypeMetaCopyWith<$Res>(_value.typeMeta!, (value) {
      return _then(_value.copyWith(typeMeta: value) as $Val);
    });
  }

  /// Create a copy of CreateFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StorageLocationCopyWith<$Res>? get storageLocation {
    if (_value.storageLocation == null) {
      return null;
    }

    return $StorageLocationCopyWith<$Res>(_value.storageLocation!, (value) {
      return _then(_value.copyWith(storageLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateFileTaskImplCopyWith<$Res>
    implements $CreateFileTaskCopyWith<$Res> {
  factory _$$CreateFileTaskImplCopyWith(
    _$CreateFileTaskImpl value,
    $Res Function(_$CreateFileTaskImpl) then,
  ) = __$$CreateFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String targetFolderId,
    String name,
    FileKind kind,
    String? extension,
    String? initialContentSource,
    int? sizeBytes,
    EntryAccess? access,
    EntryTimestamps? timestamps,
    EntryMeta? meta,
    FileTypeMeta? typeMeta,
    StorageLocation? storageLocation,
    String? mime,
    CreateFileConflictPolicy conflictPolicy,
  });

  @override
  $EntryAccessCopyWith<$Res>? get access;
  @override
  $EntryTimestampsCopyWith<$Res>? get timestamps;
  @override
  $EntryMetaCopyWith<$Res>? get meta;
  @override
  $FileTypeMetaCopyWith<$Res>? get typeMeta;
  @override
  $StorageLocationCopyWith<$Res>? get storageLocation;
}

/// @nodoc
class __$$CreateFileTaskImplCopyWithImpl<$Res>
    extends _$CreateFileTaskCopyWithImpl<$Res, _$CreateFileTaskImpl>
    implements _$$CreateFileTaskImplCopyWith<$Res> {
  __$$CreateFileTaskImplCopyWithImpl(
    _$CreateFileTaskImpl _value,
    $Res Function(_$CreateFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetFolderId = null,
    Object? name = null,
    Object? kind = null,
    Object? extension = freezed,
    Object? initialContentSource = freezed,
    Object? sizeBytes = freezed,
    Object? access = freezed,
    Object? timestamps = freezed,
    Object? meta = freezed,
    Object? typeMeta = freezed,
    Object? storageLocation = freezed,
    Object? mime = freezed,
    Object? conflictPolicy = null,
  }) {
    return _then(
      _$CreateFileTaskImpl(
        targetFolderId: null == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        kind: null == kind
            ? _value.kind
            : kind // ignore: cast_nullable_to_non_nullable
                  as FileKind,
        extension: freezed == extension
            ? _value.extension
            : extension // ignore: cast_nullable_to_non_nullable
                  as String?,
        initialContentSource: freezed == initialContentSource
            ? _value.initialContentSource
            : initialContentSource // ignore: cast_nullable_to_non_nullable
                  as String?,
        sizeBytes: freezed == sizeBytes
            ? _value.sizeBytes
            : sizeBytes // ignore: cast_nullable_to_non_nullable
                  as int?,
        access: freezed == access
            ? _value.access
            : access // ignore: cast_nullable_to_non_nullable
                  as EntryAccess?,
        timestamps: freezed == timestamps
            ? _value.timestamps
            : timestamps // ignore: cast_nullable_to_non_nullable
                  as EntryTimestamps?,
        meta: freezed == meta
            ? _value.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as EntryMeta?,
        typeMeta: freezed == typeMeta
            ? _value.typeMeta
            : typeMeta // ignore: cast_nullable_to_non_nullable
                  as FileTypeMeta?,
        storageLocation: freezed == storageLocation
            ? _value.storageLocation
            : storageLocation // ignore: cast_nullable_to_non_nullable
                  as StorageLocation?,
        mime: freezed == mime
            ? _value.mime
            : mime // ignore: cast_nullable_to_non_nullable
                  as String?,
        conflictPolicy: null == conflictPolicy
            ? _value.conflictPolicy
            : conflictPolicy // ignore: cast_nullable_to_non_nullable
                  as CreateFileConflictPolicy,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateFileTaskImpl extends _CreateFileTask {
  const _$CreateFileTaskImpl({
    required this.targetFolderId,
    required this.name,
    required this.kind,
    this.extension,
    this.initialContentSource,
    this.sizeBytes,
    this.access,
    this.timestamps,
    this.meta,
    this.typeMeta,
    this.storageLocation,
    this.mime,
    this.conflictPolicy = CreateFileConflictPolicy.rename,
  }) : super._();

  factory _$CreateFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateFileTaskImplFromJson(json);

  /// ID of the target folder where the file will be created
  @override
  final String targetFolderId;

  /// Name of the new file (including extension if applicable)
  @override
  final String name;

  /// Kind of file to create
  @override
  final FileKind kind;

  /// Optional file extension (without dot)
  @override
  final String? extension;

  /// Optional initial content source
  /// Could be a template identifier, empty content marker, or source file ID to copy from
  @override
  final String? initialContentSource;

  /// Optional file size in bytes (if known in advance)
  @override
  final int? sizeBytes;

  /// Optional access permissions for the new file
  @override
  final EntryAccess? access;

  /// Optional timestamps for the new file
  @override
  final EntryTimestamps? timestamps;

  /// Optional metadata for the new file
  @override
  final EntryMeta? meta;

  /// Optional file type specific metadata
  @override
  final FileTypeMeta? typeMeta;

  /// Optional storage location configuration
  @override
  final StorageLocation? storageLocation;

  /// Optional MIME type
  @override
  final String? mime;

  /// Conflict resolution policy when a file with the same name already exists
  @override
  @JsonKey()
  final CreateFileConflictPolicy conflictPolicy;

  @override
  String toString() {
    return 'CreateFileTask(targetFolderId: $targetFolderId, name: $name, kind: $kind, extension: $extension, initialContentSource: $initialContentSource, sizeBytes: $sizeBytes, access: $access, timestamps: $timestamps, meta: $meta, typeMeta: $typeMeta, storageLocation: $storageLocation, mime: $mime, conflictPolicy: $conflictPolicy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFileTaskImpl &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.initialContentSource, initialContentSource) ||
                other.initialContentSource == initialContentSource) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes) &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.timestamps, timestamps) ||
                other.timestamps == timestamps) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.typeMeta, typeMeta) ||
                other.typeMeta == typeMeta) &&
            (identical(other.storageLocation, storageLocation) ||
                other.storageLocation == storageLocation) &&
            (identical(other.mime, mime) || other.mime == mime) &&
            (identical(other.conflictPolicy, conflictPolicy) ||
                other.conflictPolicy == conflictPolicy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    targetFolderId,
    name,
    kind,
    extension,
    initialContentSource,
    sizeBytes,
    access,
    timestamps,
    meta,
    typeMeta,
    storageLocation,
    mime,
    conflictPolicy,
  );

  /// Create a copy of CreateFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFileTaskImplCopyWith<_$CreateFileTaskImpl> get copyWith =>
      __$$CreateFileTaskImplCopyWithImpl<_$CreateFileTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateFileTaskImplToJson(this);
  }
}

abstract class _CreateFileTask extends CreateFileTask {
  const factory _CreateFileTask({
    required final String targetFolderId,
    required final String name,
    required final FileKind kind,
    final String? extension,
    final String? initialContentSource,
    final int? sizeBytes,
    final EntryAccess? access,
    final EntryTimestamps? timestamps,
    final EntryMeta? meta,
    final FileTypeMeta? typeMeta,
    final StorageLocation? storageLocation,
    final String? mime,
    final CreateFileConflictPolicy conflictPolicy,
  }) = _$CreateFileTaskImpl;
  const _CreateFileTask._() : super._();

  factory _CreateFileTask.fromJson(Map<String, dynamic> json) =
      _$CreateFileTaskImpl.fromJson;

  /// ID of the target folder where the file will be created
  @override
  String get targetFolderId;

  /// Name of the new file (including extension if applicable)
  @override
  String get name;

  /// Kind of file to create
  @override
  FileKind get kind;

  /// Optional file extension (without dot)
  @override
  String? get extension;

  /// Optional initial content source
  /// Could be a template identifier, empty content marker, or source file ID to copy from
  @override
  String? get initialContentSource;

  /// Optional file size in bytes (if known in advance)
  @override
  int? get sizeBytes;

  /// Optional access permissions for the new file
  @override
  EntryAccess? get access;

  /// Optional timestamps for the new file
  @override
  EntryTimestamps? get timestamps;

  /// Optional metadata for the new file
  @override
  EntryMeta? get meta;

  /// Optional file type specific metadata
  @override
  FileTypeMeta? get typeMeta;

  /// Optional storage location configuration
  @override
  StorageLocation? get storageLocation;

  /// Optional MIME type
  @override
  String? get mime;

  /// Conflict resolution policy when a file with the same name already exists
  @override
  CreateFileConflictPolicy get conflictPolicy;

  /// Create a copy of CreateFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFileTaskImplCopyWith<_$CreateFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateFileResult _$CreateFileResultFromJson(Map<String, dynamic> json) {
  return _CreateFileResult.fromJson(json);
}

/// @nodoc
mixin _$CreateFileResult {
  /// The newly created file entry
  FsFile get file => throw _privateConstructorUsedError;

  /// Whether the file was actually created or skipped due to conflict policy
  bool get wasCreated => throw _privateConstructorUsedError;

  /// If file was renamed due to conflict, this contains the original requested name
  String? get originalRequestedName => throw _privateConstructorUsedError;

  /// Any warnings or additional information about the creation process
  List<String> get warnings => throw _privateConstructorUsedError;

  /// Serializes this CreateFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFileResultCopyWith<CreateFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFileResultCopyWith<$Res> {
  factory $CreateFileResultCopyWith(
    CreateFileResult value,
    $Res Function(CreateFileResult) then,
  ) = _$CreateFileResultCopyWithImpl<$Res, CreateFileResult>;
  @useResult
  $Res call({
    FsFile file,
    bool wasCreated,
    String? originalRequestedName,
    List<String> warnings,
  });
}

/// @nodoc
class _$CreateFileResultCopyWithImpl<$Res, $Val extends CreateFileResult>
    implements $CreateFileResultCopyWith<$Res> {
  _$CreateFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? wasCreated = null,
    Object? originalRequestedName = freezed,
    Object? warnings = null,
  }) {
    return _then(
      _value.copyWith(
            file: freezed == file
                ? _value.file
                : file // ignore: cast_nullable_to_non_nullable
                      as FsFile,
            wasCreated: null == wasCreated
                ? _value.wasCreated
                : wasCreated // ignore: cast_nullable_to_non_nullable
                      as bool,
            originalRequestedName: freezed == originalRequestedName
                ? _value.originalRequestedName
                : originalRequestedName // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$CreateFileResultImplCopyWith<$Res>
    implements $CreateFileResultCopyWith<$Res> {
  factory _$$CreateFileResultImplCopyWith(
    _$CreateFileResultImpl value,
    $Res Function(_$CreateFileResultImpl) then,
  ) = __$$CreateFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    FsFile file,
    bool wasCreated,
    String? originalRequestedName,
    List<String> warnings,
  });
}

/// @nodoc
class __$$CreateFileResultImplCopyWithImpl<$Res>
    extends _$CreateFileResultCopyWithImpl<$Res, _$CreateFileResultImpl>
    implements _$$CreateFileResultImplCopyWith<$Res> {
  __$$CreateFileResultImplCopyWithImpl(
    _$CreateFileResultImpl _value,
    $Res Function(_$CreateFileResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? wasCreated = null,
    Object? originalRequestedName = freezed,
    Object? warnings = null,
  }) {
    return _then(
      _$CreateFileResultImpl(
        file: freezed == file
            ? _value.file
            : file // ignore: cast_nullable_to_non_nullable
                  as FsFile,
        wasCreated: null == wasCreated
            ? _value.wasCreated
            : wasCreated // ignore: cast_nullable_to_non_nullable
                  as bool,
        originalRequestedName: freezed == originalRequestedName
            ? _value.originalRequestedName
            : originalRequestedName // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$CreateFileResultImpl implements _CreateFileResult {
  const _$CreateFileResultImpl({
    required this.file,
    required this.wasCreated,
    this.originalRequestedName,
    final List<String> warnings = const [],
  }) : _warnings = warnings;

  factory _$CreateFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateFileResultImplFromJson(json);

  /// The newly created file entry
  @override
  final FsFile file;

  /// Whether the file was actually created or skipped due to conflict policy
  @override
  final bool wasCreated;

  /// If file was renamed due to conflict, this contains the original requested name
  @override
  final String? originalRequestedName;

  /// Any warnings or additional information about the creation process
  final List<String> _warnings;

  /// Any warnings or additional information about the creation process
  @override
  @JsonKey()
  List<String> get warnings {
    if (_warnings is EqualUnmodifiableListView) return _warnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_warnings);
  }

  @override
  String toString() {
    return 'CreateFileResult(file: $file, wasCreated: $wasCreated, originalRequestedName: $originalRequestedName, warnings: $warnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFileResultImpl &&
            const DeepCollectionEquality().equals(other.file, file) &&
            (identical(other.wasCreated, wasCreated) ||
                other.wasCreated == wasCreated) &&
            (identical(other.originalRequestedName, originalRequestedName) ||
                other.originalRequestedName == originalRequestedName) &&
            const DeepCollectionEquality().equals(other._warnings, _warnings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(file),
    wasCreated,
    originalRequestedName,
    const DeepCollectionEquality().hash(_warnings),
  );

  /// Create a copy of CreateFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFileResultImplCopyWith<_$CreateFileResultImpl> get copyWith =>
      __$$CreateFileResultImplCopyWithImpl<_$CreateFileResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateFileResultImplToJson(this);
  }
}

abstract class _CreateFileResult implements CreateFileResult {
  const factory _CreateFileResult({
    required final FsFile file,
    required final bool wasCreated,
    final String? originalRequestedName,
    final List<String> warnings,
  }) = _$CreateFileResultImpl;

  factory _CreateFileResult.fromJson(Map<String, dynamic> json) =
      _$CreateFileResultImpl.fromJson;

  /// The newly created file entry
  @override
  FsFile get file;

  /// Whether the file was actually created or skipped due to conflict policy
  @override
  bool get wasCreated;

  /// If file was renamed due to conflict, this contains the original requested name
  @override
  String? get originalRequestedName;

  /// Any warnings or additional information about the creation process
  @override
  List<String> get warnings;

  /// Create a copy of CreateFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFileResultImplCopyWith<_$CreateFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
