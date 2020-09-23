import 'package:app/pages/login/ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView {
  final LoginCtrl loginCtrl = LoginCtrl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('buttonQtd'.tr),
            Obx(() {
              return Text(
                loginCtrl.counter.toString(),
                style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: Obx(() {
        return FloatingActionButton(
          tooltip: loginCtrl.buttonText,
          child: Icon(loginCtrl.buttonIcon),
          onPressed: loginCtrl.changeCounter,
        );
      }),
    );
  }
}
