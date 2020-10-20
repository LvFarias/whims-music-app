import 'package:app/services/storage.dart';
import 'package:easy_theme/easy_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WhThemeService extends GetxService {
  final WhStorageService storage = WhStorageService();

  EasyColors colors;
  ThemeMode mode = ThemeMode.system;

  static EasyTheme _easyThemeLight = EasyTheme(
    primary: Color(0xFF0ABAB5),
    secondary: Color(0xFF8A05BE),
    success: Color(0xFF25A108),
    info: Color(0xFF10569C),
    warning: Color(0xFFBA9F1C),
    error: Color(0xFF6E1610),
    brightness: Brightness.light,
  );

  static EasyTheme _easyThemeDark = EasyTheme(
    primary: Color(0xFF8A05BE),
    secondary: Color(0xFF0ABAB5),
    success: Color(0xFF25A108),
    info: Color(0xFF10569C),
    warning: Color(0xFFBA9F1C),
    error: Color(0xFF6E1610),
    brightness: Brightness.dark,
  );

  ThemeData dark = _easyThemeDark.getTheme();
  ThemeData light = _easyThemeLight.getTheme();

  @override
  void onInit() {
    super.onInit();
    this._setColor();
  }

  void changeTheme(String newThemeMode) {
    if (newThemeMode == 'light') {
      this.mode = ThemeMode.light;
    } else if (newThemeMode == 'dark') {
      this.mode = ThemeMode.dark;
    } else if (newThemeMode == 'system') {
      this.mode = ThemeMode.system;
    } else {
      return;
    }
    Get.changeThemeMode(this.mode);
    this.colors = Get.theme.brightness == Brightness.light
        ? _easyThemeLight.getColors()
        : _easyThemeDark.getColors();
    this.storage.write('theme', newThemeMode);
  }

  void _setColor() async {
    String theme = await this.storage.getValue('theme');
    if (theme.isEmpty) {
      this.changeTheme('system');
    } else {
      this.changeTheme(theme);
    }
  }
}
