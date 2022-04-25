import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  static const List<Map<String, Object>> _questions = [
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

  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                question: _questions[_questionIndex],
                answerQuestion: _answerQuestion,
              )
            : const Center(
                child: Text('No more questions!'),
              ),
      ),
    );
  }
}
