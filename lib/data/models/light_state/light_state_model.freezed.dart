// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'light_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LightStateAttributes _$LightStateAttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
class _$LightStateAttributesTearOff {
  const _$LightStateAttributesTearOff();

  _Attributes call(
      {@JsonKey(name: 'min_mireds') int? minMireds,
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
      @JsonKey(name: 'supported_features') int? supportedFeatures}) {
    return _Attributes(
      minMireds: minMireds,
      maxMireds: maxMireds,
      supportedColorModes: supportedColorModes,
      colorMode: colorMode,
      brightness: brightness,
      colorTemp: colorTemp,
      hsColor: hsColor,
      rgbColor: rgbColor,
      xyColor: xyColor,
      mode: mode,
      dynamics: dynamics,
      friendlyName: friendlyName,
      supportedFeatures: supportedFeatures,
    );
  }

  LightStateAttributes fromJson(Map<String, Object?> json) {
    return LightStateAttributes.fromJson(json);
  }
}

/// @nodoc
const $LightStateAttributes = _$LightStateAttributesTearOff();

/// @nodoc
mixin _$LightStateAttributes {
  @JsonKey(name: 'min_mireds')
  int? get minMireds => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_mireds')
  int? get maxMireds => throw _privateConstructorUsedError;
  @JsonKey(name: 'supported_color_modes')
  List<String>? get supportedColorModes => throw _privateConstructorUsedError;
  @JsonKey(name: 'color_mode')
  String? get colorMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'brightness', fromJson: roundToDouble)
  double? get brightness => throw _privateConstructorUsedError;
  @JsonKey(name: 'color_temp')
  int? get colorTemp => throw _privateConstructorUsedError;
  @JsonKey(name: 'hs_color')
  List<double>? get hsColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'rgb_color')
  List<int>? get rgbColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'xy_color')
  List<double>? get xyColor => throw _privateConstructorUsedError;
  String? get mode => throw _privateConstructorUsedError;
  dynamic get dynamics => throw _privateConstructorUsedError;
  @JsonKey(name: 'friendly_name')
  String? get friendlyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'supported_features')
  int? get supportedFeatures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LightStateAttributesCopyWith<LightStateAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LightStateAttributesCopyWith<$Res> {
  factory $LightStateAttributesCopyWith(LightStateAttributes value,
          $Res Function(LightStateAttributes) then) =
      _$LightStateAttributesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'min_mireds') int? minMireds,
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
      @JsonKey(name: 'supported_features') int? supportedFeatures});
}

