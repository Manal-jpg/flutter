import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int ind;
  final Function answerQuestion;
  Quiz({
    @required this.questions,
    @required this.ind,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[ind]['questionText']),
        ...(questions[ind]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion, answer['text']);
        }).toList()
      ],
    );
  }
}
