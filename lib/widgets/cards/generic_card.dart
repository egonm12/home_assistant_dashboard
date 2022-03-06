import 'package:flutter/material.dart';
import 'package:home_assistant_dashboard/data/models/light_state/light_state_model.dart';
import 'package:home_assistant_dashboard/widgets/cards/switch.dart';

import '../slider/custom_slider_track_shape.dart';
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

    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
        child: Stack(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            widget.iconData,
                            size: 35,
                            color: isTurnedOn
                                ? color
                                : Theme.of(context).iconTheme.color,
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.lightState.attributes.friendlyName,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(isTurnedOn ? 'Aan' : 'Uit'),
                            ],
                          ),
                          const Spacer(flex: 9),
                          CustomSwitch(value: isTurnedOn, onToggle: (value) {}),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isChangingBrightness ? 0.0 : 16.0,
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
                              isChanging: isChangingBrightness),
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
                              isChangingBrightness ? Colors.grey : null,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // if (isChangingBrightness)
            //   SliderTheme(
            //     data: SliderThemeData(
            //       trackHeight: 100,
            //       thumbShape: CustomThumbShape(
            //         enabledThumbRadius: 50,
            //       ),
            //       trackShape: CustomRectTrackShape(),
            //       // thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            //       // overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
            //     ),
            //     child: Slider(
            //       max: 255,
            //       value: brightness,
            //       onChanged: (value) => setState(() {
            //         brightness = value;
            //       }),
            //       onChangeEnd: (_) => setState(() {
            //         isChangingBrightness = false;
            //       }),
            //       thumbColor: Colors.white,
            //       activeColor: color,
            //     ),
            //   ),
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
