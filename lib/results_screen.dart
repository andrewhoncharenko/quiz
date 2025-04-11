import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> chosenAnswers;

  const ResultsScreen({super.key, required this.chosenAnswers});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You answered X out of Y questions correctly!"),
            SizedBox(height: 30),
            const Text("List of answers and questions"),
            SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text("Restart quiz!")),
          ],
        ),
      ),
    );
  }
}
