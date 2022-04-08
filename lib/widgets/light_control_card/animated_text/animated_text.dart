import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../utils.dart';

class AnimatedText extends HookWidget {
  const AnimatedText({
    Key? key,
    required this.isChangingBrightness,
    required this.iconData,
    required this.brightnessBalance,
    required this.isTurnedOn,
  }) : super(key: key);

  final bool isChangingBrightness;
  final IconData iconData;
  final num brightnessBalance;
  final bool isTurnedOn;

  @override
  Widget build(BuildContext context) {
    final brightnessPercentage =
        LightControlUtils.brightnessPercentage(brightnessBalance);

    return AnimatedAlign(
      alignment: isChangingBrightness ? Alignment.center : Alignment.topCenter,
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
                'Werkkamer',
                style: Theme.of(context).textTheme.headline6,
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
    );
  }
}
