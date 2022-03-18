import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:home_assistant_dashboard/data/models/light_state/light_state_model.dart';
import 'package:home_assistant_dashboard/widgets/switch/switch.dart';
import 'package:home_assistant_dart/home_assistant_dart.dart';
import 'slider/custom_slider_track_shape.dart';
import 'slider/custom_thumb_overlay_shape.dart';
import 'slider/custom_thumb_shape.dart';
import 'utils.dart';

final remote = HomeAssistantDart(
  token: dotenv.get('API_ACCESS_TOKEN'),
  baseUrl: dotenv.get('API_BASE_URL'),
);

Future<LightStateModel> getLightState(String entityId) async {
  try {
    final state = await remote.getState(entityId);

    return LightStateModel.fromJson(state);
  } catch (e) {
    throw Exception(e);
  }
}

Future<LightStateModel> _setLightState(
  String entityId,
  DeviceState deviceState,
  LightStateModel lightState,
) async {
  try {
    final state = await remote.setState(
      entityId,
      deviceState.name,
      lightState.attributes.toJson(),
    );

    return LightStateModel.fromJson(state);
  } catch (e) {
    throw Exception(e);
  }
}

Future<LightStateModel> switchLight(String entityId, DeviceState deviceState,
    LightStateModel lightState) async {
  try {
    await remote.callService(
      'light',
      deviceState == DeviceState.on ? 'turn_on' : 'turn_off',
      {
        'entity_id': entityId,
      },
    );

    return await _setLightState(
      entityId,
      deviceState,
      lightState,
    );
  } catch (e) {
    throw Exception(e);
  }
}

Future<LightStateModel> setLightState(
  String entityId,
  DeviceState deviceState,
  LightStateModel lightState,
) async {
  try {
    await remote.callService(
      'light',
      deviceState == DeviceState.on ? 'turn_on' : 'turn_off',
      {
        'entity_id': entityId,
        'brightness': deviceState == DeviceState.on
            ? lightState.attributes.brightness
            : null,
      },
    );

    return await _setLightState(
      entityId,
      deviceState,
      lightState,
    );
  } catch (e) {
    throw Exception(e);
  }
}

class LightControlCard extends HookWidget {
  const LightControlCard({
    Key? key,
    required this.iconData,
    required this.entityId,
  }) : super(key: key);

  final IconData iconData;
  final String entityId;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<double?> brightness = useState(null);
    final ValueNotifier<LightStateModel?> lightState = useState(null);
    final ValueNotifier<bool> isChangingBrightness = useState(false);
    final ValueNotifier<Color> thumbColor = useState(Colors.white);

    final bool isTurnedOn = lightState.value?.state == DeviceState.on.name;
    final bool isBrightnessSupported =
        lightState.value?.attributes.supportedFeatures != 0;

    final _sliderAnimationController = useAnimationController(
        duration: LightControlUtils.sliderAnimationDuration);
    final _sliderValueAnimationController = useAnimationController(
      duration: LightControlUtils.sliderValueAnimationDuration,
      lowerBound: LightControlUtils.sliderMin,
      upperBound: LightControlUtils.sliderMax,
    );

    useEffect(() {
      getLightState(entityId).then((value) {
        lightState.value = value;
        brightness.value = value.attributes.brightness;
      });
      return null;
    }, []);

    useEffect(() {
      thumbColor.value = isTurnedOn ? Colors.white : Colors.transparent;
      return null;
    }, [isTurnedOn]);

    useEffect(() {
      if (brightness.value != null) {
        _sliderValueAnimationController.value = brightness.value!;
      }
      return null;
    }, [brightness.value]);

    final List<int> rgbColor = lightState.value?.attributes.rgbColor ??
        LightControlUtils.defaultRGBColor;
    final Color color = isTurnedOn
        ? Color.fromRGBO(
            rgbColor[0],
            rgbColor[1],
            rgbColor[2],
            1,
          )
        : Theme.of(context).cardColor;

