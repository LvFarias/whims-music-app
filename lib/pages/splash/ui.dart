import 'package:app/pages/splash/ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialPage extends GetView {
  final InitialCtrl initialCtrl = InitialCtrl();

  @override
  Widget build(BuildContext context) {
    initialCtrl.init();
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Get.theme.primaryColor,
                Get.theme.accentColor,
                Get.theme.primaryColor,
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(100.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('lib/assets/logo.png'),
            ),
          ),
        ),
      ],
    );
  }
}
