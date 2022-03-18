import 'package:flutter/material.dart';
import 'package:home_assistant_dashboard/presentation/light_control/light_control_screen.dart';
import 'package:home_assistant_dashboard/theme/theme.dart';

void main() {
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
