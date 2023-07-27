import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0; //var is a generic type and dart can infer the type of the variable
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context){
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]), //Text widget 
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1'),), //called without parantheses because we don't want to execute it right away when flutter builds and render the widgets but rather when the button is pressed and called function using pointer and its a named function
            ElevatedButton(onPressed: () => print('Answer 2 Chosen!'), child: Text('Answer 2'),), //anonymous function using lambda expression and called using pointer
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 3'),),
            ],
        ),
      ),
    );
  }
}