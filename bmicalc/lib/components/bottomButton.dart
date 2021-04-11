import 'package:flutter/material.dart';
import 'package:bmicalc/constraints.dart';
class BottomButton extends StatelessWidget {
  
  BottomButton({this.buttonTitle,this.onTap});
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
      ),),
    color: kBottomContainerColour,
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(bottom: 20.0),
    width: double.infinity,
    height: kBottomContainerHeight,
      ),
    );
  }
}