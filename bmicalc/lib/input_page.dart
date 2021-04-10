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
    Gender selectedGender;
    int height = 180;
    int weight = 60;
    int age = 19;
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
              label: 'კაცი',
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
            label: 'ქალი'
          ,),
          )
         )
          ],)),

          Expanded(
            child: ReusableCard(
            colour: Color(0xFF1D1E33),
            cardChild: Column(children: [
                  Text('სიმაღლე',
                  style: kLabelTextStyle,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                  Text(
                    height.toString(),
                  style: kNumberTextStyle,),
                  Text('სმ', style: kLabelTextStyle,)
                ],),
                SliderTheme(
                     data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor:Color(0x15EB1555),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0, ),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                     child: Slider(
                     value: height.toDouble(),
                     min: 120.0,
                     max: 220.0,
                     onChanged: (double newValue){
                       setState(() {
                       height = newValue.round();
                       });
                      },
                  ),
                ),
            ],) ,
            )
           ),
          Expanded(
             child: Row(children: [
                Expanded(child: 
                    ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('წონა',
                          style: kLabelTextStyle,
                          ),
                          Text(weight.toString(),
                          style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            RoundedIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                weight--;
                              });
                            }),
                            SizedBox(width: 10.0),
                            RoundedIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            ],
                          ), 
                        ],
                    ),        
                    )),
                Expanded(child: 
                  ReusableCard(
                   colour: Color(0xFF1D1E33),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ასაკი',style: kLabelTextStyle,),
                      Text(age.toString(),style: kNumberTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                             setState(() {
                              age--;
                            });
                          },),
                          SizedBox(width: 10.0),
                          RoundedIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            },),
                      ],)
                    ], ),
            ))
            ],))

        ],)
    );
  }
}

class RoundedIconButton extends StatelessWidget {

  RoundedIconButton({@required this.icon,@required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        onPressed: onPressed,
        elevation: 0.0,
        constraints: BoxConstraints.tightFor(
          width:56.0,
          height: 56.0, 
        ),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
    );
  }
}
