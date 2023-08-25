import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(
      {super.key, required this.resultScore, required this.resetHandler});

  String get resultPhrase {
    String resultText;
    if (resultScore >= 30) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore > 20 && resultScore <= 30) {
      resultText = 'Pretty likeable!';
    } else if (resultScore > 10 && resultScore <= 20) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: resetHandler,
          style: TextButton.styleFrom(
            primary: Colors.blue,
          ),
          child: const Text('Restart Quiz!'),
        ),
      ],
    ));
  }
}
