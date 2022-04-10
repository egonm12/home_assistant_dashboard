import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:home_assistant_dashboard/data/repositories/entity_states/entity_states_repository.dart';
import 'package:home_assistant_dashboard/features/entity_states/entity_states_model.dart';
import 'package:home_assistant_dashboard/presentation/light_control/light_control_screen.dart';
import 'package:home_assistant_dashboard/services/home_assistant_client.dart';
import 'package:home_assistant_dashboard/theme/theme.dart';

import 'features/entity_states/entity_states_state.dart';

Future<void> main() async {
  await dotenv.load();

  HomeAssistantClient();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: StateNotifierProvider<EntityStatesModel, EntityStatesState>(
        create: (_) => EntityStatesModel(
          entityStatesRepository: EntityStatesRepository(),
        ),
        child: const LightControlScreen(),
      ),
    );
  }
}
