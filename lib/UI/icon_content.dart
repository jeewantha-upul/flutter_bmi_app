import 'package:flutter/material.dart';
import '../constants.dart';

class CardIconContent extends StatelessWidget {
  // @ required has used because wemust provide that data when initializinf particular widget
  CardIconContent({@required this.icon, @required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: kIconTextSpace,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
