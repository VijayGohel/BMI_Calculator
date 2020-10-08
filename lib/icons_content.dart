import 'package:flutter/material.dart';
import 'constants.dart';

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
            style: kcurrentTextStyle,
          )
        ],
      ),
    );
  }
}
