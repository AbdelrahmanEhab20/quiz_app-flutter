import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQues;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz(
      {@required this.answerQues,
      @required this.questions,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Question(questions[questionIndex]['questionText'] as String),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(() => answerQues(answer['score']), answer['text']);
          }).toList()
        ],
      ),
    );
  }
}
