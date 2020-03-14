import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.weight, @required this.height});

  final int weight;
  final int height;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your BMI is more than normal. Do exercise and eat healthy food!';
    } else if (_bmi > 18.5) {
      return 'Your BMI is normal. Keep doing good job!';
    } else {
      return 'Your BMI is below normal. you can eat little bit more!';
    }
  }
}
