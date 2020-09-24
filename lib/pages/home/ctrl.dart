import 'package:app/services/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCtrl extends GetxController {
  final WhUserService userService = Get.find();

  final RxInt _counter = 0.obs;
  int get counter => this._counter.value;
  set counter(int value) => this._counter.value = value;

  final RxString _buttonText = "Add".obs;
  String get buttonText => this._buttonText.value;
  set buttonText(String value) => this._buttonText.value = value;

  final Rx<IconData> _buttonIcon = Icons.add.obs;
  IconData get buttonIcon => this._buttonIcon.value;
  set buttonIcon(IconData value) => this._buttonIcon.value = value;

  bool _counterPlus = true;

  void changeCounter() {
    if (this._counterPlus && this.counter < 10) {
      this._add();
      if (this.counter == 10) {
        this._counterPlus = false;
        this.buttonText = "Remove";
        this.buttonIcon = Icons.remove;
      }
    } else if (!this._counterPlus && this.counter > 0) {
      this._remove();
      if (this.counter == 0) {
        this._counterPlus = true;
        this.buttonText = "Add";
        this.buttonIcon = Icons.add;
      }
    }
  }

  void _add() {
    this.counter++;
  }

  void _remove() {
    this.counter--;
  }
}
