import 'package:furnicharbazar/Theme/AppColor.dart';
import 'package:furnicharbazar/Utilities/AppWidgetSize.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //!Theme data
  static ThemeData themeData = ThemeData(
    primaryColor: AppColor.primaryColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
    ),
  );

  //!Small Text style
  static TextStyle smallTextStyle(
      {Size appSize, Color color, FontWeight fontWeight}) {
    return TextStyle(
        color: color,
        fontFamily: 'Avenir',
        fontWeight: fontWeight,
        fontSize: AppWidgetSize.getResponsiveWidth(appSize, 0.017),
        height: 1.5,
        letterSpacing: 1.5);
  }

  //!Mediam Text style
  static TextStyle mediamTextStyle(
      {Size appSize, Color color, FontWeight fontWeight}) {
    return TextStyle(
        color: color,
        fontFamily: 'Avenir',
        fontWeight: fontWeight,
        fontSize: AppWidgetSize.getResponsiveWidth(appSize, 0.017),
        letterSpacing: 1.5);
  }

  //!Large Text style
  static TextStyle largeTextStyle(
      {Size appSize, Color color, FontWeight fontWeight}) {
    return TextStyle(
        color: color,
        fontFamily: 'Avenir',
        fontWeight: fontWeight,
        fontSize: AppWidgetSize.getResponsiveWidth(appSize, 0.024),
        letterSpacing: 1.5);
  }

  //!xLarge Text style
  static TextStyle xlargeTextStyle(
      {Size appSize, Color color, FontWeight fontWeight}) {
    return TextStyle(
        color: color,
        fontFamily: 'Avenir',
        fontWeight: fontWeight,
        fontSize: AppWidgetSize.getResponsiveWidth(appSize, 0.029),
        letterSpacing: 1.5);
  }
  //!xxLarge Text style
  static TextStyle xxlargeTextStyle(
      {Size appSize, Color color, FontWeight fontWeight}) {
    return TextStyle(
        color: color,
        fontFamily: 'Avenir',
        fontWeight: fontWeight,
        fontSize: AppWidgetSize.getResponsiveWidth(appSize, 0.04),
        letterSpacing: 1.5);
  }
}
