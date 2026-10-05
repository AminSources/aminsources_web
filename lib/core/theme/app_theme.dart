import 'package:aminsources_web/core/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get theme => ThemeData(
    brightness: Brightness.dark,
    fontFamily: "titillium web",
    scaffoldBackgroundColor: backgroundColor,
  );
}
