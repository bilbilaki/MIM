// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_layout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageLayoutImpl _$$PageLayoutImplFromJson(
  Map<String, dynamic> json,
) => _$PageLayoutImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  entryIds:
      (json['entryIds'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  layoutData:
      json['layoutData'] as Map<String, dynamic>? ?? const <String, dynamic>{},
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  customProperties:
      json['customProperties'] as Map<String, dynamic>? ??
      const <String, dynamic>{},
);

Map<String, dynamic> _$$PageLayoutImplToJson(_$PageLayoutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'entryIds': instance.entryIds,
      'layoutData': instance.layoutData,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'customProperties': instance.customProperties,
    };

_$LayoutItemImpl _$$LayoutItemImplFromJson(Map<String, dynamic> json) =>
    _$LayoutItemImpl(
      entryId: json['entryId'] as String,
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      zIndex: (json['zIndex'] as num?)?.toInt() ?? 0,
      panelConfig:
          json['panelConfig'] as Map<String, dynamic>? ??
          const <String, dynamic>{},
      visible: json['visible'] as bool? ?? true,
    );

Map<String, dynamic> _$$LayoutItemImplToJson(_$LayoutItemImpl instance) =>
    <String, dynamic>{
      'entryId': instance.entryId,
      'x': instance.x,
      'y': instance.y,
      'width': instance.width,
      'height': instance.height,
      'zIndex': instance.zIndex,
      'panelConfig': instance.panelConfig,
      'visible': instance.visible,
    };
