import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WhButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  WhButton({
    @required this.text,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
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
