// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FileEdit _$FileEditFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'replace':
      return FileEditReplace.fromJson(json);
    case 'patch':
      return FileEditPatch.fromJson(json);
    case 'append':
      return FileEditAppend.fromJson(json);
    case 'prepend':
      return FileEditPrepend.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'FileEdit',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$FileEdit {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newContent) replace,
    required TResult Function(String patchData) patch,
    required TResult Function(String contentToAppend) append,
    required TResult Function(String contentToPrepend) prepend,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newContent)? replace,
    TResult? Function(String patchData)? patch,
    TResult? Function(String contentToAppend)? append,
    TResult? Function(String contentToPrepend)? prepend,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newContent)? replace,
    TResult Function(String patchData)? patch,
    TResult Function(String contentToAppend)? append,
    TResult Function(String contentToPrepend)? prepend,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileEditReplace value) replace,
    required TResult Function(FileEditPatch value) patch,
    required TResult Function(FileEditAppend value) append,
    required TResult Function(FileEditPrepend value) prepend,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileEditReplace value)? replace,
    TResult? Function(FileEditPatch value)? patch,
    TResult? Function(FileEditAppend value)? append,
    TResult? Function(FileEditPrepend value)? prepend,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileEditReplace value)? replace,
    TResult Function(FileEditPatch value)? patch,
    TResult Function(FileEditAppend value)? append,
    TResult Function(FileEditPrepend value)? prepend,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this FileEdit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileEditCopyWith<$Res> {
  factory $FileEditCopyWith(FileEdit value, $Res Function(FileEdit) then) =
      _$FileEditCopyWithImpl<$Res, FileEdit>;
}

/// @nodoc
class _$FileEditCopyWithImpl<$Res, $Val extends FileEdit>
    implements $FileEditCopyWith<$Res> {
  _$FileEditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileEdit
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FileEditReplaceImplCopyWith<$Res> {
  factory _$$FileEditReplaceImplCopyWith(
    _$FileEditReplaceImpl value,
    $Res Function(_$FileEditReplaceImpl) then,
  ) = __$$FileEditReplaceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newContent});
}

/// @nodoc
class __$$FileEditReplaceImplCopyWithImpl<$Res>
    extends _$FileEditCopyWithImpl<$Res, _$FileEditReplaceImpl>
    implements _$$FileEditReplaceImplCopyWith<$Res> {
  __$$FileEditReplaceImplCopyWithImpl(
    _$FileEditReplaceImpl _value,
    $Res Function(_$FileEditReplaceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FileEdit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? newContent = null}) {
    return _then(
      _$FileEditReplaceImpl(
        newContent: null == newContent
            ? _value.newContent
            : newContent // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FileEditReplaceImpl implements FileEditReplace {
  const _$FileEditReplaceImpl({required this.newContent, final String? $type})
    : $type = $type ?? 'replace';

  factory _$FileEditReplaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileEditReplaceImplFromJson(json);

  @override
  final String newContent;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FileEdit.replace(newContent: $newContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileEditReplaceImpl &&
            (identical(other.newContent, newContent) ||
                other.newContent == newContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, newContent);

  /// Create a copy of FileEdit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileEditReplaceImplCopyWith<_$FileEditReplaceImpl> get copyWith =>
      __$$FileEditReplaceImplCopyWithImpl<_$FileEditReplaceImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newContent) replace,
    required TResult Function(String patchData) patch,
    required TResult Function(String contentToAppend) append,
    required TResult Function(String contentToPrepend) prepend,
  }) {
    return replace(newContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newContent)? replace,
    TResult? Function(String patchData)? patch,
    TResult? Function(String contentToAppend)? append,
    TResult? Function(String contentToPrepend)? prepend,
  }) {
    return replace?.call(newContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newContent)? replace,
    TResult Function(String patchData)? patch,
    TResult Function(String contentToAppend)? append,
    TResult Function(String contentToPrepend)? prepend,
    required TResult orElse(),
  }) {
    if (replace != null) {
      return replace(newContent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileEditReplace value) replace,
    required TResult Function(FileEditPatch value) patch,
    required TResult Function(FileEditAppend value) append,
    required TResult Function(FileEditPrepend value) prepend,
  }) {
    return replace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileEditReplace value)? replace,
    TResult? Function(FileEditPatch value)? patch,
    TResult? Function(FileEditAppend value)? append,
    TResult? Function(FileEditPrepend value)? prepend,
  }) {
    return replace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileEditReplace value)? replace,
    TResult Function(FileEditPatch value)? patch,
    TResult Function(FileEditAppend value)? append,
    TResult Function(FileEditPrepend value)? prepend,
    required TResult orElse(),
  }) {
    if (replace != null) {
      return replace(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FileEditReplaceImplToJson(this);
  }
}

abstract class FileEditReplace implements FileEdit {
  const factory FileEditReplace({required final String newContent}) =
      _$FileEditReplaceImpl;

  factory FileEditReplace.fromJson(Map<String, dynamic> json) =
      _$FileEditReplaceImpl.fromJson;

  String get newContent;

  /// Create a copy of FileEdit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileEditReplaceImplCopyWith<_$FileEditReplaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileEditPatchImplCopyWith<$Res> {
  factory _$$FileEditPatchImplCopyWith(
    _$FileEditPatchImpl value,
    $Res Function(_$FileEditPatchImpl) then,
  ) = __$$FileEditPatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String patchData});
}

