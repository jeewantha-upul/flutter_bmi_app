import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.buttonFunction, this.text});
  final Function buttonFunction;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunction,
      child: Container(
        padding: EdgeInsets.only(bottom: 15.0),
        child: Center(
          child: Text(
            text,
            style: kBottomLargeButtonStyles,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 05.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}