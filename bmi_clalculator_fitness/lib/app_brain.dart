import 'dart:math';

class AppBrain
{
 AppBrain({this.weight,this.height});
 
  final int height;
  final int weight;
  double _bmi;

  String bmiCalculate(){
   _bmi=weight/pow(height/100, 2);
   return _bmi.toStringAsFixed(1);
}

String bmiResult(){
    if(_bmi>=25)
      {return 'OVERWEIGHT';}
    else if(_bmi>18.5 && _bmi<25 )
      {return 'NORMAL';
      }else{return 'UNDERWEIGHT';}
}


String getInterpretation(){
  if(_bmi>=25)
  {return 'You Have Higher Than Normal Body Weight.Try to Exercise More';}
  else if(_bmi>18.5 && _bmi<25)
  {return 'You Have Normal Body Weight. Congrats! Keep it up';
  }else{return 'You Have Lower Body Weight. You can eat a bit more';}
}
}