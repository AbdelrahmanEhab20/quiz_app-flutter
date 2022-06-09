import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    //Making a map
    {
      'questionText': 'What\'s you favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 3},
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 2},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Lion', 'score': 1},
      ],
    },
    {
      'questionText': 'Who\'s your favorite team ?',
      'answers': [
        {'text': 'Al Ahly', 'score': 10},
        {'text': 'Liverpool', 'score': 1},
        {'text': 'Bayern', 'score': 2},
        {'text': 'Madrid', 'score': 4},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQues(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  //Describes the part of the user interface
  //represented by this widget.
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            /* leading takes in a widget and can
           be assigned anything — text, an icon, 
           or even multiple widgets within a row.*/
            leading: Icon(Icons.account_circle_sharp),
            leadingWidth: 100,
            title: Text(
              "Quiz App",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 46, 85, 152),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQues: _answerQues,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _restartQuiz)),
    );
  }
}
