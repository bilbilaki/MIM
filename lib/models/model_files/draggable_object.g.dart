// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draggable_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DraggableSingleImpl _$$DraggableSingleImplFromJson(
  Map<String, dynamic> json,
) => _$DraggableSingleImpl(
  entry: FsEntry.fromJson(json['entry'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$DraggableSingleImplToJson(
  _$DraggableSingleImpl instance,
) => <String, dynamic>{'entry': instance.entry, 'runtimeType': instance.$type};

_$DraggableMultipleImpl _$$DraggableMultipleImplFromJson(
  Map<String, dynamic> json,
) => _$DraggableMultipleImpl(
  entries: (json['entries'] as List<dynamic>)
      .map((e) => FsEntry.fromJson(e as Map<String, dynamic>))
      .toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$DraggableMultipleImplToJson(
  _$DraggableMultipleImpl instance,
) => <String, dynamic>{
  'entries': instance.entries,
  'runtimeType': instance.$type,
};
