import 'package:flutter/material.dart';

extension ColorExt on Color {
  static Color fromColor(int value) {
    return Color(value);
  }

  static int toJson(Color value) {
    return value.value;
  }
}
