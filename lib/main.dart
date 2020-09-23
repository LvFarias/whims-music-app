import 'dart:ui' as ui;

import 'package:app/lang/translate.dart';
import 'package:app/routes/pages.dart';
import 'package:app/routes/routes.dart';
import 'package:app/themes/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(WhAndroidApp());
}

class WhAndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(ui.window.locale);
    return GetMaterialApp(
      translations: WhTranslate(),
      locale: ui.window.locale,
      fallbackLocale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      title: 'Whims Music',
      theme: whThemeLight,
      darkTheme: whThemeDark,
      themeMode: ThemeMode.system,
      getPages: WhPages.routes,
      initialRoute: WhRoutes.INITIAL,
    );
  }
}
