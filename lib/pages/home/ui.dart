import 'package:app/pages/home/ctrl.dart';
import 'package:app/themes/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeCtrl> {
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
                controller.counter.toString(),
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            WhButton(
              text: "logout".tr,
              onPressed: () => controller.userService.logout(),
            ),
          ],
        ),
      ),
      floatingActionButton: Obx(() {
        return FloatingActionButton(
          tooltip: controller.buttonText,
          child: Icon(controller.buttonIcon),
          onPressed: controller.changeCounter,
        );
      }),
    );
  }
}
