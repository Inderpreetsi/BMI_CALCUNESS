import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'button_bottom.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.interpretation,@required this.resultText,@required this.bmiResult});
  final String bmiResult;
 final String resultText;
 final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',

        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.bottomLeft,
                child: Text('Your Result',
                style: kTitleTextStyle,),
              ),
            ),
            Expanded(
            flex: 5,
            child: ReusableCard(

                colour: kAllWidgetColour,
                cardChild:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(resultText,
                    style: kResultText,
                    ),
                    Text(bmiResult,
                    style: kBMI,

                    ),
                    Text(
                      interpretation,
                    style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ) ,
                ),),
           ButtonBottom(

               onTap:(){
             Navigator.pop(context);
           },
               buttonTitle: 'RE-CALCULATE')

          ],
        ),
      ),
    );
  }
}