/// @nodoc
class __$$FileEditPatchImplCopyWithImpl<$Res>
    extends _$FileEditCopyWithImpl<$Res, _$FileEditPatchImpl>
    implements _$$FileEditPatchImplCopyWith<$Res> {
  __$$FileEditPatchImplCopyWithImpl(
    _$FileEditPatchImpl _value,
    $Res Function(_$FileEditPatchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FileEdit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? patchData = null}) {
    return _then(
      _$FileEditPatchImpl(
        patchData: null == patchData
            ? _value.patchData
            : patchData // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FileEditPatchImpl implements FileEditPatch {
  const _$FileEditPatchImpl({required this.patchData, final String? $type})
    : $type = $type ?? 'patch';

  factory _$FileEditPatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileEditPatchImplFromJson(json);

  @override
  final String patchData;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FileEdit.patch(patchData: $patchData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileEditPatchImpl &&
            (identical(other.patchData, patchData) ||
                other.patchData == patchData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, patchData);

  /// Create a copy of FileEdit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileEditPatchImplCopyWith<_$FileEditPatchImpl> get copyWith =>
      __$$FileEditPatchImplCopyWithImpl<_$FileEditPatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newContent) replace,
    required TResult Function(String patchData) patch,
    required TResult Function(String contentToAppend) append,
    required TResult Function(String contentToPrepend) prepend,
  }) {
    return patch(patchData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newContent)? replace,
    TResult? Function(String patchData)? patch,
    TResult? Function(String contentToAppend)? append,
    TResult? Function(String contentToPrepend)? prepend,
  }) {
    return patch?.call(patchData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newContent)? replace,
    TResult Function(String patchData)? patch,
    TResult Function(String contentToAppend)? append,
    TResult Function(String contentToPrepend)? prepend,
    required TResult orElse(),
  }) {
    if (patch != null) {
      return patch(patchData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileEditReplace value) replace,
    required TResult Function(FileEditPatch value) patch,
    required TResult Function(FileEditAppend value) append,
    required TResult Function(FileEditPrepend value) prepend,
  }) {
    return patch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileEditReplace value)? replace,
    TResult? Function(FileEditPatch value)? patch,
    TResult? Function(FileEditAppend value)? append,
    TResult? Function(FileEditPrepend value)? prepend,
  }) {
    return patch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileEditReplace value)? replace,
    TResult Function(FileEditPatch value)? patch,
    TResult Function(FileEditAppend value)? append,
    TResult Function(FileEditPrepend value)? prepend,
    required TResult orElse(),
  }) {
    if (patch != null) {
      return patch(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FileEditPatchImplToJson(this);
  }
}

abstract class FileEditPatch implements FileEdit {
  const factory FileEditPatch({required final String patchData}) =
      _$FileEditPatchImpl;

  factory FileEditPatch.fromJson(Map<String, dynamic> json) =
      _$FileEditPatchImpl.fromJson;

  String get patchData;

  /// Create a copy of FileEdit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileEditPatchImplCopyWith<_$FileEditPatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileEditAppendImplCopyWith<$Res> {
  factory _$$FileEditAppendImplCopyWith(
    _$FileEditAppendImpl value,
    $Res Function(_$FileEditAppendImpl) then,
  ) = __$$FileEditAppendImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String contentToAppend});
}

