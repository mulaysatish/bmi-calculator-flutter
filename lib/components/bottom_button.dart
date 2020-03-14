import 'package:flutter/cupertino.dart';

import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({this.buttonTitle, this.onTap});

  final String buttonTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              buttonTitle,
              style: kLargeButtonTextStyle,
            )),
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 10.0),
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}