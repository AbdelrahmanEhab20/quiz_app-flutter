import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoreResult;
  final Function restartQuiz;
  Result(this.scoreResult, this.restartQuiz);

  String get resultPhrase {
    String resultText;
    if (scoreResult >= 8) {
      resultText = 'Your Score =${scoreResult}  \nYou Did It , Great Job !';
    } else if (scoreResult <= 10) {
      resultText = 'Your Score =${scoreResult} \n You Did It, Nice Job ! ';
    } else if (scoreResult <= 12) {
      resultText = 'Your Score =${scoreResult}  \nYou Did It , Good Job ! ';
    } else {
      resultText = 'Your Score =${scoreResult} \n Bad Job -_- ';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 36)),
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: OutlinedButton(
            child: Text("Restart Quiz !!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 26)),
            onPressed: restartQuiz,
            style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                primary: Colors.black,
                side: BorderSide()),
          ),
        )
      ],
    ));
  }
}
