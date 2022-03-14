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
      inactiveColor: Theme.of(context).backgroundColor.withOpacity(0.75),
      activeColor: Colors.black.withOpacity(0.35),
      // toggleColor: Colors.red,
      onToggle: onToggle,
      value: value,
    );
  }
}
