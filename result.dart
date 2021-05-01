import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 10) {
      resultText = 'You are not any kind of a programmer';
    } else if (resultScore <= 20) {
      resultText = 'You are a begginer';
    } else if (resultScore > 30) {
      resultText = 'You are a pro, no need to study';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