    final brightnessBalance =
        LightControlUtils.brightnessBalance(brightness.value);
    final brightnessPercentage =
        LightControlUtils.brightnessPercentage(brightnessBalance);

    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      child: Container(
        height: LightControlUtils.height,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              color,
              color.withOpacity(0.3),
            ],
            stops: [0.0, 0.7 + brightnessBalance],
          ),
          boxShadow: isTurnedOn
              ? [
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(
                      0,
                      -120,
                    ),
                    spreadRadius:
                        LightControlUtils.boxShadowRadius * brightnessBalance,
                    blurRadius: LightControlUtils.boxShadowRadius,
                  ),
                ]
              : null,
        ),
        child: Stack(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AnimatedAlign(
                            alignment: isChangingBrightness.value
                                ? Alignment.center
                                : Alignment.topCenter,
                            duration: LightControlUtils.sliderAnimationDuration,
                            child: Row(
                              children: [
                                Icon(
                                  iconData,
                                  size: 35,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      lightState
                                              .value?.attributes.friendlyName ??
                                          '',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                    Text(
                                      isChangingBrightness.value
                                          ? '$brightnessPercentage%'
                                          : isTurnedOn
                                              ? 'On'
                                              : 'Off',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          if (!isChangingBrightness.value)
                            Align(
                              alignment: isBrightnessSupported
                                  ? Alignment.topCenter
                                  : Alignment.center,
                              child: SizedBox(
                                height: 35,
                                child: CustomSwitch(
                                  value: isTurnedOn,
                                  duration: LightControlUtils
                                      .sliderValueAnimationDuration,
                                  onToggle: (value) async {
                                    final newLightState = await switchLight(
                                      entityId,
                                      value ? DeviceState.on : DeviceState.off,
                                      lightState.value!,
                                    );
                                    lightState.value = newLightState;
                                    brightness.value =
                                        newLightState.attributes.brightness;
                                    if (value) {
                                      _sliderValueAnimationController.animateTo(
                                        lightState
                                            .value!.attributes.brightness!,
                                      );
                                    } else {
                                      _sliderValueAnimationController.value = 1;
                                    }
                                  },
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (isBrightnessSupported)
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isChangingBrightness.value ? 0.0 : 16.0,
                      vertical: isChangingBrightness.value ? 0.0 : 16.0,
                    ),
                    child: Column(
                      mainAxisAlignment: isChangingBrightness.value
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 20,
                          child: SliderTheme(
                            data: SliderThemeData(
                              disabledThumbColor: thumbColor.value,
                              thumbColor: thumbColor.value,
                              disabledActiveTrackColor: Theme.of(context)
                                  .backgroundColor
                                  .withOpacity(0.75),
                              disabledInactiveTrackColor: Theme.of(context)
                                  .backgroundColor
                                  .withOpacity(0.75),
                              inactiveTrackColor:
                                  Colors.white.withOpacity(0.15),
                              trackShape: CustomSliderTrackShape(
                                inactive: !isTurnedOn,
                                theme: Theme.of(context),
                                animation: _sliderAnimationController.view,
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.white.withOpacity(
                                      0.9,
                                    ),
                                    Colors.white.withOpacity(
                                      1.0,
                                    ),
                                  ],
                                ),
                              ),
                              overlayShape: CustomThumbOverlayShape(
                                animation: _sliderAnimationController.view,
                                overlayRadius: LightControlUtils.height / 2,
                              ),
                              trackHeight: LightControlUtils.height,
                              overlayColor: Colors.transparent,
                              thumbShape: CustomThumbShape(
                                inactive: !isTurnedOn,
                                animation: _sliderAnimationController.view,
                                enabledThumbRadius:
                                    LightControlUtils.height / 2,
                              ),
                            ),
                            child: AnimatedBuilder(
                              animation: _sliderValueAnimationController.view,
                              builder: (_, __) => Slider(
                                max: LightControlUtils.sliderMax,
                                min: LightControlUtils.sliderMin,
                                value: _sliderValueAnimationController.value,
                                onChanged: isTurnedOn
                                    ? (value) async {
                                        brightness.value = value;
                                        final newLightState =
                                            await setLightState(
                                          entityId,
                                          DeviceState.on,
                                          lightState.value!.copyWith(
                                            attributes: lightState
                                                .value!.attributes
                                                .copyWith(brightness: value),
                                          ),
                                        );

                                        lightState.value = newLightState;
                                      }
                                    : null,
                                onChangeStart: (_) {
                                  isChangingBrightness.value = true;
                                  _sliderAnimationController.animateTo(1.0);
                                },
                                onChangeEnd: (_) {
                                  isChangingBrightness.value = false;
                                  _sliderAnimationController.animateTo(0.0);
                                },
                                inactiveColor: isChangingBrightness.value
                                    ? Colors.transparent
                                    : null,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

enum DeviceState {
  on,
  off,
}

final Map<DeviceState, String> lightDeviceService = {
  DeviceState.on: 'turn_on',
  DeviceState.off: 'turn_off',
};