/// @nodoc
class _$LightStateAttributesCopyWithImpl<$Res>
    implements $LightStateAttributesCopyWith<$Res> {
  _$LightStateAttributesCopyWithImpl(this._value, this._then);

  final LightStateAttributes _value;
  // ignore: unused_field
  final $Res Function(LightStateAttributes) _then;

  @override
  $Res call({
    Object? minMireds = freezed,
    Object? maxMireds = freezed,
    Object? supportedColorModes = freezed,
    Object? colorMode = freezed,
    Object? brightness = freezed,
    Object? colorTemp = freezed,
    Object? hsColor = freezed,
    Object? rgbColor = freezed,
    Object? xyColor = freezed,
    Object? mode = freezed,
    Object? dynamics = freezed,
    Object? friendlyName = freezed,
    Object? supportedFeatures = freezed,
  }) {
    return _then(_value.copyWith(
      minMireds: minMireds == freezed
          ? _value.minMireds
          : minMireds // ignore: cast_nullable_to_non_nullable
              as int?,
      maxMireds: maxMireds == freezed
          ? _value.maxMireds
          : maxMireds // ignore: cast_nullable_to_non_nullable
              as int?,
      supportedColorModes: supportedColorModes == freezed
          ? _value.supportedColorModes
          : supportedColorModes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      colorMode: colorMode == freezed
          ? _value.colorMode
          : colorMode // ignore: cast_nullable_to_non_nullable
              as String?,
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as double?,
      colorTemp: colorTemp == freezed
          ? _value.colorTemp
          : colorTemp // ignore: cast_nullable_to_non_nullable
              as int?,
      hsColor: hsColor == freezed
          ? _value.hsColor
          : hsColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      rgbColor: rgbColor == freezed
          ? _value.rgbColor
          : rgbColor // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      xyColor: xyColor == freezed
          ? _value.xyColor
          : xyColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String?,
      dynamics: dynamics == freezed
          ? _value.dynamics
          : dynamics // ignore: cast_nullable_to_non_nullable
              as dynamic,
      friendlyName: friendlyName == freezed
          ? _value.friendlyName
          : friendlyName // ignore: cast_nullable_to_non_nullable
              as String?,
      supportedFeatures: supportedFeatures == freezed
          ? _value.supportedFeatures
          : supportedFeatures // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AttributesCopyWith<$Res>
    implements $LightStateAttributesCopyWith<$Res> {
  factory _$AttributesCopyWith(
          _Attributes value, $Res Function(_Attributes) then) =
      __$AttributesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'min_mireds') int? minMireds,
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
      @JsonKey(name: 'supported_features') int? supportedFeatures});
}

/// @nodoc
class __$AttributesCopyWithImpl<$Res>
    extends _$LightStateAttributesCopyWithImpl<$Res>
    implements _$AttributesCopyWith<$Res> {
  __$AttributesCopyWithImpl(
      _Attributes _value, $Res Function(_Attributes) _then)
      : super(_value, (v) => _then(v as _Attributes));

  @override
  _Attributes get _value => super._value as _Attributes;

  @override
  $Res call({
    Object? minMireds = freezed,
    Object? maxMireds = freezed,
    Object? supportedColorModes = freezed,
    Object? colorMode = freezed,
    Object? brightness = freezed,
    Object? colorTemp = freezed,
    Object? hsColor = freezed,
    Object? rgbColor = freezed,
    Object? xyColor = freezed,
    Object? mode = freezed,
    Object? dynamics = freezed,
    Object? friendlyName = freezed,
    Object? supportedFeatures = freezed,
  }) {
    return _then(_Attributes(
      minMireds: minMireds == freezed
          ? _value.minMireds
          : minMireds // ignore: cast_nullable_to_non_nullable
              as int?,
      maxMireds: maxMireds == freezed
          ? _value.maxMireds
          : maxMireds // ignore: cast_nullable_to_non_nullable
              as int?,
      supportedColorModes: supportedColorModes == freezed
          ? _value.supportedColorModes
          : supportedColorModes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      colorMode: colorMode == freezed
          ? _value.colorMode
          : colorMode // ignore: cast_nullable_to_non_nullable
              as String?,
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as double?,
      colorTemp: colorTemp == freezed
          ? _value.colorTemp
          : colorTemp // ignore: cast_nullable_to_non_nullable
              as int?,
      hsColor: hsColor == freezed
          ? _value.hsColor
          : hsColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      rgbColor: rgbColor == freezed
          ? _value.rgbColor
          : rgbColor // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      xyColor: xyColor == freezed
          ? _value.xyColor
          : xyColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String?,
      dynamics: dynamics == freezed
          ? _value.dynamics
          : dynamics // ignore: cast_nullable_to_non_nullable
              as dynamic,
      friendlyName: friendlyName == freezed
          ? _value.friendlyName
          : friendlyName // ignore: cast_nullable_to_non_nullable
              as String?,
      supportedFeatures: supportedFeatures == freezed
          ? _value.supportedFeatures
          : supportedFeatures // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attributes implements _Attributes {
  const _$_Attributes(
      {@JsonKey(name: 'min_mireds') this.minMireds,
      @JsonKey(name: 'max_mireds') this.maxMireds,
      @JsonKey(name: 'supported_color_modes') this.supportedColorModes,
      @JsonKey(name: 'color_mode') this.colorMode,
      @JsonKey(name: 'brightness', fromJson: roundToDouble) this.brightness,
      @JsonKey(name: 'color_temp') this.colorTemp,
      @JsonKey(name: 'hs_color') this.hsColor,
      @JsonKey(name: 'rgb_color') this.rgbColor,
      @JsonKey(name: 'xy_color') this.xyColor,
      this.mode,
      this.dynamics,
      @JsonKey(name: 'friendly_name') this.friendlyName,
      @JsonKey(name: 'supported_features') this.supportedFeatures});

  factory _$_Attributes.fromJson(Map<String, dynamic> json) =>
      _$$_AttributesFromJson(json);

  @override
  @JsonKey(name: 'min_mireds')
  final int? minMireds;
  @override
  @JsonKey(name: 'max_mireds')
  final int? maxMireds;
  @override
  @JsonKey(name: 'supported_color_modes')
  final List<String>? supportedColorModes;
  @override
  @JsonKey(name: 'color_mode')
  final String? colorMode;
  @override
  @JsonKey(name: 'brightness', fromJson: roundToDouble)
  final double? brightness;
  @override
  @JsonKey(name: 'color_temp')
  final int? colorTemp;
  @override
  @JsonKey(name: 'hs_color')
  final List<double>? hsColor;
  @override
  @JsonKey(name: 'rgb_color')
  final List<int>? rgbColor;
  @override
  @JsonKey(name: 'xy_color')
  final List<double>? xyColor;
  @override
  final String? mode;
  @override
  final dynamic dynamics;
  @override
  @JsonKey(name: 'friendly_name')
  final String? friendlyName;
  @override
  @JsonKey(name: 'supported_features')
  final int? supportedFeatures;

  @override
  String toString() {
    return 'LightStateAttributes(minMireds: $minMireds, maxMireds: $maxMireds, supportedColorModes: $supportedColorModes, colorMode: $colorMode, brightness: $brightness, colorTemp: $colorTemp, hsColor: $hsColor, rgbColor: $rgbColor, xyColor: $xyColor, mode: $mode, dynamics: $dynamics, friendlyName: $friendlyName, supportedFeatures: $supportedFeatures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Attributes &&
            const DeepCollectionEquality().equals(other.minMireds, minMireds) &&
            const DeepCollectionEquality().equals(other.maxMireds, maxMireds) &&
            const DeepCollectionEquality()
                .equals(other.supportedColorModes, supportedColorModes) &&
            const DeepCollectionEquality().equals(other.colorMode, colorMode) &&
            const DeepCollectionEquality()
                .equals(other.brightness, brightness) &&
            const DeepCollectionEquality().equals(other.colorTemp, colorTemp) &&
            const DeepCollectionEquality().equals(other.hsColor, hsColor) &&
            const DeepCollectionEquality().equals(other.rgbColor, rgbColor) &&
            const DeepCollectionEquality().equals(other.xyColor, xyColor) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.dynamics, dynamics) &&
            const DeepCollectionEquality()
                .equals(other.friendlyName, friendlyName) &&
            const DeepCollectionEquality()
                .equals(other.supportedFeatures, supportedFeatures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(minMireds),
      const DeepCollectionEquality().hash(maxMireds),
      const DeepCollectionEquality().hash(supportedColorModes),
      const DeepCollectionEquality().hash(colorMode),
      const DeepCollectionEquality().hash(brightness),
      const DeepCollectionEquality().hash(colorTemp),
      const DeepCollectionEquality().hash(hsColor),
      const DeepCollectionEquality().hash(rgbColor),
      const DeepCollectionEquality().hash(xyColor),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(dynamics),
      const DeepCollectionEquality().hash(friendlyName),
      const DeepCollectionEquality().hash(supportedFeatures));

  @JsonKey(ignore: true)
  @override
  _$AttributesCopyWith<_Attributes> get copyWith =>
      __$AttributesCopyWithImpl<_Attributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributesToJson(this);
  }
}

abstract class _Attributes implements LightStateAttributes {
  const factory _Attributes(
      {@JsonKey(name: 'min_mireds')
          int? minMireds,
      @JsonKey(name: 'max_mireds')
          int? maxMireds,
      @JsonKey(name: 'supported_color_modes')
          List<String>? supportedColorModes,
      @JsonKey(name: 'color_mode')
          String? colorMode,
      @JsonKey(name: 'brightness', fromJson: roundToDouble)
          double? brightness,
      @JsonKey(name: 'color_temp')
          int? colorTemp,
      @JsonKey(name: 'hs_color')
          List<double>? hsColor,
      @JsonKey(name: 'rgb_color')
          List<int>? rgbColor,
      @JsonKey(name: 'xy_color')
          List<double>? xyColor,
      String? mode,
      dynamic dynamics,
      @JsonKey(name: 'friendly_name')
          String? friendlyName,
      @JsonKey(name: 'supported_features')
          int? supportedFeatures}) = _$_Attributes;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$_Attributes.fromJson;

  @override
  @JsonKey(name: 'min_mireds')
  int? get minMireds;
  @override
  @JsonKey(name: 'max_mireds')
  int? get maxMireds;
  @override
  @JsonKey(name: 'supported_color_modes')
  List<String>? get supportedColorModes;
  @override
  @JsonKey(name: 'color_mode')
  String? get colorMode;
  @override
  @JsonKey(name: 'brightness', fromJson: roundToDouble)
  double? get brightness;
  @override
  @JsonKey(name: 'color_temp')
  int? get colorTemp;
  @override
  @JsonKey(name: 'hs_color')
  List<double>? get hsColor;
  @override
  @JsonKey(name: 'rgb_color')
  List<int>? get rgbColor;
  @override
  @JsonKey(name: 'xy_color')
  List<double>? get xyColor;
  @override
  String? get mode;
  @override
  dynamic get dynamics;
  @override
  @JsonKey(name: 'friendly_name')
  String? get friendlyName;
  @override
  @JsonKey(name: 'supported_features')
  int? get supportedFeatures;
  @override
  @JsonKey(ignore: true)
  _$AttributesCopyWith<_Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}
