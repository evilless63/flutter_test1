import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(TestApp());

class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TestAppState();
  }
}

class _TestAppState extends State<TestApp> {
  var _questionIndex = 0;
  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]),
          RaisedButton(
            child: Text('data1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('data2'),
            onPressed: () => print('Another answer !'),
          ),
          RaisedButton(
            child: Text('data3'),
            onPressed: () {
              print('Another answer 3!');
            },
          ),
        ]),
      ),
    );
  }
}
