import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({
    Key? key,
    required this.value,
    required this.onToggle,
  }) : super(key: key);

  final bool value;
  final Function(bool value) onToggle;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 60,
      activeColor: Theme.of(context).canvasColor,
      onToggle: onToggle,
      value: value,
    );
  }
}
