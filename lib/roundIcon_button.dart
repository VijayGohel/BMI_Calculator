import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton({@required this.icon, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        onPressed: onPressed,
        elevation: 6.0,
        fillColor: Color(0xFFb0bec5),
        shape: CircleBorder(),
        constraints: BoxConstraints.tightFor(
          width: 56,
          height: 56,
        ),
        child: Icon(icon),
      ),
    );
  }
}
