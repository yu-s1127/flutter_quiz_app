import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  late final VoidCallback? _selectHandler;
  late final String _answerText;

  Answer(
      {Key? key,
      required VoidCallback? selectHandler,
      required String answerText})
      : super(key: key) {
    _selectHandler = selectHandler;
    _answerText = answerText;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          _answerText,
          style: const TextStyle(
            backgroundColor: Colors.blue,
            color: Colors.white,
          ),
        ),
        onPressed: _selectHandler,
      ),
    );
  }
}
