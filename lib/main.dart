import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:home_assistant_dashboard/presentation/light_control/light_control_screen.dart';
import 'package:home_assistant_dashboard/services/home_assistant_client.dart';
import 'package:home_assistant_dashboard/theme/theme.dart';

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
      home: const LightControlScreen(),
    );
  }
}
