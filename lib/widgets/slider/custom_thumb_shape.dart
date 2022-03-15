import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomThumbShape extends SliderComponentShape {
  CustomThumbShape({
    this.elevation = 1.0,
    this.pressedElevation = 6.0,
    this.enabledThumbRadius = 10.0,
    this.disabledThumbRadius = 10.0,
    required this.animation,
    required this.inactive,
  });

  final double elevation;
  final double pressedElevation;

  final double enabledThumbRadius;
  final double disabledThumbRadius;
  final Animation<double> animation;
  final bool inactive;

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    assert(context != null);
    assert(center != null);
    assert(enableAnimation != null);
    assert(sliderTheme != null);
    assert(sliderTheme.disabledThumbColor != null);
    assert(sliderTheme.thumbColor != null);

    final Canvas canvas = context.canvas;

    final thumbRadius =
        Tween<double>(begin: 20, end: 60).evaluate(activationAnimation);

    final Tween<double> radiusTween = Tween<double>(
      begin: thumbRadius,
      end: thumbRadius,
    );
    final ColorTween colorTween = ColorTween(
      begin: sliderTheme.disabledThumbColor,
      end: sliderTheme.thumbColor,
    );

    final Color color = colorTween.evaluate(enableAnimation)!;
    final double radius = radiusTween.evaluate(animation);

    final height = Tween<double>(begin: radius, end: radius * 2)
        .evaluate(activationAnimation);
    final width = Tween<double>(begin: radius, end: radius / 3.5)
        .evaluate(activationAnimation);

    final Tween<double> elevationTween = Tween<double>(
      begin: elevation,
      end: pressedElevation,
    );

    final double evaluatedElevation =
        elevationTween.evaluate(activationAnimation);
    final Path path = Path()
      ..addArc(
        Rect.fromCenter(center: center, width: width, height: height),
        0,
        math.pi * 2,
      );
    if (!inactive) {
      canvas.drawShadow(path, Colors.black, evaluatedElevation, true);
    }

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
          center: center,
          width: width,
          height: height,
        ),
        Radius.elliptical(
          thumbRadius,
          thumbRadius,
        ),
      ),
      Paint()..color = color,
    );
  }

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(20, 40);
  }
}
