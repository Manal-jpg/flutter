import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Are you a developer?',
      'answers': [
        {'text': 'YESSIR', 'score': 10},
        {'text': 'NOT YET', 'score': 5},
        {'text': 'KINDA', 'score': 8},
        {'text': 'GONNABE', 'score': 6},
        {'text': 'WANNABE', 'score': 3},
      ],
    },
    {
      'questionText': 'What programming languages do you use?',
      'answers': [
        {'text': 'HTML(sorry but it isn\'t a language)', 'score': 1},
        {'text': 'C++', 'score': 3},
        {'text': 'DART', 'score': 2},
        {'text': 'PYTHON', 'score': 3},
        {'text': 'JAVA', 'score': 3},
      ],
    },
    {
      'questionText': 'How long have you been coding?',
      'answers': [
        {'text': 'Less than a year', 'score': 1},
        {'text': '1-2 years', 'score': 5},
        {'text': '2-3 years', 'score': 8},
        {'text': '3-4 years', 'score': 11},
        {'text': '5+ years', 'score': 15},
      ],
    },
    {
      'questionText': 'Have you ever made an app?',
      'answers': [
        {'text': 'Yes', 'score': 5},
        {'text': 'NOT YET', 'score': -2},
        {'text': 'Haven\'t tried', 'score': -5},
        {'text': 'I can\'t', 'score': -5},
        {'text': 'Never gonna try', 'score': -10},
      ],
    },
  ];
  var _ind = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _ind++;
      print('Im working setstate');
    });
    print(_ind);
    if (_ind < _questions.length) {
      print('We have more and more questions');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Welcome to some dumb stuff I\'ve written'),
      ),
      body: _ind < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              ind: _ind,
              questions: _questions,
            )
          : Result(_totalScore),
    ));
  }
}
