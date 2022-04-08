// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'light_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LightStateModel _$$_LightStateModelFromJson(Map<String, dynamic> json) =>
    _$_LightStateModel(
      entityId: json['entity_id'] as String,
      state: json['state'] as String,
      attributes:
          Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      lastChanged: DateTime.parse(json['last_changed'] as String),
      lastUpdated: DateTime.parse(json['last_updated'] as String),
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LightStateModelToJson(_$_LightStateModel instance) =>
    <String, dynamic>{
      'entity_id': instance.entityId,
      'state': instance.state,
      'attributes': instance.attributes,
      'last_changed': instance.lastChanged.toIso8601String(),
      'last_updated': instance.lastUpdated.toIso8601String(),
      'context': instance.context,
    };

_$_Attributes _$$_AttributesFromJson(Map<String, dynamic> json) =>
    _$_Attributes(
      minMireds: json['min_mireds'] as int?,
      maxMireds: json['max_mireds'] as int?,
      supportedColorModes: (json['supported_color_modes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      colorMode: json['color_mode'] as String?,
      brightness: roundToDouble(json['brightness'] as num?),
      colorTemp: json['color_temp'] as int?,
      hsColor: (json['hs_color'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      rgbColor:
          (json['rgb_color'] as List<dynamic>?)?.map((e) => e as int).toList(),
      xyColor: (json['xy_color'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      mode: json['mode'] as String?,
      dynamics: json['dynamics'],
      friendlyName: json['friendly_name'] as String?,
      supportedFeatures: json['supported_features'] as int?,
    );

Map<String, dynamic> _$$_AttributesToJson(_$_Attributes instance) =>
    <String, dynamic>{
      'min_mireds': instance.minMireds,
      'max_mireds': instance.maxMireds,
      'supported_color_modes': instance.supportedColorModes,
      'color_mode': instance.colorMode,
      'brightness': instance.brightness,
      'color_temp': instance.colorTemp,
      'hs_color': instance.hsColor,
      'rgb_color': instance.rgbColor,
      'xy_color': instance.xyColor,
      'mode': instance.mode,
      'dynamics': instance.dynamics,
      'friendly_name': instance.friendlyName,
      'supported_features': instance.supportedFeatures,
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
