import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:home_assistant_dashboard/data/models/light_state/light_state_model.dart';
import 'package:home_assistant_dashboard/features/lights/light_state.dart';
import 'package:home_assistant_dashboard/features/lights/light_model.dart';
import 'package:home_assistant_dashboard/widgets/light_control_card/animated_slider/animated_slider.dart';
import 'package:home_assistant_dashboard/widgets/light_control_card/animated_text/animated_text.dart';
import 'package:home_assistant_dashboard/widgets/switch/switch.dart';
import 'package:provider/provider.dart';
import '../../data/repositories/lights/lights_repository.dart';
import '../../helpers/throttle.dart';
import 'custom_slider_shape/custom_slider_track_shape.dart';
import 'custom_slider_shape/custom_thumb_overlay_shape.dart';
import 'custom_slider_shape/custom_thumb_shape.dart';
import 'utils.dart';

final thr = Throttling(duration: const Duration(milliseconds: 125));

class LightControlCard extends HookWidget {
  const LightControlCard({
    Key? key,
    required this.iconData,
    required this.entityId,
  }) : super(key: key);

  final IconData iconData;
  final String entityId;

  static Widget create(
    BuildContext context,
    IconData iconData,
    String entityId,
  ) {
    return StateNotifierProvider<LightModel, LightState>(
      create: (_) => LightModel(
        lightsRepository: LightsRepository(),
      ),
      child: LightControlCard(
        entityId: entityId,
        iconData: iconData,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final lightModel = context.watch<LightState>();

    final ValueNotifier<double?> brightness = useState(null);
    final ValueNotifier<bool> isChangingBrightness = useState(false);
    final ValueNotifier<LightStateModel?> _lightState = useState(null);
    final ValueNotifier<bool> isTurnedOn = useState(false);

    final _sliderValueAnimationController = useAnimationController(
      duration: LightControlUtils.sliderValueAnimationDuration,
      lowerBound: LightControlUtils.sliderMin,
      upperBound: LightControlUtils.sliderMax,
    );

    final bool isBrightnessSupported =
        _lightState.value?.attributes.supportedFeatures != 0;

    useEffect(() {
      Future.microtask(
          () => context.read<LightModel>().getLightState(entityId));
    }, []);

    useEffect(() {
      lightModel.getLightState.whenOrNull(success: (lightState) {
        _lightState.value = lightState;
        isTurnedOn.value = lightState.state == DeviceState.on.name;
        brightness.value = lightState.attributes.brightness;
      });
    }, [lightModel.getLightState]);

    useEffect(() {
      lightModel.setLightState.whenOrNull(success: (lightState) {
        _lightState.value = lightState;
        isTurnedOn.value = lightState.state == DeviceState.on.name;
      });
    }, [lightModel.setLightState]);

    final List<int> rgbColor = _lightState.value?.attributes.rgbColor ??
        LightControlUtils.defaultRGBColor;
    final Color color = isTurnedOn.value
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
          boxShadow: isTurnedOn.value
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
                          AnimatedText(
                            isChangingBrightness: isChangingBrightness.value,
                            brightnessBalance: brightnessBalance,
                            iconData: iconData,
                            isTurnedOn: isTurnedOn.value,
                          ),
                          if (!isChangingBrightness.value)
                            Align(
                              alignment: isBrightnessSupported
                                  ? Alignment.topCenter
                                  : Alignment.center,
                              child: SizedBox(
                                height: 35,
                                child: CustomSwitch(
                                  value: isTurnedOn.value,
                                  duration: LightControlUtils
                                      .sliderValueAnimationDuration,
                                  onToggle: (value) async {
                                    await context
                                        .read<LightModel>()
                                        .setLightState(
                                          entityId,
                                          value
                                              ? DeviceState.on
                                              : DeviceState.off,
                                          _lightState.value!,
                                        );
                                    if (value) {
                                      _sliderValueAnimationController.animateTo(
                                        _lightState
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
                          child: AnimatedSlider(
                            entityId: entityId,
                            disabled: !isTurnedOn.value,
                            lightState: _lightState.value!,
                            isChangingBrightness: isChangingBrightness,
                            brightness: brightness,
                            sliderValueAnimationController:
                                _sliderValueAnimationController,
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
