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

LightStateModel _$LightStateModelFromJson(Map<String, dynamic> json) {
  return _LightStateModel.fromJson(json);
}

/// @nodoc
class _$LightStateModelTearOff {
  const _$LightStateModelTearOff();

  _LightStateModel call(
      {@JsonKey(name: 'entity_id') required String entityId,
      required String state,
      required Attributes attributes,
      @JsonKey(name: 'last_changed') required DateTime lastChanged,
      @JsonKey(name: 'last_updated') required DateTime lastUpdated,
      required Context context}) {
    return _LightStateModel(
      entityId: entityId,
      state: state,
      attributes: attributes,
      lastChanged: lastChanged,
      lastUpdated: lastUpdated,
      context: context,
    );
  }

  LightStateModel fromJson(Map<String, Object?> json) {
    return LightStateModel.fromJson(json);
  }
}

/// @nodoc
const $LightStateModel = _$LightStateModelTearOff();

/// @nodoc
mixin _$LightStateModel {
  @JsonKey(name: 'entity_id')
  String get entityId => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  Attributes get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_changed')
  DateTime get lastChanged => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  Context get context => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LightStateModelCopyWith<LightStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LightStateModelCopyWith<$Res> {
  factory $LightStateModelCopyWith(
          LightStateModel value, $Res Function(LightStateModel) then) =
      _$LightStateModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'entity_id') String entityId,
      String state,
      Attributes attributes,
      @JsonKey(name: 'last_changed') DateTime lastChanged,
      @JsonKey(name: 'last_updated') DateTime lastUpdated,
      Context context});

  $AttributesCopyWith<$Res> get attributes;
  $ContextCopyWith<$Res> get context;
}

/// @nodoc
class _$LightStateModelCopyWithImpl<$Res>
    implements $LightStateModelCopyWith<$Res> {
  _$LightStateModelCopyWithImpl(this._value, this._then);

  final LightStateModel _value;
  // ignore: unused_field
  final $Res Function(LightStateModel) _then;

  @override
  $Res call({
    Object? entityId = freezed,
    Object? state = freezed,
    Object? attributes = freezed,
    Object? lastChanged = freezed,
    Object? lastUpdated = freezed,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      entityId: entityId == freezed
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
      lastChanged: lastChanged == freezed
          ? _value.lastChanged
          : lastChanged // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
    ));
  }

  @override
  $AttributesCopyWith<$Res> get attributes {
    return $AttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value));
    });
  }

  @override
  $ContextCopyWith<$Res> get context {
    return $ContextCopyWith<$Res>(_value.context, (value) {
      return _then(_value.copyWith(context: value));
    });
  }
}

/// @nodoc
abstract class _$LightStateModelCopyWith<$Res>
    implements $LightStateModelCopyWith<$Res> {
  factory _$LightStateModelCopyWith(
          _LightStateModel value, $Res Function(_LightStateModel) then) =
      __$LightStateModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'entity_id') String entityId,
      String state,
      Attributes attributes,
      @JsonKey(name: 'last_changed') DateTime lastChanged,
      @JsonKey(name: 'last_updated') DateTime lastUpdated,
      Context context});

  @override
  $AttributesCopyWith<$Res> get attributes;
  @override
  $ContextCopyWith<$Res> get context;
}

