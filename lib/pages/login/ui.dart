import 'package:app/pages/login/ctrl.dart';
import 'package:app/themes/buttons.dart';
import 'package:app/themes/form.dart';
import 'package:app/themes/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginCtrl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.transparent,
                child: Image.asset(WhImages.logo),
              ),
            ),
            SizedBox(height: 25.0),
            TextFormField(
              autofocus: false,
              controller: controller.emailInput,
              decoration: whInputDecoration(hintText: 'email'.tr),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10.0),
            TextFormField(
              autofocus: false,
              obscureText: true,
              controller: controller.passwordInput,
              decoration: whInputDecoration(hintText: 'password'.tr),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: WhButton(
                text: 'login'.tr,
                onPressed: () => controller.login(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: IconButton(
                icon: Icon(Icons.g_translate),
                // text: 'loginFacebook'.tr,
                onPressed: () => controller.loginFacebook(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: IconButton(
                icon: Icon(Icons.g_translate),
                // text: 'loginGoogle'.tr,
                onPressed: () => controller.loginGoogle(),
              ),
            ),
            FlatButton(
              onPressed: () => controller.forgotPassword(),
              child: Text('forgotPassword?'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
