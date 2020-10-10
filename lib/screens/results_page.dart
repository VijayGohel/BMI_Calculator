import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/ReusableCard.dart';

class ResultsPage extends StatelessWidget {
  final String bmi, interpretation, result;

  const ResultsPage(
      {@required this.bmi,
      @required this.interpretation,
      @required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR RESULT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(15.0),
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Your Result',
              style: kResultTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kactiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result,
                    style: kresultCardResult,
                  ),
                  Text(
                    bmi,
                    style: kresultCardNumber,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kresultCardInterpretation,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
