import 'package:flutter/material.dart';
import 'package:home_assistant_dashboard/data/models/light_state/light_state_model.dart';
import 'package:home_assistant_dashboard/widgets/cards/switch.dart';

import '../slider/custom_slider_track_shape.dart';
import '../slider/custom_thumb_overlay_shape.dart';
import '../slider/custom_thumb_shape.dart';

class GenericCard extends StatefulWidget {
  const GenericCard({
    Key? key,
    required this.iconData,
    required this.setBrightnessLevel,
    required this.lightState,
  }) : super(key: key);

  final IconData iconData;
  final Function(double brightness) setBrightnessLevel;
  final LightStateModel lightState;

  @override
  State<GenericCard> createState() => _GenericCardState();
}

class _GenericCardState extends State<GenericCard> {
  double brightness = 20;
  bool isChangingBrightness = false;

  @override
  Widget build(BuildContext context) {
    final bool isTurnedOn = widget.lightState.state == DeviceState.on.name;
    final List<int> rgbColor = widget.lightState.attributes.rgbColor;
    final Color color = Color.fromRGBO(
      rgbColor[0],
      rgbColor[1],
      rgbColor[2],
      1,
    );
    final brightnessBalance = brightness / 255;
    final brightnessPercentage = (brightnessBalance * 100).round();
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
            stops: [0.0, 0.8 + brightnessBalance],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: const Offset(
                0,
                -120,
              ),
              spreadRadius: 50.0 * brightnessBalance,
              blurRadius: 50.0,
            ),
          ],
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
                            alignment: isChangingBrightness
                                ? Alignment.center
                                : Alignment.topCenter,
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
                                    Text(isChangingBrightness
                                        ? '$brightnessPercentage%'
                                        : isTurnedOn
                                            ? 'On'
                                            : 'Off'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          if (!isChangingBrightness)
                            Align(
                              alignment: Alignment.topCenter,
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
                      SliderTheme(
                        data: SliderThemeData(
                          trackHeight: isChangingBrightness ? 120 : 8,
                          trackShape: CustomSliderTrackShape(
                            isChanging: isChangingBrightness,
                            gradient: LinearGradient(
                              colors: [
                                Theme.of(context).highlightColor.withOpacity(
                                      isChangingBrightness ? 0.0 : 0.95,
                                    ),
                                Colors.white.withOpacity(
                                  isChangingBrightness ? 0.6 : 1.0,
                                ),
                              ],
                            ),
                          ),
                          overlayShape: CustomThumbOverlayShape(
                            overlayRadius: 60,
                          ),
                          overlayColor: Colors.transparent,
                          thumbShape: isChangingBrightness
                              ? CustomThumbShape(
                                  enabledThumbRadius: 60,
                                )
                              : null,
                        ),
                        child: Slider(
                          max: 255,
                          value: brightness,
                          onChanged: (value) => setState(() {
                            brightness = value;
                          }),
                          onChangeStart: (_) => setState(() {
                            isChangingBrightness = true;
                          }),
                          onChangeEnd: (_) => setState(() {
                            isChangingBrightness = false;
                          }),
                          thumbColor: Colors.white,
                          activeColor: color,
                          inactiveColor:
                              isChangingBrightness ? Colors.transparent : null,
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
