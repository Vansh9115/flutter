import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/Vansh9115/flutter/main/IMG20201222185008.jpg'),
                ),
                Text(
                  'Vansh Lalwani',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white
                  ),
                ),
                Text('FLutter Developer'.toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'SansPro',
                      color: Colors.white,
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,


                  ),
                ),
                SizedBox(height: 20.0,width: 170,
                  child:  Divider(
                    color: Colors.teal.shade100,
                    thickness: 1,

                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal:20.0 ,vertical:10.0 ),
                  child: ListTile(
                    leading:Icon(Icons.call,
                      color: Colors.teal,
                    ),
                    title: Text('+91-9545955581',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                      )

                      ,), ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal:20.0 ),
                  child: ListTile(
                    leading:Icon(Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text('vanshlalwani91@gmail.com',
                      style: TextStyle(
                          color: Colors.teal.shade900
                      ),
                    ),
                  )
                )
              ],

            ),
          )),
    );
  }
}