/// @nodoc
class __$$FileEditAppendImplCopyWithImpl<$Res>
    extends _$FileEditCopyWithImpl<$Res, _$FileEditAppendImpl>
    implements _$$FileEditAppendImplCopyWith<$Res> {
  __$$FileEditAppendImplCopyWithImpl(
    _$FileEditAppendImpl _value,
    $Res Function(_$FileEditAppendImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FileEdit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? contentToAppend = null}) {
    return _then(
      _$FileEditAppendImpl(
        contentToAppend: null == contentToAppend
            ? _value.contentToAppend
            : contentToAppend // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FileEditAppendImpl implements FileEditAppend {
  const _$FileEditAppendImpl({
    required this.contentToAppend,
    final String? $type,
  }) : $type = $type ?? 'append';

  factory _$FileEditAppendImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileEditAppendImplFromJson(json);

  @override
  final String contentToAppend;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FileEdit.append(contentToAppend: $contentToAppend)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileEditAppendImpl &&
            (identical(other.contentToAppend, contentToAppend) ||
                other.contentToAppend == contentToAppend));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, contentToAppend);

  /// Create a copy of FileEdit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileEditAppendImplCopyWith<_$FileEditAppendImpl> get copyWith =>
      __$$FileEditAppendImplCopyWithImpl<_$FileEditAppendImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newContent) replace,
    required TResult Function(String patchData) patch,
    required TResult Function(String contentToAppend) append,
    required TResult Function(String contentToPrepend) prepend,
  }) {
    return append(contentToAppend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newContent)? replace,
    TResult? Function(String patchData)? patch,
    TResult? Function(String contentToAppend)? append,
    TResult? Function(String contentToPrepend)? prepend,
  }) {
    return append?.call(contentToAppend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newContent)? replace,
    TResult Function(String patchData)? patch,
    TResult Function(String contentToAppend)? append,
    TResult Function(String contentToPrepend)? prepend,
    required TResult orElse(),
  }) {
    if (append != null) {
      return append(contentToAppend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileEditReplace value) replace,
    required TResult Function(FileEditPatch value) patch,
    required TResult Function(FileEditAppend value) append,
    required TResult Function(FileEditPrepend value) prepend,
  }) {
    return append(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileEditReplace value)? replace,
    TResult? Function(FileEditPatch value)? patch,
    TResult? Function(FileEditAppend value)? append,
    TResult? Function(FileEditPrepend value)? prepend,
  }) {
    return append?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileEditReplace value)? replace,
    TResult Function(FileEditPatch value)? patch,
    TResult Function(FileEditAppend value)? append,
    TResult Function(FileEditPrepend value)? prepend,
    required TResult orElse(),
  }) {
    if (append != null) {
      return append(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FileEditAppendImplToJson(this);
  }
}

abstract class FileEditAppend implements FileEdit {
  const factory FileEditAppend({required final String contentToAppend}) =
      _$FileEditAppendImpl;

  factory FileEditAppend.fromJson(Map<String, dynamic> json) =
      _$FileEditAppendImpl.fromJson;

  String get contentToAppend;

  /// Create a copy of FileEdit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileEditAppendImplCopyWith<_$FileEditAppendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileEditPrependImplCopyWith<$Res> {
  factory _$$FileEditPrependImplCopyWith(
    _$FileEditPrependImpl value,
    $Res Function(_$FileEditPrependImpl) then,
  ) = __$$FileEditPrependImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String contentToPrepend});
}

