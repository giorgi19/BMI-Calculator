
import 'package:bmicalc/components/icon_content.dart';
import 'package:bmicalc/constraints.dart';
import 'package:flutter/material.dart';
import 'components/reusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
    Gender selectedGender ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(children: [
        Expanded(
           child: ReusableCard(
             onPress: (){
               setState(() {
                selectedGender = Gender.male;
               });
             },
           colour: selectedGender == Gender.male  ? 
           kActiveCardColour : kInactiveCardColour,
           // Color(0xFF1D1E33),
           cardChild: IconContent(
              icon: FontAwesomeIcons.mars,
              label: 'Male',
           ),
           ) 
          ),
         Expanded(
           child:   
          ReusableCard(
            onPress: (){
              setState(() {
                selectedGender = Gender.female;
              });
            },
           colour: selectedGender == Gender.female ?
           kActiveCardColour : kInactiveCardColour,

          //Color(0xFF1D1E33),
          cardChild: IconContent(
            icon: FontAwesomeIcons.venus,
            label: 'Female'
          ,),
          )
         )
          ],)),
          Expanded(child: Row(children: [
            Expanded(child: 
          ReusableCard(
            colour: Color(0xFF1D1E33)
          )
          ,)
          ],)),
          Expanded(child: Row(children: [
          Expanded(child: 
              ReusableCard(
                colour: Color(0xFF1D1E33)
              )),
         Expanded(child: 
            ReusableCard(
              colour: Color(0xFF1D1E33)
            ))
          ],))

        ],)
    );
  }
}



