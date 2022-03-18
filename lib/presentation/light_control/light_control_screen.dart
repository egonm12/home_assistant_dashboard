import 'package:flutter/material.dart';
import 'package:home_assistant_dashboard/presentation/light_control/light_control_container.dart';

class LightControlScreen extends StatelessWidget {
  const LightControlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Light Control'),
      ),
      body: const LightControlContainer(),
    );
  }
}
