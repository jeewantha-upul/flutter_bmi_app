import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/UI/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/UI/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.calculateBMI,
      @required this.getResult,
      @required this.getInterpretation});

  final String calculateBMI;
  final String getResult;
  final String getInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                  ),
                  Expanded(
                    child: Text(
                      getResult.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      getInterpretation,
                      textAlign: TextAlign.center,
                      style: kBMITextStyle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      // here the unicode for the superscript of 2 = \u00B2
                      calculateBMI + ' Kgm\u00B2',
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonFunction: () {
              Navigator.pushNamed(context, '/');
            },
            text: 'CALCULATE AGAIN',
          ),
        ],
      ),
    );
  }
}
