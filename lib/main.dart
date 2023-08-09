import 'package:flutter/material.dart';
import 'package:personailty_quiz_app/quiz.dart';
import 'package:personailty_quiz_app/result.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  final _questions = const [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'Who\'s your favourite instructor?',
        'answers': ['Muhammad', 'Ali', 'Ahmad', 'Hamid'],
      }
    ];
  var _questionIndex = 0; //var is a generic type and dart can infer the type of the variable
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,) : const Result(),
      ),
    );
  }
}