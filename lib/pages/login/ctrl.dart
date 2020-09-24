import 'package:app/routes/routes.dart';
import 'package:app/services/user.dart';
import 'package:app/themes/alerts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginCtrl extends GetxController {
  final WhUserService userService = Get.find();

  TextEditingController emailInput = new TextEditingController();
  TextEditingController passwordInput = new TextEditingController();

  void login() {
    String email = this.emailInput.text;
    String password = this.passwordInput.text;

    if (GetUtils.isEmail(email) && password.isNotEmpty) {
      this.userService.login(email, password);
    } else {
      WhToast.error('error'.tr, 'invalidEmailOrPassword'.tr);
    }
  }

  void loginFacebook() {}

  void loginGoogle() {}

  void forgotPassword() {
    Get.toNamed(WhRoutes.FORGOT_PASSWORD);
  }
}
