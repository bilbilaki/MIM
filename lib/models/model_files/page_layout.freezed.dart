// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_layout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PageLayout _$PageLayoutFromJson(Map<String, dynamic> json) {
  return _PageLayout.fromJson(json);
}

/// @nodoc
mixin _$PageLayout {
  /// Unique identifier for this layout
  String get id => throw _privateConstructorUsedError;

  /// Display name of the layout
  String get name => throw _privateConstructorUsedError;

  /// Description of the layout purpose
  String? get description => throw _privateConstructorUsedError;

  /// References to filesystem entries included in this layout
  /// Each entry is referenced by its FsEntry ID
  List<String> get entryIds => throw _privateConstructorUsedError;

  /// Layout configuration data (positions, sizes, z-order, etc.)
  /// Structure depends on the specific layout system
  Map<String, dynamic> get layoutData => throw _privateConstructorUsedError;

  /// Metadata about when this layout was created/modified
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Additional custom properties
  Map<String, dynamic> get customProperties =>
      throw _privateConstructorUsedError;

  /// Serializes this PageLayout to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PageLayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageLayoutCopyWith<PageLayout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageLayoutCopyWith<$Res> {
  factory $PageLayoutCopyWith(
    PageLayout value,
    $Res Function(PageLayout) then,
  ) = _$PageLayoutCopyWithImpl<$Res, PageLayout>;
  @useResult
  $Res call({
    String id,
    String name,
    String? description,
    List<String> entryIds,
    Map<String, dynamic> layoutData,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic> customProperties,
  });
}

/// @nodoc
class _$PageLayoutCopyWithImpl<$Res, $Val extends PageLayout>
    implements $PageLayoutCopyWith<$Res> {
  _$PageLayoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageLayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? entryIds = null,
    Object? layoutData = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customProperties = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            entryIds: null == entryIds
                ? _value.entryIds
                : entryIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            layoutData: null == layoutData
                ? _value.layoutData
                : layoutData // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            customProperties: null == customProperties
                ? _value.customProperties
                : customProperties // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PageLayoutImplCopyWith<$Res>
    implements $PageLayoutCopyWith<$Res> {
  factory _$$PageLayoutImplCopyWith(
    _$PageLayoutImpl value,
    $Res Function(_$PageLayoutImpl) then,
  ) = __$$PageLayoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String? description,
    List<String> entryIds,
    Map<String, dynamic> layoutData,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic> customProperties,
  });
}

/// @nodoc
class __$$PageLayoutImplCopyWithImpl<$Res>
    extends _$PageLayoutCopyWithImpl<$Res, _$PageLayoutImpl>
    implements _$$PageLayoutImplCopyWith<$Res> {
  __$$PageLayoutImplCopyWithImpl(
    _$PageLayoutImpl _value,
    $Res Function(_$PageLayoutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PageLayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? entryIds = null,
    Object? layoutData = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customProperties = null,
  }) {
    return _then(
      _$PageLayoutImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        entryIds: null == entryIds
            ? _value._entryIds
            : entryIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        layoutData: null == layoutData
            ? _value._layoutData
            : layoutData // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        customProperties: null == customProperties
            ? _value._customProperties
            : customProperties // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PageLayoutImpl implements _PageLayout {
  const _$PageLayoutImpl({
    required this.id,
    required this.name,
    this.description,
    final List<String> entryIds = const <String>[],
    final Map<String, dynamic> layoutData = const <String, dynamic>{},
    this.createdAt,
    this.updatedAt,
    final Map<String, dynamic> customProperties = const <String, dynamic>{},
  }) : _entryIds = entryIds,
       _layoutData = layoutData,
       _customProperties = customProperties;

  factory _$PageLayoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageLayoutImplFromJson(json);

  /// Unique identifier for this layout
  @override
  final String id;

  /// Display name of the layout
  @override
  final String name;

  /// Description of the layout purpose
  @override
  final String? description;

  /// References to filesystem entries included in this layout
  /// Each entry is referenced by its FsEntry ID
  final List<String> _entryIds;

  /// References to filesystem entries included in this layout
  /// Each entry is referenced by its FsEntry ID
  @override
  @JsonKey()
  List<String> get entryIds {
    if (_entryIds is EqualUnmodifiableListView) return _entryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entryIds);
  }

  /// Layout configuration data (positions, sizes, z-order, etc.)
  /// Structure depends on the specific layout system
  final Map<String, dynamic> _layoutData;

  /// Layout configuration data (positions, sizes, z-order, etc.)
  /// Structure depends on the specific layout system
  @override
  @JsonKey()
  Map<String, dynamic> get layoutData {
    if (_layoutData is EqualUnmodifiableMapView) return _layoutData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_layoutData);
  }

  /// Metadata about when this layout was created/modified
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  /// Additional custom properties
  final Map<String, dynamic> _customProperties;

  /// Additional custom properties
  @override
  @JsonKey()
  Map<String, dynamic> get customProperties {
    if (_customProperties is EqualUnmodifiableMapView) return _customProperties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_customProperties);
  }

  @override
  String toString() {
    return 'PageLayout(id: $id, name: $name, description: $description, entryIds: $entryIds, layoutData: $layoutData, createdAt: $createdAt, updatedAt: $updatedAt, customProperties: $customProperties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageLayoutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._entryIds, _entryIds) &&
            const DeepCollectionEquality().equals(
              other._layoutData,
              _layoutData,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(
              other._customProperties,
              _customProperties,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    const DeepCollectionEquality().hash(_entryIds),
    const DeepCollectionEquality().hash(_layoutData),
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_customProperties),
  );

  /// Create a copy of PageLayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageLayoutImplCopyWith<_$PageLayoutImpl> get copyWith =>
      __$$PageLayoutImplCopyWithImpl<_$PageLayoutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageLayoutImplToJson(this);
  }
}

