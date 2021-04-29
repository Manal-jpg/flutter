import 'package:flutter/material.dart';
import './question.dart';

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
  var _ind = 0;
  void _answerQuestion() {
    setState(() {
      _ind += 1;
      if (_ind > 5) _ind = 0;
    });
    print(_ind);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Are you a developer?',
      'Are you sure?',
      'Have you ever written something on VSD?',
      'Thanks for going through all this stuff',
      'I\'m still in basic level but I will learn a lot in incoming week',
      'Thanks',
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Welcome to some dumb stuff I\'ve written'),
      ),
      body: Column(
        children: <Widget>[
          Question(questions[_ind]),
          ElevatedButton(
            child: Text('Yes'),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text('No'),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text('IDK'),
            onPressed: _answerQuestion,
          ),
        ],
      ),
    ));
  }
}
