import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQues() {
    print('The Answer Chosen Successfully !');
  }

  @override
  //Describes the part of the user interface represented by this widget.
  Widget build(BuildContext context) {
    var questions = [
      'What\s you favorite Color?',
      'What\s your favorite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text("The Questions !!"),
            ElevatedButton(child: Text('Test Answer 1'), onPressed: answerQues),
            ElevatedButton(child: Text('Test Answer 2'), onPressed: answerQues),
            ElevatedButton(child: Text('Test Answer 3'), onPressed: answerQues),
          ],
        ),
      ),
    );
  }
}
