// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/result_arguments.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ResultPageArguments;
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          shadowColor: Colors.grey,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Your Result',
                style: kResultTitleTextStyle,
              ),
            ),
            Expanded(
                child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    args.result.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    args.bmi,
                    style: kResultBMITextStyle,
                  ),
                  Text(
                    args.interpretation,
                    style: kResultDescriptionTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )),
            BottomButton(
              buttonTitle: 'RE - CALCULATE',
              onTap: () => Navigator.pop(context),
            )
          ],
        ));
  }
}
