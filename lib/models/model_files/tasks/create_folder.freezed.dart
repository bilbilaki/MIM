// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_folder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreateFolderTask _$CreateFolderTaskFromJson(Map<String, dynamic> json) {
  return _CreateFolderTask.fromJson(json);
}

/// @nodoc
mixin _$CreateFolderTask {
  /// ID of the parent folder where the new folder will be created
  String get parentFolderId => throw _privateConstructorUsedError;

  /// Name of the new folder to create
  String get name => throw _privateConstructorUsedError;

  /// Optional initial metadata for the new folder
  EntryMeta? get meta => throw _privateConstructorUsedError;

  /// Optional access permissions for the new folder
  EntryAccess? get access => throw _privateConstructorUsedError;

  /// Optional timestamps for the new folder
  EntryTimestamps? get timestamps => throw _privateConstructorUsedError;

  /// Serializes this CreateFolderTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFolderTaskCopyWith<CreateFolderTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFolderTaskCopyWith<$Res> {
  factory $CreateFolderTaskCopyWith(
    CreateFolderTask value,
    $Res Function(CreateFolderTask) then,
  ) = _$CreateFolderTaskCopyWithImpl<$Res, CreateFolderTask>;
  @useResult
  $Res call({
    String parentFolderId,
    String name,
    EntryMeta? meta,
    EntryAccess? access,
    EntryTimestamps? timestamps,
  });

  $EntryMetaCopyWith<$Res>? get meta;
  $EntryAccessCopyWith<$Res>? get access;
  $EntryTimestampsCopyWith<$Res>? get timestamps;
}

/// @nodoc
class _$CreateFolderTaskCopyWithImpl<$Res, $Val extends CreateFolderTask>
    implements $CreateFolderTaskCopyWith<$Res> {
  _$CreateFolderTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentFolderId = null,
    Object? name = null,
    Object? meta = freezed,
    Object? access = freezed,
    Object? timestamps = freezed,
  }) {
    return _then(
      _value.copyWith(
            parentFolderId: null == parentFolderId
                ? _value.parentFolderId
                : parentFolderId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            meta: freezed == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                      as EntryMeta?,
            access: freezed == access
                ? _value.access
                : access // ignore: cast_nullable_to_non_nullable
                      as EntryAccess?,
            timestamps: freezed == timestamps
                ? _value.timestamps
                : timestamps // ignore: cast_nullable_to_non_nullable
                      as EntryTimestamps?,
          )
          as $Val,
    );
  }

  /// Create a copy of CreateFolderTask
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

  /// Create a copy of CreateFolderTask
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

  /// Create a copy of CreateFolderTask
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
}

/// @nodoc
abstract class _$$CreateFolderTaskImplCopyWith<$Res>
    implements $CreateFolderTaskCopyWith<$Res> {
  factory _$$CreateFolderTaskImplCopyWith(
    _$CreateFolderTaskImpl value,
    $Res Function(_$CreateFolderTaskImpl) then,
  ) = __$$CreateFolderTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String parentFolderId,
    String name,
    EntryMeta? meta,
    EntryAccess? access,
    EntryTimestamps? timestamps,
  });

  @override
  $EntryMetaCopyWith<$Res>? get meta;
  @override
  $EntryAccessCopyWith<$Res>? get access;
  @override
  $EntryTimestampsCopyWith<$Res>? get timestamps;
}

