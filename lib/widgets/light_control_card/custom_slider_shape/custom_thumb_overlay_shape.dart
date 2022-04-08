import 'package:flutter/material.dart';

class CustomThumbOverlayShape extends RoundSliderOverlayShape {
  CustomThumbOverlayShape(
      {this.pressedElevation = 6.0,
      this.overlayRadius = 10.0,
      required this.animation});

  final double pressedElevation;
  final Animation<double> animation;

  @override
  // ignore: overridden_fields
  final double overlayRadius;

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    assert(context != null);
    assert(center != null);
    assert(enableAnimation != null);
    assert(sliderTheme != null);
    assert(sliderTheme.disabledThumbColor != null);
    assert(sliderTheme.thumbColor != null);

    assert(context != null);
    assert(center != null);
    assert(activationAnimation != null);
    assert(enableAnimation != null);
    assert(labelPainter != null);
    assert(parentBox != null);
    assert(sliderTheme != null);
    assert(textDirection != null);
    assert(value != null);

    final Canvas canvas = context.canvas;
    final Tween<double> radiusTween = Tween<double>(
      begin: 0.0,
      end: overlayRadius,
    );
    final double radius = radiusTween.evaluate(animation);

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
          center: center,
          width: radius / 3.5,
          height: 2 * radius,
        ),
        Radius.elliptical(
          overlayRadius,
          overlayRadius,
        ),
      ),
      Paint()..color = sliderTheme.overlayColor!,
    );
  }

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(0, 0);
  }
}
