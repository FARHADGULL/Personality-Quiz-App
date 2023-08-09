import 'package:flutter/material.dart';
import 'package:personailty_quiz_app/answer.dart';
import './questions.dart'; //importing the file questions.dart

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  final questions = const [
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
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText'] as String), //Text widget 
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
            //ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 1'),), //called without parantheses because we don't want to execute it right away when flutter builds and render the widgets but rather when the button is pressed and called function using pointer and its a named function
            //ElevatedButton(onPressed: () => print('Answer 2 Chosen!'), child: Text('Answer 2'),), //anonymous function using lambda expression and called using pointer
            //ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 3'),),
            ],
        ),
      ),
    );
  }
}