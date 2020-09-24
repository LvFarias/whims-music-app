import 'package:app/pages/forgotPassword/ctrl.dart';
import 'package:app/themes/buttons.dart';
import 'package:app/themes/form.dart';
import 'package:app/themes/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends GetView<ForgotPasswordCtrl> {
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
            Center(
              child: Text(
                'forgotPasswordText'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              autofocus: false,
              controller: controller.emailInput,
              decoration: whInputDecoration(hintText: 'email'.tr),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: WhButton(
                text: 'sendEmail'.tr,
                onPressed: () => controller.sendEmail(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
