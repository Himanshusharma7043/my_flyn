import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static Color grey = hexToColor("#F2F2F2");
  static Color grey_dark = hexToColor("#878787");
  static Color grey_tb = hexToColor("#757575");
  static Color purple = hexToColor("#8130EF");
  static Color purple_light = hexToColor("#F8F3FE");
  static Color black = hexToColor("#2E2E2E");
  static Color card_bg = hexToColor("#FCFCFC");
}
Color hexToColor(String hex) {
  return Color(int.parse(
    hex.substring(1),
    radix: 16,
  ) | (hex.length == 7 ? 0xFF000000 : 0x00000000));
}
