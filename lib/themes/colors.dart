import 'package:flutter/material.dart';

class WhColors {
  WhColors._();

  static const MaterialColor primary =
      MaterialColor(_primaryPrimaryValue, <int, Color>{
    50: Color(0xFFE2F7F6),
    100: Color(0xFFB6EAE9),
    200: Color(0xFF85DDDA),
    300: Color(0xFF54CFCB),
    400: Color(0xFF2FC4C0),
    500: Color(_primaryPrimaryValue),
    600: Color(0xFF09B3AE),
    700: Color(0xFF07ABA5),
    800: Color(0xFF05A39D),
    900: Color(0xFF03948D),
  });
  static const int _primaryPrimaryValue = 0xFF0ABAB5;

  static const MaterialColor primaryAccent =
      MaterialColor(_primaryAccentValue, <int, Color>{
    100: Color(0xFFBFFFFC),
    200: Color(_primaryAccentValue),
    400: Color(0xFF59FFF6),
    700: Color(0xFF40FFF5),
  });
  static const int _primaryAccentValue = 0xFF8CFFF9;

  static const MaterialColor secondary =
      MaterialColor(_secondaryPrimaryValue, <int, Color>{
    50: Color(0xFFF1E1F7),
    100: Color(0xFFDCB4EC),
    200: Color(0xFFC582DF),
    300: Color(0xFFAD50D2),
    400: Color(0xFF9C2BC8),
    500: Color(_secondaryPrimaryValue),
    600: Color(0xFF8204B8),
    700: Color(0xFF7704AF),
    800: Color(0xFF6D03A7),
    900: Color(0xFF5A0199),
  });
  static const int _secondaryPrimaryValue = 0xFF8A05BE;

  static const MaterialColor secondaryAccent =
      MaterialColor(_secondaryAccentValue, <int, Color>{
    100: Color(0xFFE3C4FF),
    200: Color(_secondaryAccentValue),
    400: Color(0xFFB35EFF),
    700: Color(0xFFA745FF),
  });
  static const int _secondaryAccentValue = 0xFFCB91FF;

  static const MaterialColor white =
      MaterialColor(_whitePrimaryValue, <int, Color>{
    50: Color(0xFFFDFFFF),
    100: Color(0xFFF9FFFE),
    200: Color(0xFFF6FFFE),
    300: Color(0xFFF2FEFE),
    400: Color(0xFFEFFEFD),
    500: Color(_whitePrimaryValue),
    600: Color(0xFFEAFEFD),
    700: Color(0xFFE7FEFC),
    800: Color(0xFFE4FEFC),
    900: Color(0xFFDFFDFC),
  });
  static const int _whitePrimaryValue = 0xFFECFEFD;

  static const MaterialColor whiteAccent =
      MaterialColor(_whiteAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_whiteAccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
  });
  static const int _whiteAccentValue = 0xFFFFFFFF;

  static const MaterialColor black =
      MaterialColor(_blackPrimaryValue, <int, Color>{
    50: Color(0xFFE2E1E3),
    100: Color(0xFFB7B3B9),
    200: Color(0xFF87808A),
    300: Color(0xFF564D5B),
    400: Color(0xFF322737),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF0C0112),
    700: Color(0xFF0A010E),
    800: Color(0xFF08010B),
    900: Color(0xFF040006),
  });
  static const int _blackPrimaryValue = 0xFF0E0114;

  static const MaterialColor blackAccent =
      MaterialColor(_blackAccentValue, <int, Color>{
    100: Color(0xFF4D4DFF),
    200: Color(_blackAccentValue),
    400: Color(0xFF0000E6),
    700: Color(0xFF0000CD),
  });
  static const int _blackAccentValue = 0xFF1A1AFF;

  static const MaterialColor success =
      MaterialColor(_successPrimaryValue, <int, Color>{
    50: Color(0xFFE5F4E1),
    100: Color(0xFFBEE3B5),
    200: Color(0xFF92D084),
    300: Color(0xFF66BD52),
    400: Color(0xFF46AF2D),
    500: Color(_successPrimaryValue),
    600: Color(0xFF219907),
    700: Color(0xFF1B8F06),
    800: Color(0xFF168504),
    900: Color(0xFF0D7402),
  });
  static const int _successPrimaryValue = 0xFF25A108;

  static const MaterialColor successAccent =
      MaterialColor(_successAccentValue, <int, Color>{
    100: Color(0xFFA7FFA2),
    200: Color(_successAccentValue),
    400: Color(0xFF46FF3C),
    700: Color(0xFF2EFF23),
  });
  static const int _successAccentValue = 0xFF76FF6F;

  static const MaterialColor info =
      MaterialColor(_infoPrimaryValue, <int, Color>{
    50: Color(0xFFE2EBF3),
    100: Color(0xFFB7CCE1),
    200: Color(0xFF88ABCE),
    300: Color(0xFF5889BA),
    400: Color(0xFF346FAB),
    500: Color(_infoPrimaryValue),
    600: Color(0xFF0E4F94),
    700: Color(0xFF0C458A),
    800: Color(0xFF093C80),
    900: Color(0xFF052B6E),
  });
  static const int _infoPrimaryValue = 0xFF10569C;

  static const MaterialColor infoAccent =
      MaterialColor(_infoAccentValue, <int, Color>{
    100: Color(0xFF9EBBFF),
    200: Color(_infoAccentValue),
    400: Color(0xFF3873FF),
    700: Color(0xFF1F61FF),
  });
  static const int _infoAccentValue = 0xFF6B97FF;

  static const MaterialColor warning =
      MaterialColor(_warningPrimaryValue, <int, Color>{
    50: Color(0xFFF7F3E4),
    100: Color(0xFFEAE2BB),
    200: Color(0xFFDDCF8E),
    300: Color(0xFFCFBC60),
    400: Color(0xFFC4AD3E),
    500: Color(_warningPrimaryValue),
    600: Color(0xFFB39719),
    700: Color(0xFFAB8D14),
    800: Color(0xFFA38311),
    900: Color(0xFF947209),
  });
  static const int _warningPrimaryValue = 0xFFBA9F1C;

  static const MaterialColor warningAccent =
      MaterialColor(_warningAccentValue, <int, Color>{
    100: Color(0xFFFFEEC2),
    200: Color(_warningAccentValue),
    400: Color(0xFFFFD25C),
    700: Color(0xFFFFCC42),
  });
  static const int _warningAccentValue = 0xFFFFE08F;

  static const MaterialColor error =
      MaterialColor(_errorPrimaryValue, <int, Color>{
    50: Color(0xFFEEE3E2),
    100: Color(0xFFD4B9B7),
    200: Color(0xFFB78B88),
    300: Color(0xFF9A5C58),
    400: Color(0xFF843934),
    500: Color(_errorPrimaryValue),
    600: Color(0xFF66130E),
    700: Color(0xFF5B100C),
    800: Color(0xFF510C09),
    900: Color(0xFF3F0605),
  });
  static const int _errorPrimaryValue = 0xFF6E1610;

  static const MaterialColor errorAccent =
      MaterialColor(_errorAccentValue, <int, Color>{
    100: Color(0xFFFF7575),
    200: Color(_errorAccentValue),
    400: Color(0xFFFF0F0F),
    700: Color(0xFFF50000),
  });
  static const int _errorAccentValue = 0xFFFF4242;
}
