class LightControlUtils {
  LightControlUtils._();

  static const defaultRGBColor = [255, 200, 75];
  static const sliderAnimationDuration = Duration(milliseconds: 60);
  static const sliderValueAnimationDuration = Duration(milliseconds: 90);
  static const double boxShadowRadius = 50.0;
  static const double height = 120.0;
  static const double sliderMax = 255;
  static const double sliderMin = 1;

  static num brightnessBalance(double? brightness) =>
      brightness != null ? brightness / 255 : 1;

  static num brightnessPercentage(num brightnessBalance) =>
      (brightnessBalance * 100).ceil();
}
