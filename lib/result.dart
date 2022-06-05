import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoreResult;
  final Function restartQuiz;
  Result(this.scoreResult, this.restartQuiz);

  String get resultPhrase {
    String resultText;
    if (scoreResult >= 8) {
      resultText = 'You Did It , Great Job!';
    } else if (scoreResult <= 10) {
      resultText = 'You Did It , nice Job! ';
    } else if (scoreResult <= 12) {
      resultText = 'You Did It , good Job! ';
    } else {
      resultText = 'Bad Job -_- ';
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
        OutlinedButton(
          child: Text("Restart Quiz !!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 22)),
          onPressed: restartQuiz,
          style: OutlinedButton.styleFrom(
              primary: Colors.black, side: BorderSide()),
        )
      ],
    ));
  }
}
