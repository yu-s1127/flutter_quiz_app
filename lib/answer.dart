import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(
      {Key? key, required this.selectHandler, required this.answerText})
      : super(key: key);

  final VoidCallback selectHandler;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answerText,
          style: const TextStyle(
            backgroundColor: Colors.blue,
            color: Colors.white,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
