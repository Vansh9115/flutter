import 'package:flutter/material.dart';
import '../components/constant.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';


class ResultPage extends StatelessWidget {
ResultPage ({@required this.bmiResult, @required this.resultText, @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(child: Container(padding: EdgeInsets.only(top: 15.0),
             alignment: Alignment.bottomLeft,
             child:  Text('RESULT',style: kFontStyle,)
          )),
          Expanded(flex: 5,
    child: Container(
      child: ReusableCard(colour:kMainColor,
      cardChild: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(resultText.toUpperCase(),style: kResultTextStyle,),
          Text(bmiResult,style: kBMIText,),
          Text(interpretation,style: kMessage,textAlign: TextAlign.center,)

        ],
      ),),
    ),
          ),
          BottomButton(buttonTitle: 'RE-CALCULATE',onTap: (){Navigator.pop(context);})
        ],
      )
    );
  }
}
