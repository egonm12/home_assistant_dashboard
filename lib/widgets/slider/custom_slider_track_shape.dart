import 'package:flutter/material.dart';

class CustomSliderTrackShape extends RoundedRectSliderTrackShape {
  CustomSliderTrackShape({
    required this.gradient,
    this.darkenInactive = true,
    required this.animation,
    required this.inactive,
    required this.theme,
  });

  final LinearGradient gradient;
  final bool darkenInactive;
  final Animation<double> animation;
  final bool inactive;
  final ThemeData theme;

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = Tween<double>(begin: 8, end: 120)
        .evaluate(animation); // sliderTheme.trackHeight ?? 8;
    final double trackLeft =
        Tween<double>(begin: offset.dx, end: offset.dx + 9).evaluate(animation);
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = Tween<double>(
            begin: parentBox.size.width, end: parentBox.size.width - 17)
        .evaluate(animation);

    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }

  @override
  void paint(PaintingContext context, Offset offset,
      {required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required Animation<double> enableAnimation,
      required TextDirection textDirection,
      required Offset thumbCenter,
      bool isDiscrete = false,
      bool isEnabled = false,
      double additionalActiveTrackHeight = 2}) {
    assert(context != null);
    assert(offset != null);
    assert(parentBox != null);
    assert(sliderTheme != null);
    assert(sliderTheme.disabledActiveTrackColor != null);
    assert(sliderTheme.disabledInactiveTrackColor != null);
    assert(sliderTheme.activeTrackColor != null);
    assert(sliderTheme.inactiveTrackColor != null);
    assert(sliderTheme.thumbShape != null);
    assert(enableAnimation != null);
    assert(textDirection != null);
    assert(thumbCenter != null);
    // If the slider [SliderThemeData.trackHeight] is less than or equal to 0,
    // then it makes no difference whether the track is painted or not,
    // therefore the painting  can be a no-op.
    if (sliderTheme.trackHeight == null || sliderTheme.trackHeight! <= 0) {
      return;
    }

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final activeGradientRect = Rect.fromLTRB(
      trackRect.left,
      (textDirection == TextDirection.ltr)
          ? trackRect.top - (additionalActiveTrackHeight / 2)
          : trackRect.top,
      thumbCenter.dx,
      (textDirection == TextDirection.ltr)
          ? trackRect.bottom + (additionalActiveTrackHeight / 2)
          : trackRect.bottom,
    );

    final gradientColorTweenLeft = ColorTween(
        begin: Colors.white.withOpacity(0.1), end: Colors.white.withOpacity(1));
    final gradientColorTweenRight = ColorTween(
        begin: Colors.white.withOpacity(0.7),
        end: Colors.white.withOpacity(0.3));
    final _gradient = LinearGradient(
      colors: [
        gradientColorTweenLeft.evaluate(animation)!,
        gradientColorTweenRight.evaluate(animation)!,
      ],
    );
    // Assign the track segment paints, which are leading: active and
    // trailing: inactive.
    final ColorTween activeTrackColorTween = ColorTween(
        begin: sliderTheme.disabledActiveTrackColor,
        end: sliderTheme.activeTrackColor);
    final ColorTween inactiveTrackColorTween = ColorTween(
        begin: sliderTheme.disabledInactiveTrackColor,
        end: sliderTheme.inactiveTrackColor);
    final Paint activePaint = Paint()
      ..shader = inactive ? null : _gradient.createShader(activeGradientRect)
      ..color = activeTrackColorTween.evaluate(enableAnimation)!;
    final Paint inactivePaint = Paint()
      ..color = inactiveTrackColorTween.evaluate(enableAnimation)!;

    final Paint leftTrackPaint;
    final Paint rightTrackPaint;
    switch (textDirection) {
      case TextDirection.ltr:
        leftTrackPaint = activePaint;
        rightTrackPaint = inactivePaint;
        break;
      case TextDirection.rtl:
        leftTrackPaint = inactivePaint;
        rightTrackPaint = activePaint;
        break;
    }

    final circularRadius =
        Radius.circular((trackRect.height + additionalActiveTrackHeight) / 2);
    final Radius radius = Tween<Radius>(
      begin: inactive ? circularRadius : Radius.zero,
      end: circularRadius,
    ).evaluate(enableAnimation);
    final radiusReverse = Tween<Radius>(
      begin: circularRadius,
      end: inactive ? circularRadius : Radius.zero,
    );
    final Radius trackRadius = radius;
    final Radius activeTrackRadius = radius;
    if (!inactive) {
      context.canvas.drawRRect(
        RRect.fromLTRBAndCorners(
          trackRect.left,
          (textDirection == TextDirection.ltr)
              ? trackRect.top - (additionalActiveTrackHeight / 2)
              : trackRect.top,
          thumbCenter.dx,
          (textDirection == TextDirection.ltr)
              ? trackRect.bottom + (additionalActiveTrackHeight / 2)
              : trackRect.bottom,
          topLeft: radiusReverse.evaluate(animation),
          bottomLeft: radiusReverse.evaluate(animation),
        ),
        leftTrackPaint,
      );
    }

    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        thumbCenter.dx,
        (textDirection == TextDirection.rtl)
            ? trackRect.top - (additionalActiveTrackHeight / 2)
            : trackRect.top,
        trackRect.right,
        (textDirection == TextDirection.rtl)
            ? trackRect.bottom + (additionalActiveTrackHeight / 2)
            : trackRect.bottom,
        topRight: (textDirection == TextDirection.rtl)
            ? activeTrackRadius
            : trackRadius,
        bottomRight: (textDirection == TextDirection.rtl)
            ? activeTrackRadius
            : trackRadius,
        bottomLeft: inactive
            ? (textDirection == TextDirection.rtl)
                ? activeTrackRadius
                : trackRadius
            : Radius.zero,
        topLeft: inactive
            ? (textDirection == TextDirection.rtl)
                ? activeTrackRadius
                : trackRadius
            : Radius.zero,
      ),
      rightTrackPaint,
    );
  }
}
