// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draggable_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DraggableObject _$DraggableObjectFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'single':
      return DraggableSingle.fromJson(json);
    case 'multiple':
      return DraggableMultiple.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'DraggableObject',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$DraggableObject {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FsEntry entry) single,
    required TResult Function(List<FsEntry> entries) multiple,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FsEntry entry)? single,
    TResult? Function(List<FsEntry> entries)? multiple,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FsEntry entry)? single,
    TResult Function(List<FsEntry> entries)? multiple,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableSingle value) single,
    required TResult Function(DraggableMultiple value) multiple,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableSingle value)? single,
    TResult? Function(DraggableMultiple value)? multiple,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableSingle value)? single,
    TResult Function(DraggableMultiple value)? multiple,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this DraggableObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraggableObjectCopyWith<$Res> {
  factory $DraggableObjectCopyWith(
    DraggableObject value,
    $Res Function(DraggableObject) then,
  ) = _$DraggableObjectCopyWithImpl<$Res, DraggableObject>;
}

/// @nodoc
class _$DraggableObjectCopyWithImpl<$Res, $Val extends DraggableObject>
    implements $DraggableObjectCopyWith<$Res> {
  _$DraggableObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DraggableObject
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DraggableSingleImplCopyWith<$Res> {
  factory _$$DraggableSingleImplCopyWith(
    _$DraggableSingleImpl value,
    $Res Function(_$DraggableSingleImpl) then,
  ) = __$$DraggableSingleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FsEntry entry});

  $FsEntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$DraggableSingleImplCopyWithImpl<$Res>
    extends _$DraggableObjectCopyWithImpl<$Res, _$DraggableSingleImpl>
    implements _$$DraggableSingleImplCopyWith<$Res> {
  __$$DraggableSingleImplCopyWithImpl(
    _$DraggableSingleImpl _value,
    $Res Function(_$DraggableSingleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DraggableObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? entry = null}) {
    return _then(
      _$DraggableSingleImpl(
        entry: null == entry
            ? _value.entry
            : entry // ignore: cast_nullable_to_non_nullable
                  as FsEntry,
      ),
    );
  }

  /// Create a copy of DraggableObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FsEntryCopyWith<$Res> get entry {
    return $FsEntryCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DraggableSingleImpl extends DraggableSingle {
  const _$DraggableSingleImpl({required this.entry, final String? $type})
    : $type = $type ?? 'single',
      super._();

  factory _$DraggableSingleImpl.fromJson(Map<String, dynamic> json) =>
      _$$DraggableSingleImplFromJson(json);

  @override
  final FsEntry entry;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DraggableObject.single(entry: $entry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DraggableSingleImpl &&
            (identical(other.entry, entry) || other.entry == entry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entry);

  /// Create a copy of DraggableObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DraggableSingleImplCopyWith<_$DraggableSingleImpl> get copyWith =>
      __$$DraggableSingleImplCopyWithImpl<_$DraggableSingleImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FsEntry entry) single,
    required TResult Function(List<FsEntry> entries) multiple,
  }) {
    return single(entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FsEntry entry)? single,
    TResult? Function(List<FsEntry> entries)? multiple,
  }) {
    return single?.call(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FsEntry entry)? single,
    TResult Function(List<FsEntry> entries)? multiple,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableSingle value) single,
    required TResult Function(DraggableMultiple value) multiple,
  }) {
    return single(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableSingle value)? single,
    TResult? Function(DraggableMultiple value)? multiple,
  }) {
    return single?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableSingle value)? single,
    TResult Function(DraggableMultiple value)? multiple,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DraggableSingleImplToJson(this);
  }
}

abstract class DraggableSingle extends DraggableObject {
  const factory DraggableSingle({required final FsEntry entry}) =
      _$DraggableSingleImpl;
  const DraggableSingle._() : super._();

  factory DraggableSingle.fromJson(Map<String, dynamic> json) =
      _$DraggableSingleImpl.fromJson;

  FsEntry get entry;

  /// Create a copy of DraggableObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DraggableSingleImplCopyWith<_$DraggableSingleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DraggableMultipleImplCopyWith<$Res> {
  factory _$$DraggableMultipleImplCopyWith(
    _$DraggableMultipleImpl value,
    $Res Function(_$DraggableMultipleImpl) then,
  ) = __$$DraggableMultipleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FsEntry> entries});
}

/// @nodoc
class __$$DraggableMultipleImplCopyWithImpl<$Res>
    extends _$DraggableObjectCopyWithImpl<$Res, _$DraggableMultipleImpl>
    implements _$$DraggableMultipleImplCopyWith<$Res> {
  __$$DraggableMultipleImplCopyWithImpl(
    _$DraggableMultipleImpl _value,
    $Res Function(_$DraggableMultipleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DraggableObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? entries = null}) {
    return _then(
      _$DraggableMultipleImpl(
        entries: null == entries
            ? _value._entries
            : entries // ignore: cast_nullable_to_non_nullable
                  as List<FsEntry>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DraggableMultipleImpl extends DraggableMultiple {
  const _$DraggableMultipleImpl({
    required final List<FsEntry> entries,
    final String? $type,
  }) : _entries = entries,
       $type = $type ?? 'multiple',
       super._();

  factory _$DraggableMultipleImpl.fromJson(Map<String, dynamic> json) =>
      _$$DraggableMultipleImplFromJson(json);

  final List<FsEntry> _entries;
  @override
  List<FsEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DraggableObject.multiple(entries: $entries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DraggableMultipleImpl &&
            const DeepCollectionEquality().equals(other._entries, _entries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_entries));

  /// Create a copy of DraggableObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DraggableMultipleImplCopyWith<_$DraggableMultipleImpl> get copyWith =>
      __$$DraggableMultipleImplCopyWithImpl<_$DraggableMultipleImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FsEntry entry) single,
    required TResult Function(List<FsEntry> entries) multiple,
  }) {
    return multiple(entries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FsEntry entry)? single,
    TResult? Function(List<FsEntry> entries)? multiple,
  }) {
    return multiple?.call(entries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FsEntry entry)? single,
    TResult Function(List<FsEntry> entries)? multiple,
    required TResult orElse(),
  }) {
    if (multiple != null) {
      return multiple(entries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DraggableSingle value) single,
    required TResult Function(DraggableMultiple value) multiple,
  }) {
    return multiple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DraggableSingle value)? single,
    TResult? Function(DraggableMultiple value)? multiple,
  }) {
    return multiple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DraggableSingle value)? single,
    TResult Function(DraggableMultiple value)? multiple,
    required TResult orElse(),
  }) {
    if (multiple != null) {
      return multiple(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DraggableMultipleImplToJson(this);
  }
}

abstract class DraggableMultiple extends DraggableObject {
  const factory DraggableMultiple({required final List<FsEntry> entries}) =
      _$DraggableMultipleImpl;
  const DraggableMultiple._() : super._();

  factory DraggableMultiple.fromJson(Map<String, dynamic> json) =
      _$DraggableMultipleImpl.fromJson;

  List<FsEntry> get entries;

  /// Create a copy of DraggableObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DraggableMultipleImplCopyWith<_$DraggableMultipleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
