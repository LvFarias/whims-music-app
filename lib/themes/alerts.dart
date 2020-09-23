import 'package:app/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WhToast {
  WhToast._();

  static void error(String title, String message) {
    Get.snackbar(
      title,
      message,
      colorText: WhColors.black,
      duration: Duration(seconds: 5),
      icon: Icon(Icons.do_not_disturb_alt),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: WhColors.error.withOpacity(0.5),
    );
  }

  static void warning(String title, String message) {
    Get.snackbar(
      title,
      message,
      colorText: WhColors.black,
      duration: Duration(seconds: 5),
      icon: Icon(Icons.warning),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: WhColors.warning.withOpacity(0.5),
    );
  }

  static void info(String title, String message) {
    Get.snackbar(
      title,
      message,
      colorText: WhColors.black,
      duration: Duration(seconds: 5),
      icon: Icon(Icons.info),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: WhColors.info.withOpacity(0.5),
    );
  }

  static void success(String title, String message) {
    Get.snackbar(
      title,
      message,
      colorText: WhColors.black,
      duration: Duration(seconds: 5),
      icon: Icon(Icons.check_circle_outline),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: WhColors.success.withOpacity(0.5),
    );
  }
}
