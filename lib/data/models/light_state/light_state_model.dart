import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_assistant_dashboard/helpers/int_to_rounded_double.dart';

part 'light_state_model.freezed.dart';
part 'light_state_model.g.dart';

@freezed
class LightStateModel with _$LightStateModel {
  const factory LightStateModel({
    @JsonKey(name: 'entity_id') required String entityId,
    required String state,
    required Attributes attributes,
    @JsonKey(name: 'last_changed') required DateTime lastChanged,
    @JsonKey(name: 'last_updated') required DateTime lastUpdated,
    required Context context,
  }) = _LightStateModel;

  factory LightStateModel.fromJson(Map<String, dynamic> json) =>
      _$LightStateModelFromJson(json);
}

@freezed
abstract class Attributes with _$Attributes {
  const factory Attributes({
    @JsonKey(name: 'min_mireds') required int minMireds,
    @JsonKey(name: 'max_mireds') required int maxMireds,
    @JsonKey(name: 'supported_color_modes')
        required List<String> supportedColorModes,
    @JsonKey(name: 'color_mode') String? colorMode,
    @JsonKey(name: 'brightness', fromJson: roundToDouble)
        required double brightness,
    @JsonKey(name: 'color_temp') required int colorTemp,
    @JsonKey(name: 'hs_color') required List<double> hsColor,
    @JsonKey(name: 'rgb_color') required List<int> rgbColor,
    @JsonKey(name: 'xy_color') required List<double> xyColor,
    required String mode,
    required String dynamics,
    @JsonKey(name: 'friendly_name') required String friendlyName,
    @JsonKey(name: 'supported_features') required int supportedFeatures,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}

@freezed
abstract class Context with _$Context {
  const factory Context({
    required String id,
    @JsonKey(name: 'parent_id') String? parentId,
    @JsonKey(name: 'user_id') String? userId,
  }) = _Context;

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);
}