abstract class _PageLayout implements PageLayout {
  const factory _PageLayout({
    required final String id,
    required final String name,
    final String? description,
    final List<String> entryIds,
    final Map<String, dynamic> layoutData,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final Map<String, dynamic> customProperties,
  }) = _$PageLayoutImpl;

  factory _PageLayout.fromJson(Map<String, dynamic> json) =
      _$PageLayoutImpl.fromJson;

  /// Unique identifier for this layout
  @override
  String get id;

  /// Display name of the layout
  @override
  String get name;

  /// Description of the layout purpose
  @override
  String? get description;

  /// References to filesystem entries included in this layout
  /// Each entry is referenced by its FsEntry ID
  @override
  List<String> get entryIds;

  /// Layout configuration data (positions, sizes, z-order, etc.)
  /// Structure depends on the specific layout system
  @override
  Map<String, dynamic> get layoutData;

  /// Metadata about when this layout was created/modified
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Additional custom properties
  @override
  Map<String, dynamic> get customProperties;

  /// Create a copy of PageLayout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageLayoutImplCopyWith<_$PageLayoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LayoutItem _$LayoutItemFromJson(Map<String, dynamic> json) {
  return _LayoutItem.fromJson(json);
}

/// @nodoc
mixin _$LayoutItem {
  /// ID of the filesystem entry displayed in this panel
  String get entryId => throw _privateConstructorUsedError;

  /// Position and size information
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;

  /// Z-order for overlapping panels
  int get zIndex => throw _privateConstructorUsedError;

  /// Panel-specific configuration
  Map<String, dynamic> get panelConfig => throw _privateConstructorUsedError;

  /// Whether this panel is currently visible
  bool get visible => throw _privateConstructorUsedError;

  /// Serializes this LayoutItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LayoutItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LayoutItemCopyWith<LayoutItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoutItemCopyWith<$Res> {
  factory $LayoutItemCopyWith(
    LayoutItem value,
    $Res Function(LayoutItem) then,
  ) = _$LayoutItemCopyWithImpl<$Res, LayoutItem>;
  @useResult
  $Res call({
    String entryId,
    double x,
    double y,
    double width,
    double height,
    int zIndex,
    Map<String, dynamic> panelConfig,
    bool visible,
  });
}

