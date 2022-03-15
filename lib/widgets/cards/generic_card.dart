import 'package:flutter/material.dart';
import 'package:home_assistant_dashboard/data/models/light_state/light_state_model.dart';
import 'package:home_assistant_dashboard/widgets/cards/switch.dart';

import '../slider/custom_slider_track_shape.dart';
import '../slider/custom_thumb_overlay_shape.dart';
import '../slider/custom_thumb_shape.dart';

class LightControlCard extends StatefulWidget {
  const LightControlCard({
    Key? key,
    required this.iconData,
    required this.setBrightnessLevel,
    required this.lightState,
  }) : super(key: key);

  final IconData iconData;
  final Function(double brightness) setBrightnessLevel;
  final LightStateModel lightState;

  @override
  State<LightControlCard> createState() => _LightControlCardState();
}

class _LightControlCardState extends State<LightControlCard>
    with TickerProviderStateMixin {
  late double? brightness;
  bool isChangingBrightness = false;
  late final AnimationController _animationController = AnimationController(
    duration: const Duration(milliseconds: 60),
    vsync: this,
  );

  @override
  void initState() {
    super.initState();
    brightness = widget.lightState.attributes.brightness;
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isTurnedOn = widget.lightState.state == DeviceState.on.name;
    final List<int> rgbColor =
        widget.lightState.attributes.rgbColor ?? [255, 200, 75];
    final Color color = isTurnedOn
        ? Color.fromRGBO(
            rgbColor[0],
            rgbColor[1],
            rgbColor[2],
            1,
          )
        : Theme.of(context).cardColor;
    final brightnessBalance = brightness != null ? brightness! / 255 : 1;
    final brightnessPercentage = (brightnessBalance * 100).ceil();

    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      child: Container(
        height: 120,
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
                    spreadRadius: 50.0 * brightnessBalance,
                    blurRadius: 50.0,
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
                            alignment: brightness != null
                                ? isChangingBrightness
                                    ? Alignment.center
                                    : Alignment.topCenter
                                : Alignment.center,
                            duration: const Duration(milliseconds: 65),
                            child: Row(
                              children: [
                                Icon(
                                  widget.iconData,
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
                                      widget.lightState.attributes.friendlyName,
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                    Text(
                                      isChangingBrightness
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
                          if (!isChangingBrightness)
                            Align(
                              alignment: brightness != null
                                  ? Alignment.topCenter
                                  : Alignment.center,
                              child: SizedBox(
                                height: 35,
                                child: CustomSwitch(
                                  value: isTurnedOn,
                                  onToggle: (value) {},
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (brightness != null)
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isChangingBrightness ? 0.0 : 16.0,
                      vertical: isChangingBrightness ? 0.0 : 16.0,
                    ),
                    child: Column(
                      mainAxisAlignment: isChangingBrightness
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 20,
                          child: SliderTheme(
                            data: SliderThemeData(
                              disabledThumbColor: Colors.transparent,
                              thumbColor: Colors.white,
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
                                animation: _animationController.view,
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
                                animation: _animationController.view,
                                overlayRadius: 60,
                              ),
                              overlayColor: Colors.transparent,
                              thumbShape: CustomThumbShape(
                                inactive: !isTurnedOn,
                                animation: _animationController.view,
                                enabledThumbRadius: 60,
                              ),
                            ),
                            child: Slider(
                              max: 255,
                              min: 1,
                              value: isTurnedOn ? brightness ?? 1 : 1,
                              onChanged: isTurnedOn
                                  ? (value) => setState(() {
                                        brightness = value;
                                      })
                                  : null,
                              onChangeStart: (_) => setState(() {
                                isChangingBrightness = true;
                                _animationController.animateTo(1.0);
                              }),
                              onChangeEnd: (_) => setState(() {
                                isChangingBrightness = false;
                                _animationController.animateTo(0.0);
                              }),
                              inactiveColor: isChangingBrightness
                                  ? Colors.transparent
                                  : null,
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
