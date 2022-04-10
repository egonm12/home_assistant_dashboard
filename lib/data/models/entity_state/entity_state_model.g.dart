// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityStateModel _$$_EntityStateModelFromJson(Map<String, dynamic> json) =>
    _$_EntityStateModel(
      entityId: json['entity_id'] as String,
      state: json['state'] as String,
      attributes: json['attributes'] as Map<String, dynamic>,
      lastChanged: DateTime.parse(json['last_changed'] as String),
      lastUpdated: DateTime.parse(json['last_updated'] as String),
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EntityStateModelToJson(_$_EntityStateModel instance) =>
    <String, dynamic>{
      'entity_id': instance.entityId,
      'state': instance.state,
      'attributes': instance.attributes,
      'last_changed': instance.lastChanged.toIso8601String(),
      'last_updated': instance.lastUpdated.toIso8601String(),
      'context': instance.context,
    };

_$_Context _$$_ContextFromJson(Map<String, dynamic> json) => _$_Context(
      id: json['id'] as String,
      parentId: json['parent_id'] as String?,
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$$_ContextToJson(_$_Context instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'user_id': instance.userId,
    };
