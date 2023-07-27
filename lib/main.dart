import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
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
            Text('The Questions!'),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1'),),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 2'),),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 3'),),
            ],
        ),
      ),
    );
  }
}