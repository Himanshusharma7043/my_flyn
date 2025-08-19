import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/app_colors.dart';

class TextStyles {
  TextStyles._();
  static const String fontFamily = "Pretendard";

  static Text thin({
    required String text,
    double size = 14,
    Color? color,
    TextAlign textAlign = TextAlign.left,
    double? letterSpace,
    double? height,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w100,
        fontSize: ScreenUtil().setSp(size),
        color: color,
        letterSpacing: letterSpace,
        height: height,
      ),
    );
  }

  static Text light({
    required String text,
    double size = 14,
    Color? color,
    TextAlign textAlign = TextAlign.left,
    double? letterSpace,
    double? height,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
        fontSize: ScreenUtil().setSp(size),
        color: color,
        letterSpacing: letterSpace,
        height: height,
      ),
    );
  }

  static Text regular({
    required String text,
    double size = 14,
    Color? color,
    TextAlign textAlign = TextAlign.left,
    double? letterSpace,
    double? height,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
        fontSize: ScreenUtil().setSp(size),
        color: color,
        letterSpacing: letterSpace,
        height: height,
      ),
    );
  }

  static Text medium({
    required String text,
    double size = 14,
    Color? color,
    TextAlign textAlign = TextAlign.left,
    double? letterSpace,
    double? height,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: ScreenUtil().setSp(size),
        color: color,
        letterSpacing: letterSpace,
        height: height,
      ),
    );
  }

  static Text semiBold({
    required String text,
    double size = 14,
    Color? color,
    TextAlign textAlign = TextAlign.left,
    double? letterSpace,
    double? height,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: ScreenUtil().setSp(size),
        color: color,
        letterSpacing: letterSpace,
        height: height,
      ),
    );
  }

  static Text bold({
    required String text,
    double size = 14,
    Color? color,
    TextAlign textAlign = TextAlign.left,
    double? letterSpace,
    double? height,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: ScreenUtil().setSp(size),
        color: color,
        letterSpacing: letterSpace,
        height: height,
      ),
    );
  }

  static Text black({
    required String text,
    double size = 14,
    Color? color,
    TextAlign textAlign = TextAlign.left,
    double? letterSpace,
    double? height,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w900,
        fontSize: ScreenUtil().setSp(size),
        color: color,
        letterSpacing: letterSpace,
        height: height,
      ),
    );
  }
}
