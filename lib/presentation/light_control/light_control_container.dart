import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:home_assistant_dashboard/widgets/light_control_card/light_control_card.dart';

class LightControlContainer extends HookWidget {
  const LightControlContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LightControlCard.create(
                context,
                Icons.lightbulb,
                'light.hue_lightstrip_werkkamer',
              ),
            ],
          )
        ],
      ),
    );
  }
}
