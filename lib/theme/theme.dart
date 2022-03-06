import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF0d47a1),
    brightness: Brightness.dark,
  ),
  textTheme: const TextTheme(
    labelMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
);
