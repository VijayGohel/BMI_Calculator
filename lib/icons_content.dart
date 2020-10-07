import 'package:flutter/material.dart';

const TextStyle currentTextStyle = TextStyle(
  color: Color(0xFFe0e0e0),
  fontWeight: FontWeight.bold,
);

class IconsContent extends StatelessWidget {
  IconsContent({this.iconData, this.text});
  final IconData iconData;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 70,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            text,
            style: currentTextStyle,
          )
        ],
      ),
    );
  }
}
