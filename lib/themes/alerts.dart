import 'package:app/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WhToast {
  WhToast._();

  static WhThemeService themeService = WhThemeService();

  static void error(String title, String message) {
    Get.snackbar(
      title,
      message,
      colorText: themeService.colors.black,
      duration: Duration(seconds: 5),
      icon: Icon(Icons.do_not_disturb_alt),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: themeService.colors.error.withOpacity(0.5),
    );
  }

  static void warning(String title, String message) {
    Get.snackbar(
      title,
      message,
      colorText: themeService.colors.black,
      duration: Duration(seconds: 5),
      icon: Icon(Icons.warning),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: themeService.colors.warning.withOpacity(0.5),
    );
  }

  static void info(String title, String message) {
    Get.snackbar(
      title,
      message,
      colorText: themeService.colors.black,
      duration: Duration(seconds: 5),
      icon: Icon(Icons.info),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: themeService.colors.info.withOpacity(0.5),
    );
  }

  static void success(String title, String message) {
    Get.snackbar(
      title,
      message,
      colorText: themeService.colors.black,
      duration: Duration(seconds: 5),
      icon: Icon(Icons.check_circle_outline),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: themeService.colors.success.withOpacity(0.5),
    );
  }
}
