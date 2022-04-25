import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer.dart';
import 'package:flutter_quiz_app/question.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key, required this.question, required this.answerQuestion})
      : super(key: key);

  final Map<String, Object> question;
  final VoidCallback answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questionText: question['questionText'].toString()),
        Expanded(
          child: ListView.builder(
            itemCount: (question['answers'] as List<String>).length,
            itemBuilder: (BuildContext context, int index) {
              var answers = question['answers'] as List<String>;
              var answer = answers[index];
              return Answer(
                selectHandler: answerQuestion,
                answerText: answer,
              );
            },
          ),
        )
      ],
    );
  }
}