/// @nodoc
class __$$FileEditPrependImplCopyWithImpl<$Res>
    extends _$FileEditCopyWithImpl<$Res, _$FileEditPrependImpl>
    implements _$$FileEditPrependImplCopyWith<$Res> {
  __$$FileEditPrependImplCopyWithImpl(
    _$FileEditPrependImpl _value,
    $Res Function(_$FileEditPrependImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FileEdit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? contentToPrepend = null}) {
    return _then(
      _$FileEditPrependImpl(
        contentToPrepend: null == contentToPrepend
            ? _value.contentToPrepend
            : contentToPrepend // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FileEditPrependImpl implements FileEditPrepend {
  const _$FileEditPrependImpl({
    required this.contentToPrepend,
    final String? $type,
  }) : $type = $type ?? 'prepend';

  factory _$FileEditPrependImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileEditPrependImplFromJson(json);

  @override
  final String contentToPrepend;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FileEdit.prepend(contentToPrepend: $contentToPrepend)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileEditPrependImpl &&
            (identical(other.contentToPrepend, contentToPrepend) ||
                other.contentToPrepend == contentToPrepend));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, contentToPrepend);

  /// Create a copy of FileEdit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileEditPrependImplCopyWith<_$FileEditPrependImpl> get copyWith =>
      __$$FileEditPrependImplCopyWithImpl<_$FileEditPrependImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newContent) replace,
    required TResult Function(String patchData) patch,
    required TResult Function(String contentToAppend) append,
    required TResult Function(String contentToPrepend) prepend,
  }) {
    return prepend(contentToPrepend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newContent)? replace,
    TResult? Function(String patchData)? patch,
    TResult? Function(String contentToAppend)? append,
    TResult? Function(String contentToPrepend)? prepend,
  }) {
    return prepend?.call(contentToPrepend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newContent)? replace,
    TResult Function(String patchData)? patch,
    TResult Function(String contentToAppend)? append,
    TResult Function(String contentToPrepend)? prepend,
    required TResult orElse(),
  }) {
    if (prepend != null) {
      return prepend(contentToPrepend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileEditReplace value) replace,
    required TResult Function(FileEditPatch value) patch,
    required TResult Function(FileEditAppend value) append,
    required TResult Function(FileEditPrepend value) prepend,
  }) {
    return prepend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileEditReplace value)? replace,
    TResult? Function(FileEditPatch value)? patch,
    TResult? Function(FileEditAppend value)? append,
    TResult? Function(FileEditPrepend value)? prepend,
  }) {
    return prepend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileEditReplace value)? replace,
    TResult Function(FileEditPatch value)? patch,
    TResult Function(FileEditAppend value)? append,
    TResult Function(FileEditPrepend value)? prepend,
    required TResult orElse(),
  }) {
    if (prepend != null) {
      return prepend(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FileEditPrependImplToJson(this);
  }
}

abstract class FileEditPrepend implements FileEdit {
  const factory FileEditPrepend({required final String contentToPrepend}) =
      _$FileEditPrependImpl;

  factory FileEditPrepend.fromJson(Map<String, dynamic> json) =
      _$FileEditPrependImpl.fromJson;

  String get contentToPrepend;

  /// Create a copy of FileEdit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileEditPrependImplCopyWith<_$FileEditPrependImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EditFileResult _$EditFileResultFromJson(Map<String, dynamic> json) {
  return _EditFileResult.fromJson(json);
}

/// @nodoc
mixin _$EditFileResult {
  /// The updated file entry after editing
  FsEntry get updatedFile => throw _privateConstructorUsedError;

  /// Whether the file was modified
  bool get wasModified => throw _privateConstructorUsedError;

  /// Size change in bytes (positive for increase, negative for decrease)
  int get sizeChange => throw _privateConstructorUsedError;

  /// Serializes this EditFileResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditFileResultCopyWith<EditFileResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditFileResultCopyWith<$Res> {
  factory $EditFileResultCopyWith(
    EditFileResult value,
    $Res Function(EditFileResult) then,
  ) = _$EditFileResultCopyWithImpl<$Res, EditFileResult>;
  @useResult
  $Res call({FsEntry updatedFile, bool wasModified, int sizeChange});

  $FsEntryCopyWith<$Res> get updatedFile;
}

/// @nodoc
class _$EditFileResultCopyWithImpl<$Res, $Val extends EditFileResult>
    implements $EditFileResultCopyWith<$Res> {
  _$EditFileResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedFile = null,
    Object? wasModified = null,
    Object? sizeChange = null,
  }) {
    return _then(
      _value.copyWith(
            updatedFile: null == updatedFile
                ? _value.updatedFile
                : updatedFile // ignore: cast_nullable_to_non_nullable
                      as FsEntry,
            wasModified: null == wasModified
                ? _value.wasModified
                : wasModified // ignore: cast_nullable_to_non_nullable
                      as bool,
            sizeChange: null == sizeChange
                ? _value.sizeChange
                : sizeChange // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of EditFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FsEntryCopyWith<$Res> get updatedFile {
    return $FsEntryCopyWith<$Res>(_value.updatedFile, (value) {
      return _then(_value.copyWith(updatedFile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditFileResultImplCopyWith<$Res>
    implements $EditFileResultCopyWith<$Res> {
  factory _$$EditFileResultImplCopyWith(
    _$EditFileResultImpl value,
    $Res Function(_$EditFileResultImpl) then,
  ) = __$$EditFileResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FsEntry updatedFile, bool wasModified, int sizeChange});

  @override
  $FsEntryCopyWith<$Res> get updatedFile;
}

/// @nodoc
class __$$EditFileResultImplCopyWithImpl<$Res>
    extends _$EditFileResultCopyWithImpl<$Res, _$EditFileResultImpl>
    implements _$$EditFileResultImplCopyWith<$Res> {
  __$$EditFileResultImplCopyWithImpl(
    _$EditFileResultImpl _value,
    $Res Function(_$EditFileResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditFileResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedFile = null,
    Object? wasModified = null,
    Object? sizeChange = null,
  }) {
    return _then(
      _$EditFileResultImpl(
        updatedFile: null == updatedFile
            ? _value.updatedFile
            : updatedFile // ignore: cast_nullable_to_non_nullable
                  as FsEntry,
        wasModified: null == wasModified
            ? _value.wasModified
            : wasModified // ignore: cast_nullable_to_non_nullable
                  as bool,
        sizeChange: null == sizeChange
            ? _value.sizeChange
            : sizeChange // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EditFileResultImpl implements _EditFileResult {
  const _$EditFileResultImpl({
    required this.updatedFile,
    required this.wasModified,
    required this.sizeChange,
  });

  factory _$EditFileResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditFileResultImplFromJson(json);

  /// The updated file entry after editing
  @override
  final FsEntry updatedFile;

  /// Whether the file was modified
  @override
  final bool wasModified;

  /// Size change in bytes (positive for increase, negative for decrease)
  @override
  final int sizeChange;

  @override
  String toString() {
    return 'EditFileResult(updatedFile: $updatedFile, wasModified: $wasModified, sizeChange: $sizeChange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditFileResultImpl &&
            (identical(other.updatedFile, updatedFile) ||
                other.updatedFile == updatedFile) &&
            (identical(other.wasModified, wasModified) ||
                other.wasModified == wasModified) &&
            (identical(other.sizeChange, sizeChange) ||
                other.sizeChange == sizeChange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, updatedFile, wasModified, sizeChange);

  /// Create a copy of EditFileResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditFileResultImplCopyWith<_$EditFileResultImpl> get copyWith =>
      __$$EditFileResultImplCopyWithImpl<_$EditFileResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EditFileResultImplToJson(this);
  }
}

abstract class _EditFileResult implements EditFileResult {
  const factory _EditFileResult({
    required final FsEntry updatedFile,
    required final bool wasModified,
    required final int sizeChange,
  }) = _$EditFileResultImpl;

  factory _EditFileResult.fromJson(Map<String, dynamic> json) =
      _$EditFileResultImpl.fromJson;

  /// The updated file entry after editing
  @override
  FsEntry get updatedFile;

  /// Whether the file was modified
  @override
  bool get wasModified;

  /// Size change in bytes (positive for increase, negative for decrease)
  @override
  int get sizeChange;

  /// Create a copy of EditFileResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditFileResultImplCopyWith<_$EditFileResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EditFileTask _$EditFileTaskFromJson(Map<String, dynamic> json) {
  return _EditFileTask.fromJson(json);
}

/// @nodoc
mixin _$EditFileTask {
  /// ID of the file to edit
  String get fileId => throw _privateConstructorUsedError;

  /// The edit operation to apply
  FileEdit get edit => throw _privateConstructorUsedError;

  /// Whether to create backup before editing
  bool get createBackup => throw _privateConstructorUsedError;

  /// Expected file kinds that support text editing
  List<FileKind> get supportedKinds => throw _privateConstructorUsedError;

  /// Serializes this EditFileTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditFileTaskCopyWith<EditFileTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditFileTaskCopyWith<$Res> {
  factory $EditFileTaskCopyWith(
    EditFileTask value,
    $Res Function(EditFileTask) then,
  ) = _$EditFileTaskCopyWithImpl<$Res, EditFileTask>;
  @useResult
  $Res call({
    String fileId,
    FileEdit edit,
    bool createBackup,
    List<FileKind> supportedKinds,
  });

  $FileEditCopyWith<$Res> get edit;
}

/// @nodoc
class _$EditFileTaskCopyWithImpl<$Res, $Val extends EditFileTask>
    implements $EditFileTaskCopyWith<$Res> {
  _$EditFileTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? edit = null,
    Object? createBackup = null,
    Object? supportedKinds = null,
  }) {
    return _then(
      _value.copyWith(
            fileId: null == fileId
                ? _value.fileId
                : fileId // ignore: cast_nullable_to_non_nullable
                      as String,
            edit: null == edit
                ? _value.edit
                : edit // ignore: cast_nullable_to_non_nullable
                      as FileEdit,
            createBackup: null == createBackup
                ? _value.createBackup
                : createBackup // ignore: cast_nullable_to_non_nullable
                      as bool,
            supportedKinds: null == supportedKinds
                ? _value.supportedKinds
                : supportedKinds // ignore: cast_nullable_to_non_nullable
                      as List<FileKind>,
          )
          as $Val,
    );
  }

  /// Create a copy of EditFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileEditCopyWith<$Res> get edit {
    return $FileEditCopyWith<$Res>(_value.edit, (value) {
      return _then(_value.copyWith(edit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditFileTaskImplCopyWith<$Res>
    implements $EditFileTaskCopyWith<$Res> {
  factory _$$EditFileTaskImplCopyWith(
    _$EditFileTaskImpl value,
    $Res Function(_$EditFileTaskImpl) then,
  ) = __$$EditFileTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String fileId,
    FileEdit edit,
    bool createBackup,
    List<FileKind> supportedKinds,
  });

  @override
  $FileEditCopyWith<$Res> get edit;
}

/// @nodoc
class __$$EditFileTaskImplCopyWithImpl<$Res>
    extends _$EditFileTaskCopyWithImpl<$Res, _$EditFileTaskImpl>
    implements _$$EditFileTaskImplCopyWith<$Res> {
  __$$EditFileTaskImplCopyWithImpl(
    _$EditFileTaskImpl _value,
    $Res Function(_$EditFileTaskImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EditFileTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? edit = null,
    Object? createBackup = null,
    Object? supportedKinds = null,
  }) {
    return _then(
      _$EditFileTaskImpl(
        fileId: null == fileId
            ? _value.fileId
            : fileId // ignore: cast_nullable_to_non_nullable
                  as String,
        edit: null == edit
            ? _value.edit
            : edit // ignore: cast_nullable_to_non_nullable
                  as FileEdit,
        createBackup: null == createBackup
            ? _value.createBackup
            : createBackup // ignore: cast_nullable_to_non_nullable
                  as bool,
        supportedKinds: null == supportedKinds
            ? _value._supportedKinds
            : supportedKinds // ignore: cast_nullable_to_non_nullable
                  as List<FileKind>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EditFileTaskImpl extends _EditFileTask {
  const _$EditFileTaskImpl({
    required this.fileId,
    required this.edit,
    this.createBackup = false,
    final List<FileKind> supportedKinds = const [
      FileKind.document,
      FileKind.code,
      FileKind.script,
      FileKind.markdown,
      FileKind.json,
      FileKind.csv,
    ],
  }) : _supportedKinds = supportedKinds,
       super._();

  factory _$EditFileTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditFileTaskImplFromJson(json);

  /// ID of the file to edit
  @override
  final String fileId;

  /// The edit operation to apply
  @override
  final FileEdit edit;

  /// Whether to create backup before editing
  @override
  @JsonKey()
  final bool createBackup;

  /// Expected file kinds that support text editing
  final List<FileKind> _supportedKinds;

  /// Expected file kinds that support text editing
  @override
  @JsonKey()
  List<FileKind> get supportedKinds {
    if (_supportedKinds is EqualUnmodifiableListView) return _supportedKinds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedKinds);
  }

  @override
  String toString() {
    return 'EditFileTask(fileId: $fileId, edit: $edit, createBackup: $createBackup, supportedKinds: $supportedKinds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditFileTaskImpl &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.edit, edit) || other.edit == edit) &&
            (identical(other.createBackup, createBackup) ||
                other.createBackup == createBackup) &&
            const DeepCollectionEquality().equals(
              other._supportedKinds,
              _supportedKinds,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    fileId,
    edit,
    createBackup,
    const DeepCollectionEquality().hash(_supportedKinds),
  );

  /// Create a copy of EditFileTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditFileTaskImplCopyWith<_$EditFileTaskImpl> get copyWith =>
      __$$EditFileTaskImplCopyWithImpl<_$EditFileTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditFileTaskImplToJson(this);
  }
}

abstract class _EditFileTask extends EditFileTask {
  const factory _EditFileTask({
    required final String fileId,
    required final FileEdit edit,
    final bool createBackup,
    final List<FileKind> supportedKinds,
  }) = _$EditFileTaskImpl;
  const _EditFileTask._() : super._();

  factory _EditFileTask.fromJson(Map<String, dynamic> json) =
      _$EditFileTaskImpl.fromJson;

  /// ID of the file to edit
  @override
  String get fileId;

  /// The edit operation to apply
  @override
  FileEdit get edit;

  /// Whether to create backup before editing
  @override
  bool get createBackup;

  /// Expected file kinds that support text editing
  @override
  List<FileKind> get supportedKinds;

  /// Create a copy of EditFileTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditFileTaskImplCopyWith<_$EditFileTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
