import 'package:flutter/material.dart';
import 'package:home_assistant_dashboard/theme/theme.dart';
import 'package:home_assistant_dashboard/widgets/cards/generic_card.dart';

import 'data/models/light_state/light_state_model.dart';

void main() {
  runApp(const MyApp());
}

final data = {
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
    "rgb_color": [255, 146, 39],
    "xy_color": [0.579, 0.388],
    "mode": "normal",
    "dynamics": "none",
    "friendly_name": "Hue go 1",
    "supported_features": 40
  },
  "last_changed": "2022-03-05T19:51:47.681942+00:00",
  "last_updated": "2022-03-05T19:51:47.681942+00:00",
  "context": {
    "id": "0086ed6086a63d12f2217eacd8285a43",
    "parent_id": null,
    "user_id": null
  }
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GenericCard(
                  iconData: Icons.lightbulb,
                  lightState: LightStateModel.fromJson(data),
                  setBrightnessLevel: (double brightness) {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
