import 'package:flutter/material.dart';
import 'package:home_assistant_dashboard/theme/theme.dart';
import 'package:home_assistant_dashboard/widgets/cards/generic_card.dart';

import 'data/models/light_state/light_state_model.dart';

void main() {
  runApp(const MyApp());
}

final data = {
  "entity_id": "light.woonkamer",
  "state": "off",
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
    "is_hue_group": true,
    "hue_scenes": [
      "Ontspannen",
      "Gedimd",
      "Nachtlampje",
      "Energie",
      "Helder",
      "Arctische dageraad",
      "Tropische schemering",
      "Lentebloesem",
      "Concentreren",
      "Savanne zonsondergang",
      "Lezen"
    ],
    "hue_type": "room",
    "lights": [
      "Lightstrip Woonkamer",
      "Hue Lightstrip Woonkamer 2",
      "Hue go 1"
    ],
    "dynamics": false,
    "icon": "mdi:lightbulb-group",
    "friendly_name": "Woonkamer",
    "supported_features": 40
  },
  "last_changed": "2022-03-13T17:01:33.385849+00:00",
  "last_updated": "2022-03-13T17:39:42.986677+00:00",
  "context": {
    "id": "1e48bb2ccd8e733c1f5631c04032b99b",
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
                LightControlCard(
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
