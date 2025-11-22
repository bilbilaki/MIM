// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duplicated_folder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DuplicatedFolderGroup _$DuplicatedFolderGroupFromJson(
  Map<String, dynamic> json,
) {
  return _DuplicatedFolderGroup.fromJson(json);
}

/// @nodoc
mixin _$DuplicatedFolderGroup {
  /// Unique identifier for this duplicate group
  String get id => throw _privateConstructorUsedError;

  /// The structural hash that identifies identical folder content
  String get structureHash => throw _privateConstructorUsedError;

  /// List of folder entries that are duplicates of each other
  List<String> get folderIds => throw _privateConstructorUsedError;

  /// Number of files contained in the folder structure
  int get fileCount => throw _privateConstructorUsedError;

  /// Total size in bytes of the duplicated content
  int get totalSizeBytes => throw _privateConstructorUsedError;

  /// When this duplicate group was detected
  DateTime get detectedAt => throw _privateConstructorUsedError;

  /// Serializes this DuplicatedFolderGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DuplicatedFolderGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DuplicatedFolderGroupCopyWith<DuplicatedFolderGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuplicatedFolderGroupCopyWith<$Res> {
  factory $DuplicatedFolderGroupCopyWith(
    DuplicatedFolderGroup value,
    $Res Function(DuplicatedFolderGroup) then,
  ) = _$DuplicatedFolderGroupCopyWithImpl<$Res, DuplicatedFolderGroup>;
  @useResult
  $Res call({
    String id,
    String structureHash,
    List<String> folderIds,
    int fileCount,
    int totalSizeBytes,
    DateTime detectedAt,
  });
}

/// @nodoc
class _$DuplicatedFolderGroupCopyWithImpl<
  $Res,
  $Val extends DuplicatedFolderGroup
>
    implements $DuplicatedFolderGroupCopyWith<$Res> {
  _$DuplicatedFolderGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DuplicatedFolderGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? structureHash = null,
    Object? folderIds = null,
    Object? fileCount = null,
    Object? totalSizeBytes = null,
    Object? detectedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            structureHash: null == structureHash
                ? _value.structureHash
                : structureHash // ignore: cast_nullable_to_non_nullable
                      as String,
            folderIds: null == folderIds
                ? _value.folderIds
                : folderIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            fileCount: null == fileCount
                ? _value.fileCount
                : fileCount // ignore: cast_nullable_to_non_nullable
                      as int,
            totalSizeBytes: null == totalSizeBytes
                ? _value.totalSizeBytes
                : totalSizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
            detectedAt: null == detectedAt
                ? _value.detectedAt
                : detectedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DuplicatedFolderGroupImplCopyWith<$Res>
    implements $DuplicatedFolderGroupCopyWith<$Res> {
  factory _$$DuplicatedFolderGroupImplCopyWith(
    _$DuplicatedFolderGroupImpl value,
    $Res Function(_$DuplicatedFolderGroupImpl) then,
  ) = __$$DuplicatedFolderGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String structureHash,
    List<String> folderIds,
    int fileCount,
    int totalSizeBytes,
    DateTime detectedAt,
  });
}

