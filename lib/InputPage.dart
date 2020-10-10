import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'ReusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icons_content.dart';
import 'constants.dart';
import 'results_page.dart';
import 'roundIcon_button.dart';
import 'bottom_button.dart';

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

  int heigth = 180;
  int weight = 60;
  int age = 20;
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
                    color: selectedGender == Gender.male
                        ? kactiveColor
                        : kinactiveColor,
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
                    color: selectedGender == Gender.female
                        ? kactiveColor
                        : kinactiveColor,
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
            child: ReusableCard(
              color: kactiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kcurrentTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        heigth.toString(),
                        style: knumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kcurrentTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: kinactiveColor,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30,
                      ),
                      thumbColor: Color(0xFFff4081),
                      overlayColor: Color(0x29ff4081),
                    ),
                    child: Slider(
                      value: heigth.toDouble(),
                      max: 220,
                      min: 120,
                      onChanged: (double newValue) {
                        setState(() {
                          heigth = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kactiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kcurrentTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: knumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kactiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kcurrentTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: knumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            text: 'CALCULATE',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultsPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