/// @nodoc
class _$LayoutItemCopyWithImpl<$Res, $Val extends LayoutItem>
    implements $LayoutItemCopyWith<$Res> {
  _$LayoutItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LayoutItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? x = null,
    Object? y = null,
    Object? width = null,
    Object? height = null,
    Object? zIndex = null,
    Object? panelConfig = null,
    Object? visible = null,
  }) {
    return _then(
      _value.copyWith(
            entryId: null == entryId
                ? _value.entryId
                : entryId // ignore: cast_nullable_to_non_nullable
                      as String,
            x: null == x
                ? _value.x
                : x // ignore: cast_nullable_to_non_nullable
                      as double,
            y: null == y
                ? _value.y
                : y // ignore: cast_nullable_to_non_nullable
                      as double,
            width: null == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                      as double,
            height: null == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                      as double,
            zIndex: null == zIndex
                ? _value.zIndex
                : zIndex // ignore: cast_nullable_to_non_nullable
                      as int,
            panelConfig: null == panelConfig
                ? _value.panelConfig
                : panelConfig // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            visible: null == visible
                ? _value.visible
                : visible // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LayoutItemImplCopyWith<$Res>
    implements $LayoutItemCopyWith<$Res> {
  factory _$$LayoutItemImplCopyWith(
    _$LayoutItemImpl value,
    $Res Function(_$LayoutItemImpl) then,
  ) = __$$LayoutItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String entryId,
    double x,
    double y,
    double width,
    double height,
    int zIndex,
    Map<String, dynamic> panelConfig,
    bool visible,
  });
}

/// @nodoc
class __$$LayoutItemImplCopyWithImpl<$Res>
    extends _$LayoutItemCopyWithImpl<$Res, _$LayoutItemImpl>
    implements _$$LayoutItemImplCopyWith<$Res> {
  __$$LayoutItemImplCopyWithImpl(
    _$LayoutItemImpl _value,
    $Res Function(_$LayoutItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LayoutItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? x = null,
    Object? y = null,
    Object? width = null,
    Object? height = null,
    Object? zIndex = null,
    Object? panelConfig = null,
    Object? visible = null,
  }) {
    return _then(
      _$LayoutItemImpl(
        entryId: null == entryId
            ? _value.entryId
            : entryId // ignore: cast_nullable_to_non_nullable
                  as String,
        x: null == x
            ? _value.x
            : x // ignore: cast_nullable_to_non_nullable
                  as double,
        y: null == y
            ? _value.y
            : y // ignore: cast_nullable_to_non_nullable
                  as double,
        width: null == width
            ? _value.width
            : width // ignore: cast_nullable_to_non_nullable
                  as double,
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as double,
        zIndex: null == zIndex
            ? _value.zIndex
            : zIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        panelConfig: null == panelConfig
            ? _value._panelConfig
            : panelConfig // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        visible: null == visible
            ? _value.visible
            : visible // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LayoutItemImpl implements _LayoutItem {
  const _$LayoutItemImpl({
    required this.entryId,
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    this.zIndex = 0,
    final Map<String, dynamic> panelConfig = const <String, dynamic>{},
    this.visible = true,
  }) : _panelConfig = panelConfig;

  factory _$LayoutItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LayoutItemImplFromJson(json);

  /// ID of the filesystem entry displayed in this panel
  @override
  final String entryId;

  /// Position and size information
  @override
  final double x;
  @override
  final double y;
  @override
  final double width;
  @override
  final double height;

  /// Z-order for overlapping panels
  @override
  @JsonKey()
  final int zIndex;

  /// Panel-specific configuration
  final Map<String, dynamic> _panelConfig;

  /// Panel-specific configuration
  @override
  @JsonKey()
  Map<String, dynamic> get panelConfig {
    if (_panelConfig is EqualUnmodifiableMapView) return _panelConfig;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_panelConfig);
  }

  /// Whether this panel is currently visible
  @override
  @JsonKey()
  final bool visible;

  @override
  String toString() {
    return 'LayoutItem(entryId: $entryId, x: $x, y: $y, width: $width, height: $height, zIndex: $zIndex, panelConfig: $panelConfig, visible: $visible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LayoutItemImpl &&
            (identical(other.entryId, entryId) || other.entryId == entryId) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.zIndex, zIndex) || other.zIndex == zIndex) &&
            const DeepCollectionEquality().equals(
              other._panelConfig,
              _panelConfig,
            ) &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    entryId,
    x,
    y,
    width,
    height,
    zIndex,
    const DeepCollectionEquality().hash(_panelConfig),
    visible,
  );

  /// Create a copy of LayoutItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LayoutItemImplCopyWith<_$LayoutItemImpl> get copyWith =>
      __$$LayoutItemImplCopyWithImpl<_$LayoutItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LayoutItemImplToJson(this);
  }
}

abstract class _LayoutItem implements LayoutItem {
  const factory _LayoutItem({
    required final String entryId,
    required final double x,
    required final double y,
    required final double width,
    required final double height,
    final int zIndex,
    final Map<String, dynamic> panelConfig,
    final bool visible,
  }) = _$LayoutItemImpl;

  factory _LayoutItem.fromJson(Map<String, dynamic> json) =
      _$LayoutItemImpl.fromJson;

  /// ID of the filesystem entry displayed in this panel
  @override
  String get entryId;

  /// Position and size information
  @override
  double get x;
  @override
  double get y;
  @override
  double get width;
  @override
  double get height;

  /// Z-order for overlapping panels
  @override
  int get zIndex;

  /// Panel-specific configuration
  @override
  Map<String, dynamic> get panelConfig;

  /// Whether this panel is currently visible
  @override
  bool get visible;

  /// Create a copy of LayoutItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LayoutItemImplCopyWith<_$LayoutItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
