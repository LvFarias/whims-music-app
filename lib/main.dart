import 'dart:ui' as ui;

import 'package:app/lang/translate.dart';
import 'package:app/routes/pages.dart';
import 'package:app/routes/routes.dart';
import 'package:app/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(WhAndroidApp());
}

class WhAndroidApp extends StatelessWidget {
  final WhThemeService themeService = WhThemeService();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: WhTranslate(),
      locale: ui.window.locale,
      fallbackLocale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      title: 'Whims Music',
      theme: themeService.light,
      darkTheme: themeService.dark,
      themeMode: themeService.mode,
      getPages: WhPages.routes,
      initialRoute: WhRoutes.INITIAL,
    );
  }
}
