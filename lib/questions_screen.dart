import 'package:flutter/material.dart';

import 'package:quiz/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("The question...", style: TextStyle(color: Colors.white)),
          const SizedBox(height: 30),
          AnswerButton("Answer 1", () {}),
          AnswerButton("Answer 2", () {}),
        ],
      ),
    );
  }
}
