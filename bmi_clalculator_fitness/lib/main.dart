import 'package:flutter/material.dart';
import 'screens/input_page.dart';
void main() => runApp(BMICalculatorFitness());

class BMICalculatorFitness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.blueGrey.shade800,
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          accentColor: Colors.red,
      ),
      home: InputPage(),
    );

  }
}
