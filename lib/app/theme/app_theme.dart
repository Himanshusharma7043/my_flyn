import 'package:flutter/material.dart';
import '../app_colors.dart';

class AppTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Pretendard',
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
        color: AppColors.black, 
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        color: AppColors.black,
      ),
    ),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: AppColors.black,
    fontFamily: 'Pretendard',
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),
  );
}