/// @nodoc
class __$LightStateModelCopyWithImpl<$Res>
    extends _$LightStateModelCopyWithImpl<$Res>
    implements _$LightStateModelCopyWith<$Res> {
  __$LightStateModelCopyWithImpl(
      _LightStateModel _value, $Res Function(_LightStateModel) _then)
      : super(_value, (v) => _then(v as _LightStateModel));

  @override
  _LightStateModel get _value => super._value as _LightStateModel;

  @override
  $Res call({
    Object? entityId = freezed,
    Object? state = freezed,
    Object? attributes = freezed,
    Object? lastChanged = freezed,
    Object? lastUpdated = freezed,
    Object? context = freezed,
  }) {
    return _then(_LightStateModel(
      entityId: entityId == freezed
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
      lastChanged: lastChanged == freezed
          ? _value.lastChanged
          : lastChanged // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LightStateModel implements _LightStateModel {
  const _$_LightStateModel(
      {@JsonKey(name: 'entity_id') required this.entityId,
      required this.state,
      required this.attributes,
      @JsonKey(name: 'last_changed') required this.lastChanged,
      @JsonKey(name: 'last_updated') required this.lastUpdated,
      required this.context});

  factory _$_LightStateModel.fromJson(Map<String, dynamic> json) =>
      _$$_LightStateModelFromJson(json);

  @override
  @JsonKey(name: 'entity_id')
  final String entityId;
  @override
  final String state;
  @override
  final Attributes attributes;
  @override
  @JsonKey(name: 'last_changed')
  final DateTime lastChanged;
  @override
  @JsonKey(name: 'last_updated')
  final DateTime lastUpdated;
  @override
  final Context context;

  @override
  String toString() {
    return 'LightStateModel(entityId: $entityId, state: $state, attributes: $attributes, lastChanged: $lastChanged, lastUpdated: $lastUpdated, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LightStateModel &&
            const DeepCollectionEquality().equals(other.entityId, entityId) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality()
                .equals(other.lastChanged, lastChanged) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(entityId),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(attributes),
      const DeepCollectionEquality().hash(lastChanged),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$LightStateModelCopyWith<_LightStateModel> get copyWith =>
      __$LightStateModelCopyWithImpl<_LightStateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LightStateModelToJson(this);
  }
}

abstract class _LightStateModel implements LightStateModel {
  const factory _LightStateModel(
      {@JsonKey(name: 'entity_id') required String entityId,
      required String state,
      required Attributes attributes,
      @JsonKey(name: 'last_changed') required DateTime lastChanged,
      @JsonKey(name: 'last_updated') required DateTime lastUpdated,
      required Context context}) = _$_LightStateModel;

  factory _LightStateModel.fromJson(Map<String, dynamic> json) =
      _$_LightStateModel.fromJson;

  @override
  @JsonKey(name: 'entity_id')
  String get entityId;
  @override
  String get state;
  @override
  Attributes get attributes;
  @override
  @JsonKey(name: 'last_changed')
  DateTime get lastChanged;
  @override
  @JsonKey(name: 'last_updated')
  DateTime get lastUpdated;
  @override
  Context get context;
  @override
  @JsonKey(ignore: true)
  _$LightStateModelCopyWith<_LightStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
class _$AttributesTearOff {
  const _$AttributesTearOff();

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

  Attributes fromJson(Map<String, Object?> json) {
    return Attributes.fromJson(json);
  }
}

/// @nodoc
const $Attributes = _$AttributesTearOff();

/// @nodoc
mixin _$Attributes {
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
  $AttributesCopyWith<Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesCopyWith<$Res> {
  factory $AttributesCopyWith(
          Attributes value, $Res Function(Attributes) then) =
      _$AttributesCopyWithImpl<$Res>;
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
class _$AttributesCopyWithImpl<$Res> implements $AttributesCopyWith<$Res> {
  _$AttributesCopyWithImpl(this._value, this._then);

  final Attributes _value;
  // ignore: unused_field
  final $Res Function(Attributes) _then;

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
abstract class _$AttributesCopyWith<$Res> implements $AttributesCopyWith<$Res> {
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
class __$AttributesCopyWithImpl<$Res> extends _$AttributesCopyWithImpl<$Res>
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
    return 'Attributes(minMireds: $minMireds, maxMireds: $maxMireds, supportedColorModes: $supportedColorModes, colorMode: $colorMode, brightness: $brightness, colorTemp: $colorTemp, hsColor: $hsColor, rgbColor: $rgbColor, xyColor: $xyColor, mode: $mode, dynamics: $dynamics, friendlyName: $friendlyName, supportedFeatures: $supportedFeatures)';
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

abstract class _Attributes implements Attributes {
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

Context _$ContextFromJson(Map<String, dynamic> json) {
  return _Context.fromJson(json);
}

/// @nodoc
class _$ContextTearOff {
  const _$ContextTearOff();

  _Context call(
      {required String id,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'user_id') String? userId}) {
    return _Context(
      id: id,
      parentId: parentId,
      userId: userId,
    );
  }

  Context fromJson(Map<String, Object?> json) {
    return Context.fromJson(json);
  }
}

/// @nodoc
const $Context = _$ContextTearOff();

/// @nodoc
mixin _$Context {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContextCopyWith<Context> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextCopyWith<$Res> {
  factory $ContextCopyWith(Context value, $Res Function(Context) then) =
      _$ContextCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'user_id') String? userId});
}

/// @nodoc
class _$ContextCopyWithImpl<$Res> implements $ContextCopyWith<$Res> {
  _$ContextCopyWithImpl(this._value, this._then);

  final Context _value;
  // ignore: unused_field
  final $Res Function(Context) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ContextCopyWith<$Res> implements $ContextCopyWith<$Res> {
  factory _$ContextCopyWith(_Context value, $Res Function(_Context) then) =
      __$ContextCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'user_id') String? userId});
}

/// @nodoc
class __$ContextCopyWithImpl<$Res> extends _$ContextCopyWithImpl<$Res>
    implements _$ContextCopyWith<$Res> {
  __$ContextCopyWithImpl(_Context _value, $Res Function(_Context) _then)
      : super(_value, (v) => _then(v as _Context));

  @override
  _Context get _value => super._value as _Context;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Context(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Context implements _Context {
  const _$_Context(
      {required this.id,
      @JsonKey(name: 'parent_id') this.parentId,
      @JsonKey(name: 'user_id') this.userId});

  factory _$_Context.fromJson(Map<String, dynamic> json) =>
      _$$_ContextFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;

  @override
  String toString() {
    return 'Context(id: $id, parentId: $parentId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Context &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$ContextCopyWith<_Context> get copyWith =>
      __$ContextCopyWithImpl<_Context>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContextToJson(this);
  }
}

abstract class _Context implements Context {
  const factory _Context(
      {required String id,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'user_id') String? userId}) = _$_Context;

  factory _Context.fromJson(Map<String, dynamic> json) = _$_Context.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$ContextCopyWith<_Context> get copyWith =>
      throw _privateConstructorUsedError;
}
