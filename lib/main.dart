import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer.dart';
import 'package:flutter_quiz_app/question.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      if (_questionIndex == 2) {
        _questionIndex = 0;
      } else {
        _questionIndex = _questionIndex + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': <String>['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': <String>['Rabbid', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'What\'s your favorite programing language?',
        'answers': <String>['Java', 'TypeScript', 'Dart', 'Go'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
                questionText:
                    questions[_questionIndex]['questionText'].toString()),
            Expanded(
              child: ListView.builder(
                itemCount:
                    (questions[_questionIndex]['answers'] as List<String>)
                        .length,
                itemBuilder: (BuildContext context, int index) {
                  var answers =
                      questions[_questionIndex]['answers'] as List<String>;
                  var answer = answers[index];
                  return Answer(
                    selectHandler: answerQuestion,
                    answerText: answer,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
