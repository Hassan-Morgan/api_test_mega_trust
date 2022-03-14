import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mega_trust_api_task/presentation/resources/color_manager.dart';
import 'package:mega_trust_api_task/presentation/resources/text_themes.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        color: ColorManager.accentOrangeColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.accentOrangeColor,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      textTheme: TextTheme(
        headline1: TextThemes.titlesLightMode,
        subtitle1: TextThemes.subtitle,
      ));
}
