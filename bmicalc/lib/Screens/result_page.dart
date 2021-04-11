import 'package:bmicalc/components/reusableCard.dart';
import 'package:bmicalc/constraints.dart';
import 'package:flutter/material.dart';
import 'package:bmicalc/input_page.dart';
import 'package:bmicalc/components/bottomButton.dart';
class ResultPage extends StatelessWidget {

  ResultPage({this.bmiText,this.resultText,this.descResultText});

  final String bmiText;
  final String resultText;
  final String descResultText;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text('შედეგი'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Expanded(
              child: Container(
              child: Text('შედეგი',
              textAlign: TextAlign.center,
              style: kTitleTextStyle,
              ),
            ),),

            Expanded(
              flex: 5,
              child: ReusableCard(
               colour: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText,
                    style: kResultTextStyle,
                    ),
                    Text(
                      bmiText,
                    style: kBMITextStyle,
                    ),
                    Text(descResultText,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                    )

                ],),
              ),
            ),
        BottomButton(
          buttonTitle : 'ახლიდან',
          onTap: (){
              Navigator.pop(context);
           } )
      ],),
    );
  }
}