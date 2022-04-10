import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:home_assistant_dashboard/data/models/entity_state/entity_state_model.dart';
import 'package:home_assistant_dashboard/data/models/light_state/light_state_model.dart';
import 'package:home_assistant_dashboard/features/lights/light_model.dart';
import 'package:provider/provider.dart';

import '../custom_slider_shape/custom_slider_track_shape.dart';
import '../custom_slider_shape/custom_thumb_overlay_shape.dart';
import '../custom_slider_shape/custom_thumb_shape.dart';
import '../light_control_card.dart';
import '../utils.dart';

class AnimatedSlider extends HookWidget {
  const AnimatedSlider({
    Key? key,
    required this.disabled,
    required this.entityId,
    required this.lightState,
    required this.brightness,
    required this.isChangingBrightness,
    required this.sliderValueAnimationController,
  }) : super(key: key);

  final bool disabled;
  final String entityId;
  final EntityStateModel lightState;
  final ValueNotifier<double?> brightness;
  final ValueNotifier<bool> isChangingBrightness;
  final AnimationController sliderValueAnimationController;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<Color> thumbColor = useState(Colors.white);

    final _sliderAnimationController = useAnimationController(
      duration: LightControlUtils.sliderAnimationDuration,
    );

    useEffect(() {
      if (brightness.value != null) {
        sliderValueAnimationController.value = brightness.value!;
      }
      return null;
    }, [brightness.value]);

    useEffect(() {
      thumbColor.value = disabled ? Colors.transparent : Colors.white;
      return null;
    }, [disabled]);

    return SliderTheme(
      data: SliderThemeData(
        disabledThumbColor: thumbColor.value,
        thumbColor: thumbColor.value,
        inactiveTrackColor: Colors.white.withOpacity(0.15),
        trackShape: CustomSliderTrackShape(
          inactive: disabled,
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
          inactive: disabled,
          animation: _sliderAnimationController.view,
          enabledThumbRadius: LightControlUtils.height / 2,
        ),
      ),
      child: AnimatedBuilder(
        animation: sliderValueAnimationController.view,
        builder: (_, __) => Slider(
          max: LightControlUtils.sliderMax,
          min: LightControlUtils.sliderMin,
          value: sliderValueAnimationController.value,
          onChanged: disabled
              ? null
              : (value) async {
                  brightness.value = value;
                  thr.throttle(() async {
                    context.read<LightModel>().setLightState(
                          entityId,
                          DeviceState.on,
                          lightState.copyWith(
                            attributes: LightStateAttributes.fromJson(
                                    lightState.attributes)
                                .copyWith(
                                  brightness: value,
                                )
                                .toJson(),
                          ),
                        );
                    // final newLightState =
                    //     await lightsRepository
                    //         .setLightState(
                    //   entityId,
                    //   DeviceState.on,
                    //   lightState!.copyWith(
                    //     attributes: lightState!.attributes
                    //         .copyWith(brightness: value),
                    //   ),
                    // );
                    //
                    // lightState = newLightState;
                  });
                },
          onChangeStart: (_) {
            isChangingBrightness.value = true;
            _sliderAnimationController.animateTo(1.0);
          },
          onChangeEnd: (_) {
            isChangingBrightness.value = false;
            _sliderAnimationController.animateTo(0.0);
          },
          inactiveColor: isChangingBrightness.value ? Colors.transparent : null,
        ),
      ),
    );
  }
}
