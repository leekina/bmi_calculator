// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/screen/result_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'screen/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: kPrimaryColour,
        ),
        primaryColor: kPrimaryColour,
        scaffoldBackgroundColor: kPrimaryColour,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultPage(),
      },
    );
  }
}
