import 'package:app/themes/colors.dart';
import 'package:flutter/material.dart';

final textLight = TextStyle(color: WhColors.white);
final textInDarkTheme = TextTheme(
  bodyText1: textLight,
  bodyText2: textLight,
  button: textLight,
  caption: textLight,
  headline1: textLight,
  headline2: textLight,
  headline3: textLight,
  headline4: textLight,
  headline5: textLight,
  headline6: textLight,
  overline: textLight,
  subtitle1: textLight,
  subtitle2: textLight,
);

final textDark = TextStyle(color: WhColors.black);
final textInLightTheme = TextTheme(
  bodyText1: textDark,
  bodyText2: textDark,
  button: textDark,
  caption: textDark,
  headline1: textDark,
  headline2: textDark,
  headline3: textDark,
  headline4: textDark,
  headline5: textDark,
  headline6: textDark,
  overline: textDark,
  subtitle1: textDark,
  subtitle2: textDark,
);

final fabForThemeDark =
    FloatingActionButtonThemeData(foregroundColor: WhColors.black);
final fabForThemeLight =
    FloatingActionButtonThemeData(foregroundColor: WhColors.white);

final ThemeData whThemeLight = ThemeData(
  errorColor: WhColors.error,
  indicatorColor: WhColors.warning,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  brightness: Brightness.light,
  primarySwatch: WhColors.black,
  primaryColor: WhColors.primary,
  accentColor: WhColors.secondary,
  hintColor: WhColors.black[100],
  backgroundColor: WhColors.white,
  scaffoldBackgroundColor: WhColors.white,
  textTheme: textInLightTheme,
  floatingActionButtonTheme: fabForThemeLight,
);

final ThemeData whThemeDark = ThemeData(
  errorColor: WhColors.error,
  indicatorColor: WhColors.warning,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  brightness: Brightness.dark,
  primarySwatch: WhColors.white,
  primaryColor: WhColors.secondary,
  accentColor: WhColors.primary,
  hintColor: WhColors.white,
  backgroundColor: WhColors.black,
  scaffoldBackgroundColor: WhColors.black,
  textTheme: textInDarkTheme,
  floatingActionButtonTheme: fabForThemeDark,
);
