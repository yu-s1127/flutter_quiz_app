import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(questions[_questionIndex]),
        ),
        body: Column(
          children: <Widget>[
            const Text('The question!'),
            ElevatedButton(
              child: const Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: const Text('Answer 2'),
              onPressed: () => print('Answer 2 choisen'),
            ),
            ElevatedButton(
              child: const Text('Answer 3'),
              onPressed: () => print('Answer 3 choisen'),
            ),
          ],
        ),
      ),
    );
  }
}
