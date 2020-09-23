import 'package:app/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class WhButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  Color buttonColor;

  WhButton({
    this.buttonColor,
    @required this.text,
    @required this.onPressed,
  }) {
    if (this.buttonColor.isNullOrBlank) {
      this.buttonColor = WhColors.primary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: this.buttonColor,
      onPressed: this.onPressed,
      child: Text(
        this.text,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
