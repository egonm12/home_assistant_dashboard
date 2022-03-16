import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:home_assistant_dashboard/data/models/light_state/light_state_model.dart';
import 'package:home_assistant_dashboard/widgets/switch/switch.dart';

import 'slider/custom_slider_track_shape.dart';
import 'slider/custom_thumb_overlay_shape.dart';
import 'slider/custom_thumb_shape.dart';
import 'utils.dart';

final dataOn = {
  "entity_id": "light.hue_go_1",
  "state": "on",
  "attributes": {
    "min_mireds": 153,
    "max_mireds": 500,
    "supported_color_modes": ["color_temp", "xy"],
    "color_mode": "color_temp",
    "brightness": 153,
    "color_temp": 454,
    "hs_color": [29.79, 84.553],
    "rgb_color": [255, 147, 44],
    "xy_color": [0.579, 0.388],
    "mode": "normal",
    "dynamics": "none",
    "friendly_name": "Livingroom",
    "supported_features": 40
  },
  "last_changed": "2022-03-06T17:29:46.143123+00:00",
  "last_updated": "2022-03-06T17:29:47.118813+00:00",
  "context": {
    "id": "a4998cd100756a79836adf8e34ef8f37",
    "parent_id": null,
    "user_id": null
  }
};
final dataOff = {
  "entity_id": "light.hue_go_1",
  "state": "off",
  "attributes": {
    "min_mireds": 153,
    "max_mireds": 500,
    "brightness": 1,
    "supported_color_modes": ["color_temp", "xy"],
    "color_mode": "color_temp",
    "mode": "normal",
    "dynamics": "none",
    "friendly_name": "Livingroom",
    "supported_features": 40
  },
  "last_changed": "2022-03-06T17:29:46.143123+00:00",
  "last_updated": "2022-03-06T17:29:47.118813+00:00",
  "context": {
    "id": "a4998cd100756a79836adf8e34ef8f37",
    "parent_id": null,
    "user_id": null
  }
};

Future<LightStateModel> getLightState(String entityId) async {
  return await Future.value(LightStateModel.fromJson(dataOff));
}

Future<LightStateModel> setLightState(String entityId, DeviceState deviceState,
    LightStateModel lightState) async {
  return await Future.value(LightStateModel.fromJson(
      deviceState == DeviceState.on ? dataOn : dataOff));
}

class LightControlCard extends HookWidget {
  const LightControlCard({
    Key? key,
    required this.iconData,
    required this.entityId,
    required this.setBrightnessLevel,
  }) : super(key: key);

  final IconData iconData;
  final String entityId;
  final Function(double brightness) setBrightnessLevel;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<double?> brightness = useState(null);
    final ValueNotifier<LightStateModel?> lightState = useState(null);
    final ValueNotifier<bool> isChangingBrightness = useState(false);
    final ValueNotifier<Color> thumbColor = useState(Colors.white);

    final bool isTurnedOn = lightState.value?.state == DeviceState.on.name;

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
                              alignment: brightness.value != null
                                  ? Alignment.topCenter
                                  : Alignment.center,
                              child: SizedBox(
                                height: 35,
                                child: CustomSwitch(
                                  value: isTurnedOn,
                                  duration: LightControlUtils
                                      .sliderValueAnimationDuration,
                                  onToggle: (value) async {
                                    final newLightState = await setLightState(
                                      entityId,
                                      value ? DeviceState.on : DeviceState.off,
                                      lightState.value!,
                                    );
                                    lightState.value = newLightState;
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
                if (brightness.value != null)
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
                                        _sliderValueAnimationController.value =
                                            value;
                                        final newLightState =
                                            await setLightState(
                                          entityId,
                                          DeviceState.on,
                                          lightState.value!,
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
