import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onTap, this.text});

  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kBottomButtonText,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        height: 50,
        color: Color(0xFFff4081),
        width: double.infinity,
      ),
    );
  }
}
