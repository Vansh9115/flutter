import 'resullt_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_change.dart';
import '../components/reusable_card.dart';
import '../components/constant.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator_fitness/app_brain.dart';



enum Gender
{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
Gender selectedGender;
int height=110;
int weight=60;
int age=20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Expanded(child:
          Row(
            children: <Widget>[
              Expanded(child: ReusableCard(
                onPress: (){
                  setState(() {
                    selectedGender=Gender.male;
                  });
                },
                colour: selectedGender==Gender.male ? kMainColor : kInactiveCardColor,
                cardChild:IconContent(icon: FontAwesomeIcons.mars,textFormat: 'MALE')
              )),
              Expanded(child:ReusableCard(
                onPress: (){
                  setState(() {
                    selectedGender=Gender.female;
                  });
                },
                colour:selectedGender==Gender.female ? kMainColor : kInactiveCardColor ,
                  cardChild:IconContent(icon: FontAwesomeIcons.venus,textFormat: 'FEMALE',),
              )),
            ],
          )
          ),
          Expanded(child:
          ReusableCard( colour: kMainColor,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('HEIGHT',
              style:kLabelTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(height.toString(),
                    style: kNumberFont),
                  Text('cm',
                  style: kLabelTextStyle,)
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  inactiveTrackColor: Color(0xFF8D8E98),
                 thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  thumbColor: Color(0xFFeb1555),
                  overlayColor: Color(0x1fEB1555),
                  activeTrackColor: Colors.white,
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                ),
                child: Slider(value: height.toDouble(),
                    onChanged: (double newValue){
                  setState(() {
                    height=newValue.round();
                  });
                    },
                min:110 ,
                max: 220,

                ),
              )
            ],
          ),
          )),
          Expanded(child:
          Row(
            children: <Widget>[
              Expanded(child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('WEIGHT',
                    style: kLabelTextStyle,
                    ),
                    Text(weight.toString(),
                      style: kNumberFont,
                    ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget> [
                          IconButton(icon: FontAwesomeIcons.minus,
                          onPressed :(){
                            setState(() {
                              weight--;
                            });
                          }
                          ),
                          SizedBox(width: 10.0,),
                          IconButton(icon: FontAwesomeIcons.plus,
                          onPressed: (){
                            setState(() {
                              weight++;
                            });
                          },),
                         
                        ],

                      ),
                  ],
                ),
                  colour:kMainColor
              )),
              Expanded(child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('AGE',
                        style: kLabelTextStyle,
                      ),
                      Text(age.toString(),
                        style: kNumberFont,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget> [
                          IconButton(icon: FontAwesomeIcons.minus,
                              onPressed :(){
                                setState(() {
                                 age--;
                                });
                              }
                          ),
                          SizedBox(width: 10.0,),
                          IconButton(icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                               age++;
                              });
                            },),

                        ],

                      ),
                    ],
                  ),
                  colour:kMainColor
              )),
            ],
          )),
          BottomButton(buttonTitle: 'CALCULATE',
            onTap:  (){
            AppBrain calc=AppBrain(height: height,weight: weight);


    Navigator.push(
        context,
    MaterialPageRoute(
      builder: (context) =>ResultPage(bmiResult: calc.bmiCalculate(), resultText: calc.bmiResult(), interpretation: calc.getInterpretation())
    )
    );
    },
          )
        ],
      )
      );
  }
}

class IconButton extends StatelessWidget {

  IconButton({this.icon,this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape:CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width:56.0 ,
        height: 56.0,
      ),
      elevation: 6.0,
      child: Icon(icon),
      onPressed: onPressed,
    );
  }
}



