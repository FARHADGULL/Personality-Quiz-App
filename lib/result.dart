import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  const Result({super.key, required this.resultScore});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Yes, You did it!'));
  }
}