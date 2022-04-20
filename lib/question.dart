import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  late final String _questionText;

  Question({Key? key, required String questionText}) : super(key: key) {
    _questionText = questionText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Text(
          _questionText,
          style: const TextStyle(
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
