import 'package:app/themes/alerts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordCtrl extends GetxController {
  TextEditingController emailInput = new TextEditingController();

  void sendEmail() {
    Get.back();
    WhToast.success('success'.tr, 'emailSended'.tr);
  }
}
