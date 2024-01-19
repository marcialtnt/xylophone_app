import 'dart:math';

List<int> intToRgb(int colorInt)
{
  int r = (colorInt >> 16) & 0xFF;
  int g = (colorInt >> 8) & 0xFF;
  int b = colorInt & 0xFF;
  return ([r, g, b]);
}

int rgbToIntColor(int r, int g, int b) {
  int colorInt = (255 << 24) | (r << 16) | (g << 8) | b;
  return (colorInt);
}