import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {

 CalculatorBrain({this.height,this.weight});

final int height;
final int weight;

  double _bmi;
  String CalculateBMI() {
     _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

String GetResult(){
  if(_bmi >= 25){
    return ('ზედმეტი წონა');

  }else if (_bmi >=18){
      return ('ნორმალური');
  }else {
    return ('ნაკლები წონა');
  }
}
String getInterpretation () {
if(_bmi >= 25){
  return('შენ გაქვს ზედმეტი წონა, მეტი ივარჯიშე!');
}else if(_bmi >= 18){
  return ('შენ გაქვს ნორმალურ წონა, საღოლ!');
}else {
  return ('შენ გაქვს ნაკლები წონა ნორმალურთან შედარებით, მეტი ჭამე!');
}
}

} 