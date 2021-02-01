import 'package:flutter/material.dart';
import 'constant.dart';


class IconContent extends StatelessWidget {
  IconContent({this.textFormat,this.icon});
  final String textFormat;
  final  IconData  icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(),
        Text(textFormat,
          style:kLabelTextStyle,
        )
      ],
    );
  }
}


