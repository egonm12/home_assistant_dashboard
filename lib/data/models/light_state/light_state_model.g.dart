// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'light_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
