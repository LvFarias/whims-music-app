import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginCtrl extends GetxController {
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
    } else if (this._counterPlus && this.counter == 10) {
      this._counterPlus = false;
      this.buttonText = "Add";
      this.buttonIcon = Icons.add;
      this._remove();
    } else if (!this._counterPlus && this.counter > 0) {
      this._remove();
    } else {
      this._counterPlus = true;
      this.buttonText = "Add";
      this.buttonIcon = Icons.add;
      this._add();
    }
  }

  void _add() {
    this.counter++;
  }

  void _remove() {
    this.counter--;
  }
}
