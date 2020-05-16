import 'package:flutter/material.dart';

class AppWidgetSize {
  //!For android base size
  static Size androidBaseSize = Size(320.0, 533.33);

  //!Responsive width
  static double getResponsiveWidth(Size appSize, double size) {
    return appSize.height * size;
  }

  //!Responsive height
  static double getResponsiveHeight(Size appSize, double size) {
    return (appSize.height) * size;
  }
}
