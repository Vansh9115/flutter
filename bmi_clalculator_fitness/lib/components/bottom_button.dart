import 'package:flutter/material.dart';
import 'constant.dart';


class BottomButton extends StatelessWidget {
  BottomButton({this.buttonTitle,this.onTap});
  final String buttonTitle;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttonTitle,
            style: kLargeButton,
          ),
        ),
        color:kBottomColor,
        width: double.infinity,
        height:kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}
