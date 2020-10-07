import 'package:flutter/material.dart';
import 'ReusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icons_content.dart';

const color = Color(0xFF546e7a);
const inactiveColor = Color(0xFF37474f);
//const fontColor = Color(0xFFe0e0e0);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //Color maleColor = inactiveColor, femaleColor = inactiveColor;

  Gender selectedGender;
  /*void changeCardColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleColor == inactiveColor) {
        maleColor = color;
        femaleColor = inactiveColor;
      } else
        maleColor = inactiveColor;
    } else if (gender == Gender.female) {
      if (femaleColor == inactiveColor) {
        femaleColor = color;
        maleColor = inactiveColor;
      } else
        femaleColor = inactiveColor;
    }
  }*/

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
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color:
                        selectedGender == Gender.male ? color : inactiveColor,
                    cardChild: IconsContent(
                      iconData: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color:
                        selectedGender == Gender.female ? color : inactiveColor,
                    cardChild: IconsContent(
                      iconData: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: color),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: color),
                ),
                Expanded(
                  child: ReusableCard(color: color),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 80,
            color: Color(0xFFff4081),
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
