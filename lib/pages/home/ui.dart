import 'package:app/pages/home/ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView {
  final HomeCtrl homeCtrl = HomeCtrl();

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
                homeCtrl.counter.toString(),
                style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: Obx(() {
        return FloatingActionButton(
          tooltip: homeCtrl.buttonText,
          child: Icon(homeCtrl.buttonIcon),
          onPressed: homeCtrl.changeCounter,
        );
      }),
    );
  }
}