/// @nodoc
class __$$CreateFolderTaskImplCopyWithImpl<$Res>
    extends _$CreateFolderTaskCopyWithImpl<$Res, _$CreateFolderTaskImpl>
    implements _$$CreateFolderTaskImplCopyWith<$Res> {
  __$$CreateFolderTaskImplCopyWithImpl(
    _$CreateFolderTaskImpl _value,
    $Res Function(_$CreateFolderTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentFolderId = null,
    Object? name = null,
    Object? meta = freezed,
    Object? access = freezed,
    Object? timestamps = freezed,
  }) {
    return _then(
      _$CreateFolderTaskImpl(
        parentFolderId: null == parentFolderId
            ? _value.parentFolderId
            : parentFolderId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        meta: freezed == meta
            ? _value.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as EntryMeta?,
        access: freezed == access
            ? _value.access
            : access // ignore: cast_nullable_to_non_nullable
                  as EntryAccess?,
        timestamps: freezed == timestamps
            ? _value.timestamps
            : timestamps // ignore: cast_nullable_to_non_nullable
                  as EntryTimestamps?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateFolderTaskImpl extends _CreateFolderTask {
  const _$CreateFolderTaskImpl({
    required this.parentFolderId,
    required this.name,
    this.meta,
    this.access,
    this.timestamps,
  }) : super._();

  factory _$CreateFolderTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateFolderTaskImplFromJson(json);

  /// ID of the parent folder where the new folder will be created
  @override
  final String parentFolderId;

  /// Name of the new folder to create
  @override
  final String name;

  /// Optional initial metadata for the new folder
  @override
  final EntryMeta? meta;

  /// Optional access permissions for the new folder
  @override
  final EntryAccess? access;

  /// Optional timestamps for the new folder
  @override
  final EntryTimestamps? timestamps;

  @override
  String toString() {
    return 'CreateFolderTask(parentFolderId: $parentFolderId, name: $name, meta: $meta, access: $access, timestamps: $timestamps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFolderTaskImpl &&
            (identical(other.parentFolderId, parentFolderId) ||
                other.parentFolderId == parentFolderId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.timestamps, timestamps) ||
                other.timestamps == timestamps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, parentFolderId, name, meta, access, timestamps);

  /// Create a copy of CreateFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFolderTaskImplCopyWith<_$CreateFolderTaskImpl> get copyWith =>
      __$$CreateFolderTaskImplCopyWithImpl<_$CreateFolderTaskImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateFolderTaskImplToJson(this);
  }
}

abstract class _CreateFolderTask extends CreateFolderTask {
  const factory _CreateFolderTask({
    required final String parentFolderId,
    required final String name,
    final EntryMeta? meta,
    final EntryAccess? access,
    final EntryTimestamps? timestamps,
  }) = _$CreateFolderTaskImpl;
  const _CreateFolderTask._() : super._();

  factory _CreateFolderTask.fromJson(Map<String, dynamic> json) =
      _$CreateFolderTaskImpl.fromJson;

  /// ID of the parent folder where the new folder will be created
  @override
  String get parentFolderId;

  /// Name of the new folder to create
  @override
  String get name;

  /// Optional initial metadata for the new folder
  @override
  EntryMeta? get meta;

  /// Optional access permissions for the new folder
  @override
  EntryAccess? get access;

  /// Optional timestamps for the new folder
  @override
  EntryTimestamps? get timestamps;

  /// Create a copy of CreateFolderTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFolderTaskImplCopyWith<_$CreateFolderTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateFolderResult _$CreateFolderResultFromJson(Map<String, dynamic> json) {
  return _CreateFolderResult.fromJson(json);
}

/// @nodoc
mixin _$CreateFolderResult {
  /// The newly created folder entry
  FsFolder get folder => throw _privateConstructorUsedError;

  /// Whether the folder was successfully created
  bool get success => throw _privateConstructorUsedError;

  /// Error message if creation failed, null if successful
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this CreateFolderResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFolderResultCopyWith<CreateFolderResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFolderResultCopyWith<$Res> {
  factory $CreateFolderResultCopyWith(
    CreateFolderResult value,
    $Res Function(CreateFolderResult) then,
  ) = _$CreateFolderResultCopyWithImpl<$Res, CreateFolderResult>;
  @useResult
  $Res call({FsFolder folder, bool success, String? error});
}

/// @nodoc
class _$CreateFolderResultCopyWithImpl<$Res, $Val extends CreateFolderResult>
    implements $CreateFolderResultCopyWith<$Res> {
  _$CreateFolderResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folder = freezed,
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            folder: freezed == folder
                ? _value.folder
                : folder // ignore: cast_nullable_to_non_nullable
                      as FsFolder,
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
}

/// @nodoc
abstract class _$$CreateFolderResultImplCopyWith<$Res>
    implements $CreateFolderResultCopyWith<$Res> {
  factory _$$CreateFolderResultImplCopyWith(
    _$CreateFolderResultImpl value,
    $Res Function(_$CreateFolderResultImpl) then,
  ) = __$$CreateFolderResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FsFolder folder, bool success, String? error});
}

/// @nodoc
class __$$CreateFolderResultImplCopyWithImpl<$Res>
    extends _$CreateFolderResultCopyWithImpl<$Res, _$CreateFolderResultImpl>
    implements _$$CreateFolderResultImplCopyWith<$Res> {
  __$$CreateFolderResultImplCopyWithImpl(
    _$CreateFolderResultImpl _value,
    $Res Function(_$CreateFolderResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folder = freezed,
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(
      _$CreateFolderResultImpl(
        folder: freezed == folder
            ? _value.folder
            : folder // ignore: cast_nullable_to_non_nullable
                  as FsFolder,
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
class _$CreateFolderResultImpl implements _CreateFolderResult {
  const _$CreateFolderResultImpl({
    required this.folder,
    required this.success,
    this.error,
  });

  factory _$CreateFolderResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateFolderResultImplFromJson(json);

  /// The newly created folder entry
  @override
  final FsFolder folder;

  /// Whether the folder was successfully created
  @override
  final bool success;

  /// Error message if creation failed, null if successful
  @override
  final String? error;

  @override
  String toString() {
    return 'CreateFolderResult(folder: $folder, success: $success, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFolderResultImpl &&
            const DeepCollectionEquality().equals(other.folder, folder) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(folder),
    success,
    error,
  );

  /// Create a copy of CreateFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFolderResultImplCopyWith<_$CreateFolderResultImpl> get copyWith =>
      __$$CreateFolderResultImplCopyWithImpl<_$CreateFolderResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateFolderResultImplToJson(this);
  }
}

abstract class _CreateFolderResult implements CreateFolderResult {
  const factory _CreateFolderResult({
    required final FsFolder folder,
    required final bool success,
    final String? error,
  }) = _$CreateFolderResultImpl;

  factory _CreateFolderResult.fromJson(Map<String, dynamic> json) =
      _$CreateFolderResultImpl.fromJson;

  /// The newly created folder entry
  @override
  FsFolder get folder;

  /// Whether the folder was successfully created
  @override
  bool get success;

  /// Error message if creation failed, null if successful
  @override
  String? get error;

  /// Create a copy of CreateFolderResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFolderResultImplCopyWith<_$CreateFolderResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
