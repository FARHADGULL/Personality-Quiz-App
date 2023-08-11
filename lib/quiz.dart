import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  const Quiz({super.key, required this.questions, required this.answerQuestion, required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Question(questions[questionIndex]['questionText'] as String), 
            ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
              return Answer(() => answerQuestion(answer['score']), answer['text'] as String);
            }).toList()
            //ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 1'),), //called without parantheses because we don't want to execute it right away when flutter builds and render the widgets but rather when the button is pressed and called function using pointer and its a named function
            //ElevatedButton(onPressed: () => print('Answer 2 Chosen!'), child: Text('Answer 2'),), //anonymous function using lambda expression and called using pointer
            //ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 3'),),
            ],
        );
  }
}