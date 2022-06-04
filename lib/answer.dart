import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.blue[600],
      width: double.infinity,
      child: ElevatedButton(
          child: Text(
            answerText,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
          onPressed: selectHandler),
    );
  }
}
