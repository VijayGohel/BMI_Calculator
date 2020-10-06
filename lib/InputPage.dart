import 'package:flutter/material.dart';
import 'ReusableCard.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: Color(0xFF546e7a)),
                ),
                Expanded(
                  child: ReusableCard(color: Color(0xFF546e7a)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: Color(0xFF546e7a)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: Color(0xFF546e7a)),
                ),
                Expanded(
                  child: ReusableCard(color: Color(0xFF546e7a)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
