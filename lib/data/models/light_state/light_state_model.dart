import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_assistant_dashboard/helpers/int_to_rounded_double.dart';

part 'light_state_model.freezed.dart';
part 'light_state_model.g.dart';

@freezed
abstract class LightStateAttributes with _$LightStateAttributes {
  const factory LightStateAttributes({
    @JsonKey(name: 'min_mireds') int? minMireds,
    @JsonKey(name: 'max_mireds') int? maxMireds,
    @JsonKey(name: 'supported_color_modes') List<String>? supportedColorModes,
    @JsonKey(name: 'color_mode') String? colorMode,
    @JsonKey(name: 'brightness', fromJson: roundToDouble) double? brightness,
    @JsonKey(name: 'color_temp') int? colorTemp,
    @JsonKey(name: 'hs_color') List<double>? hsColor,
    @JsonKey(name: 'rgb_color') List<int>? rgbColor,
    @JsonKey(name: 'xy_color') List<double>? xyColor,
    String? mode,
    dynamic dynamics,
    @JsonKey(name: 'friendly_name') String? friendlyName,
    @JsonKey(name: 'supported_features') int? supportedFeatures,
  }) = _Attributes;

  factory LightStateAttributes.fromJson(Map<String, dynamic> json) =>
      _$LightStateAttributesFromJson(json);
}
