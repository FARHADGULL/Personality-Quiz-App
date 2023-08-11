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
        'answers': [{'text': 'Black', 'score': 10}, {'text':'Red', 'score': 5}, {'text':'Green', 'score': 8}, {'text':'white', 'score': 9}],
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': [{'text': 'Rabbit', 'score': 8}, {'text': 'Snake', 'score': 7}, {'text': 'Elephent', 'score': 8}, {'text': 'Lion', 'score': 10}],
      },
      {
        'questionText': 'Who\'s your favourite instructor?',
        'answers': [{'text': 'Muhammad', 'score': 10}, {'text': 'Ali', 'score': 9}, {'text': 'Ahmad', 'score': 8}, {'text': 'Hamid', 'score': 8}],
      }
    ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personality Quiz'),
        ),
        body: _questionIndex < _questions.length ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,) : const Result(),
      ),
    );
  }
}