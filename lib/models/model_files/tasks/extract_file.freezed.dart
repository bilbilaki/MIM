// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extract_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ExtractFileResult _$ExtractFileResultFromJson(Map<String, dynamic> json) {
  return _ExtractFileResult.fromJson(json);
}

/// @nodoc
mixin _$ExtractFileResult {
  /// ID of the destination folder where contents were extracted
  String get destinationFolderId => throw _privateConstructorUsedError;

  /// List of entries that were created during extraction
  List<FsEntry> get extractedEntries => throw _privateConstructorUsedError;

  /// Number of files successfully extracted
  int get filesExtracted => throw _privateConstructorUsedError;

  /// Number of folders successfully extracted
  int get foldersExtracted => throw _privateConstructorUsedError;

  /// Any errors encountered during extraction
  List<String> get errors => throw _privateConstructorUsedError;

  /// Serializes this ExtractFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtractFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtractFileResultCopyWith<ExtractFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtractFileResultCopyWith<$Res> {
  factory $ExtractFileResultCopyWith(
    ExtractFileResult value,
    $Res Function(ExtractFileResult) then,
  ) = _$ExtractFileResultCopyWithImpl<$Res, ExtractFileResult>;
  @useResult
  $Res call({
    String destinationFolderId,
    List<FsEntry> extractedEntries,
    int filesExtracted,
    int foldersExtracted,
    List<String> errors,
  });
}