/// @nodoc
class __$$DuplicatedFolderGroupImplCopyWithImpl<$Res>
    extends
        _$DuplicatedFolderGroupCopyWithImpl<$Res, _$DuplicatedFolderGroupImpl>
    implements _$$DuplicatedFolderGroupImplCopyWith<$Res> {
  __$$DuplicatedFolderGroupImplCopyWithImpl(
    _$DuplicatedFolderGroupImpl _value,
    $Res Function(_$DuplicatedFolderGroupImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DuplicatedFolderGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? structureHash = null,
    Object? folderIds = null,
    Object? fileCount = null,
    Object? totalSizeBytes = null,
    Object? detectedAt = null,
  }) {
    return _then(
      _$DuplicatedFolderGroupImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        structureHash: null == structureHash
            ? _value.structureHash
            : structureHash // ignore: cast_nullable_to_non_nullable
                  as String,
        folderIds: null == folderIds
            ? _value._folderIds
            : folderIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        fileCount: null == fileCount
            ? _value.fileCount
            : fileCount // ignore: cast_nullable_to_non_nullable
                  as int,
        totalSizeBytes: null == totalSizeBytes
            ? _value.totalSizeBytes
            : totalSizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        detectedAt: null == detectedAt
            ? _value.detectedAt
            : detectedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DuplicatedFolderGroupImpl extends _DuplicatedFolderGroup {
  const _$DuplicatedFolderGroupImpl({
    required this.id,
    required this.structureHash,
    required final List<String> folderIds,
    required this.fileCount,
    required this.totalSizeBytes,
    required this.detectedAt,
  }) : _folderIds = folderIds,
       super._();

  factory _$DuplicatedFolderGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$DuplicatedFolderGroupImplFromJson(json);

  /// Unique identifier for this duplicate group
  @override
  final String id;

  /// The structural hash that identifies identical folder content
  @override
  final String structureHash;

  /// List of folder entries that are duplicates of each other
  final List<String> _folderIds;

  /// List of folder entries that are duplicates of each other
  @override
  List<String> get folderIds {
    if (_folderIds is EqualUnmodifiableListView) return _folderIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_folderIds);
  }

  /// Number of files contained in the folder structure
  @override
  final int fileCount;

  /// Total size in bytes of the duplicated content
  @override
  final int totalSizeBytes;

  /// When this duplicate group was detected
  @override
  final DateTime detectedAt;

  @override
  String toString() {
    return 'DuplicatedFolderGroup(id: $id, structureHash: $structureHash, folderIds: $folderIds, fileCount: $fileCount, totalSizeBytes: $totalSizeBytes, detectedAt: $detectedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuplicatedFolderGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.structureHash, structureHash) ||
                other.structureHash == structureHash) &&
            const DeepCollectionEquality().equals(
              other._folderIds,
              _folderIds,
            ) &&
            (identical(other.fileCount, fileCount) ||
                other.fileCount == fileCount) &&
            (identical(other.totalSizeBytes, totalSizeBytes) ||
                other.totalSizeBytes == totalSizeBytes) &&
            (identical(other.detectedAt, detectedAt) ||
                other.detectedAt == detectedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    structureHash,
    const DeepCollectionEquality().hash(_folderIds),
    fileCount,
    totalSizeBytes,
    detectedAt,
  );

  /// Create a copy of DuplicatedFolderGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DuplicatedFolderGroupImplCopyWith<_$DuplicatedFolderGroupImpl>
  get copyWith =>
      __$$DuplicatedFolderGroupImplCopyWithImpl<_$DuplicatedFolderGroupImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DuplicatedFolderGroupImplToJson(this);
  }
}

abstract class _DuplicatedFolderGroup extends DuplicatedFolderGroup {
  const factory _DuplicatedFolderGroup({
    required final String id,
    required final String structureHash,
    required final List<String> folderIds,
    required final int fileCount,
    required final int totalSizeBytes,
    required final DateTime detectedAt,
  }) = _$DuplicatedFolderGroupImpl;
  const _DuplicatedFolderGroup._() : super._();

  factory _DuplicatedFolderGroup.fromJson(Map<String, dynamic> json) =
      _$DuplicatedFolderGroupImpl.fromJson;

  /// Unique identifier for this duplicate group
  @override
  String get id;

  /// The structural hash that identifies identical folder content
  @override
  String get structureHash;

  /// List of folder entries that are duplicates of each other
  @override
  List<String> get folderIds;

  /// Number of files contained in the folder structure
  @override
  int get fileCount;

  /// Total size in bytes of the duplicated content
  @override
  int get totalSizeBytes;

  /// When this duplicate group was detected
  @override
  DateTime get detectedAt;

  /// Create a copy of DuplicatedFolderGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DuplicatedFolderGroupImplCopyWith<_$DuplicatedFolderGroupImpl>
  get copyWith => throw _privateConstructorUsedError;
}