/// @nodoc
class _$ExtractFileResultCopyWithImpl<$Res, $Val extends ExtractFileResult>
    implements $ExtractFileResultCopyWith<$Res> {
  _$ExtractFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtractFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinationFolderId = null,
    Object? extractedEntries = null,
    Object? filesExtracted = null,
    Object? foldersExtracted = null,
    Object? errors = null,
  }) {
    return _then(
      _value.copyWith(
            destinationFolderId: null == destinationFolderId
                ? _value.destinationFolderId
                : destinationFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            extractedEntries: null == extractedEntries
                ? _value.extractedEntries
                : extractedEntries // ignore: cast_nullable_to_non_nullable
                      as List<FsEntry>,
            filesExtracted: null == filesExtracted
                ? _value.filesExtracted
                : filesExtracted // ignore: cast_nullable_to_non_nullable
                      as int,
            foldersExtracted: null == foldersExtracted
                ? _value.foldersExtracted
                : foldersExtracted // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ExtractFileResultImplCopyWith<$Res>
    implements $ExtractFileResultCopyWith<$Res> {
  factory _$$ExtractFileResultImplCopyWith(
    _$ExtractFileResultImpl value,
    $Res Function(_$ExtractFileResultImpl) then,
  ) = __$$ExtractFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String destinationFolderId,
    List<FsEntry> extractedEntries,
    int filesExtracted,
    int foldersExtracted,
    List<String> errors,
  });
}

/// @nodoc
class __$$ExtractFileResultImplCopyWithImpl<$Res>
    extends _$ExtractFileResultCopyWithImpl<$Res, _$ExtractFileResultImpl>
    implements _$$ExtractFileResultImplCopyWith<$Res> {
  __$$ExtractFileResultImplCopyWithImpl(
    _$ExtractFileResultImpl _value,
    $Res Function(_$ExtractFileResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExtractFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinationFolderId = null,
    Object? extractedEntries = null,
    Object? filesExtracted = null,
    Object? foldersExtracted = null,
    Object? errors = null,
  }) {
    return _then(
      _$ExtractFileResultImpl(
        destinationFolderId: null == destinationFolderId
            ? _value.destinationFolderId
            : destinationFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        extractedEntries: null == extractedEntries
            ? _value._extractedEntries
            : extractedEntries // ignore: cast_nullable_to_non_nullable
                  as List<FsEntry>,
        filesExtracted: null == filesExtracted
            ? _value.filesExtracted
            : filesExtracted // ignore: cast_nullable_to_non_nullable
                  as int,
        foldersExtracted: null == foldersExtracted
            ? _value.foldersExtracted
            : foldersExtracted // ignore: cast_nullable_to_non_nullable
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
class _$ExtractFileResultImpl implements _ExtractFileResult {
  const _$ExtractFileResultImpl({
    required this.destinationFolderId,
    required final List<FsEntry> extractedEntries,
    required this.filesExtracted,
    required this.foldersExtracted,
    final List<String> errors = const <String>[],
  }) : _extractedEntries = extractedEntries,
       _errors = errors;

  factory _$ExtractFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtractFileResultImplFromJson(json);

  /// ID of the destination folder where contents were extracted
  @override
  final String destinationFolderId;

  /// List of entries that were created during extraction
  final List<FsEntry> _extractedEntries;

  /// List of entries that were created during extraction
  @override
  List<FsEntry> get extractedEntries {
    if (_extractedEntries is EqualUnmodifiableListView)
      return _extractedEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extractedEntries);
  }

  /// Number of files successfully extracted
  @override
  final int filesExtracted;

  /// Number of folders successfully extracted
  @override
  final int foldersExtracted;

  /// Any errors encountered during extraction
  final List<String> _errors;

  /// Any errors encountered during extraction
  @override
  @JsonKey()
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'ExtractFileResult(destinationFolderId: $destinationFolderId, extractedEntries: $extractedEntries, filesExtracted: $filesExtracted, foldersExtracted: $foldersExtracted, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtractFileResultImpl &&
            (identical(other.destinationFolderId, destinationFolderId) ||
                other.destinationFolderId == destinationFolderId) &&
            const DeepCollectionEquality().equals(
              other._extractedEntries,
              _extractedEntries,
            ) &&
            (identical(other.filesExtracted, filesExtracted) ||
                other.filesExtracted == filesExtracted) &&
            (identical(other.foldersExtracted, foldersExtracted) ||
                other.foldersExtracted == foldersExtracted) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    destinationFolderId,
    const DeepCollectionEquality().hash(_extractedEntries),
    filesExtracted,
    foldersExtracted,
    const DeepCollectionEquality().hash(_errors),
  );

  /// Create a copy of ExtractFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtractFileResultImplCopyWith<_$ExtractFileResultImpl> get copyWith =>
      __$$ExtractFileResultImplCopyWithImpl<_$ExtractFileResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtractFileResultImplToJson(this);
  }
}

abstract class _ExtractFileResult implements ExtractFileResult {
  const factory _ExtractFileResult({
    required final String destinationFolderId,
    required final List<FsEntry> extractedEntries,
    required final int filesExtracted,
    required final int foldersExtracted,
    final List<String> errors,
  }) = _$ExtractFileResultImpl;

  factory _ExtractFileResult.fromJson(Map<String, dynamic> json) =
      _$ExtractFileResultImpl.fromJson;

  /// ID of the destination folder where contents were extracted
  @override
  String get destinationFolderId;

  /// List of entries that were created during extraction
  @override
  List<FsEntry> get extractedEntries;

  /// Number of files successfully extracted
  @override
  int get filesExtracted;

  /// Number of folders successfully extracted
  @override
  int get foldersExtracted;

  /// Any errors encountered during extraction
  @override
  List<String> get errors;

  /// Create a copy of ExtractFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtractFileResultImplCopyWith<_$ExtractFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtractFileTask _$ExtractFileTaskFromJson(Map<String, dynamic> json) {
  return _ExtractFileTask.fromJson(json);
}

/// @nodoc
mixin _$ExtractFileTask {
  /// ID of the archive file to extract
  String get archiveFileId => throw _privateConstructorUsedError;

  /// ID of the target folder where contents should be extracted
  String get targetFolderId => throw _privateConstructorUsedError;

  /// Optional name for the extraction folder (if null, uses archive name)
  String? get extractionFolderName => throw _privateConstructorUsedError;

  /// Whether to overwrite existing files with same names
  bool get overwriteExisting => throw _privateConstructorUsedError;

  /// Optional password for encrypted archives
  String? get password => throw _privateConstructorUsedError;

  /// Specific files to extract (if null, extract all)
  List<String>? get filesToExtract => throw _privateConstructorUsedError;

  /// Serializes this ExtractFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtractFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtractFileTaskCopyWith<ExtractFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtractFileTaskCopyWith<$Res> {
  factory $ExtractFileTaskCopyWith(
    ExtractFileTask value,
    $Res Function(ExtractFileTask) then,
  ) = _$ExtractFileTaskCopyWithImpl<$Res, ExtractFileTask>;
  @useResult
  $Res call({
    String archiveFileId,
    String targetFolderId,
    String? extractionFolderName,
    bool overwriteExisting,
    String? password,
    List<String>? filesToExtract,
  });
}

/// @nodoc
class _$ExtractFileTaskCopyWithImpl<$Res, $Val extends ExtractFileTask>
    implements $ExtractFileTaskCopyWith<$Res> {
  _$ExtractFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtractFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? archiveFileId = null,
    Object? targetFolderId = null,
    Object? extractionFolderName = freezed,
    Object? overwriteExisting = null,
    Object? password = freezed,
    Object? filesToExtract = freezed,
  }) {
    return _then(
      _value.copyWith(
            archiveFileId: null == archiveFileId
                ? _value.archiveFileId
                : archiveFileId // ignore: cast_nullable_to_non_nullable
                      as String,
            targetFolderId: null == targetFolderId
                ? _value.targetFolderId
                : targetFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            extractionFolderName: freezed == extractionFolderName
                ? _value.extractionFolderName
                : extractionFolderName // ignore: cast_nullable_to_non_nullable
                      as String?,
            overwriteExisting: null == overwriteExisting
                ? _value.overwriteExisting
                : overwriteExisting // ignore: cast_nullable_to_non_nullable
                      as bool,
            password: freezed == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String?,
            filesToExtract: freezed == filesToExtract
                ? _value.filesToExtract
                : filesToExtract // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExtractFileTaskImplCopyWith<$Res>
    implements $ExtractFileTaskCopyWith<$Res> {
  factory _$$ExtractFileTaskImplCopyWith(
    _$ExtractFileTaskImpl value,
    $Res Function(_$ExtractFileTaskImpl) then,
  ) = __$$ExtractFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String archiveFileId,
    String targetFolderId,
    String? extractionFolderName,
    bool overwriteExisting,
    String? password,
    List<String>? filesToExtract,
  });
}

/// @nodoc
class __$$ExtractFileTaskImplCopyWithImpl<$Res>
    extends _$ExtractFileTaskCopyWithImpl<$Res, _$ExtractFileTaskImpl>
    implements _$$ExtractFileTaskImplCopyWith<$Res> {
  __$$ExtractFileTaskImplCopyWithImpl(
    _$ExtractFileTaskImpl _value,
    $Res Function(_$ExtractFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExtractFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? archiveFileId = null,
    Object? targetFolderId = null,
    Object? extractionFolderName = freezed,
    Object? overwriteExisting = null,
    Object? password = freezed,
    Object? filesToExtract = freezed,
  }) {
    return _then(
      _$ExtractFileTaskImpl(
        archiveFileId: null == archiveFileId
            ? _value.archiveFileId
            : archiveFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        targetFolderId: null == targetFolderId
            ? _value.targetFolderId
            : targetFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        extractionFolderName: freezed == extractionFolderName
            ? _value.extractionFolderName
            : extractionFolderName // ignore: cast_nullable_to_non_nullable
                  as String?,
        overwriteExisting: null == overwriteExisting
            ? _value.overwriteExisting
            : overwriteExisting // ignore: cast_nullable_to_non_nullable
                  as bool,
        password: freezed == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String?,
        filesToExtract: freezed == filesToExtract
            ? _value._filesToExtract
            : filesToExtract // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtractFileTaskImpl extends _ExtractFileTask {
  const _$ExtractFileTaskImpl({
    required this.archiveFileId,
    required this.targetFolderId,
    this.extractionFolderName,
    this.overwriteExisting = false,
    this.password,
    final List<String>? filesToExtract,
  }) : _filesToExtract = filesToExtract,
       super._();

  factory _$ExtractFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtractFileTaskImplFromJson(json);

  /// ID of the archive file to extract
  @override
  final String archiveFileId;

  /// ID of the target folder where contents should be extracted
  @override
  final String targetFolderId;

  /// Optional name for the extraction folder (if null, uses archive name)
  @override
  final String? extractionFolderName;

  /// Whether to overwrite existing files with same names
  @override
  @JsonKey()
  final bool overwriteExisting;

  /// Optional password for encrypted archives
  @override
  final String? password;

  /// Specific files to extract (if null, extract all)
  final List<String>? _filesToExtract;

  /// Specific files to extract (if null, extract all)
  @override
  List<String>? get filesToExtract {
    final value = _filesToExtract;
    if (value == null) return null;
    if (_filesToExtract is EqualUnmodifiableListView) return _filesToExtract;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExtractFileTask(archiveFileId: $archiveFileId, targetFolderId: $targetFolderId, extractionFolderName: $extractionFolderName, overwriteExisting: $overwriteExisting, password: $password, filesToExtract: $filesToExtract)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtractFileTaskImpl &&
            (identical(other.archiveFileId, archiveFileId) ||
                other.archiveFileId == archiveFileId) &&
            (identical(other.targetFolderId, targetFolderId) ||
                other.targetFolderId == targetFolderId) &&
            (identical(other.extractionFolderName, extractionFolderName) ||
                other.extractionFolderName == extractionFolderName) &&
            (identical(other.overwriteExisting, overwriteExisting) ||
                other.overwriteExisting == overwriteExisting) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(
              other._filesToExtract,
              _filesToExtract,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    archiveFileId,
    targetFolderId,
    extractionFolderName,
    overwriteExisting,
    password,
    const DeepCollectionEquality().hash(_filesToExtract),
  );

  /// Create a copy of ExtractFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtractFileTaskImplCopyWith<_$ExtractFileTaskImpl> get copyWith =>
      __$$ExtractFileTaskImplCopyWithImpl<_$ExtractFileTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtractFileTaskImplToJson(this);
  }
}

abstract class _ExtractFileTask extends ExtractFileTask {
  const factory _ExtractFileTask({
    required final String archiveFileId,
    required final String targetFolderId,
    final String? extractionFolderName,
    final bool overwriteExisting,
    final String? password,
    final List<String>? filesToExtract,
  }) = _$ExtractFileTaskImpl;
  const _ExtractFileTask._() : super._();

  factory _ExtractFileTask.fromJson(Map<String, dynamic> json) =
      _$ExtractFileTaskImpl.fromJson;

  /// ID of the archive file to extract
  @override
  String get archiveFileId;

  /// ID of the target folder where contents should be extracted
  @override
  String get targetFolderId;

  /// Optional name for the extraction folder (if null, uses archive name)
  @override
  String? get extractionFolderName;

  /// Whether to overwrite existing files with same names
  @override
  bool get overwriteExisting;

  /// Optional password for encrypted archives
  @override
  String? get password;

  /// Specific files to extract (if null, extract all)
  @override
  List<String>? get filesToExtract;

  /// Create a copy of ExtractFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtractFileTaskImplCopyWith<_$ExtractFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
