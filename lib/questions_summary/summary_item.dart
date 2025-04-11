import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:quiz/questions_summary/question_identifier.dart";

class SummaryItem extends StatelessWidget {
  final Map<String, Object> itemData;

  const SummaryItem(this.itemData, {super.key});

  @override
  Widget build(BuildContext context) {
    final bool isCorrectAnswer =
        itemData["user_answer"] == itemData["correct_answer"];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          questionIndex: itemData["question_index"] as int,
          isCorrectAnswer: isCorrectAnswer,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData["question"] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                itemData["user_answer"] as String,
                style: TextStyle(color: Color.fromARGB(255, 168, 14, 240)),
              ),
              Text(
                itemData["correct_answer"] as String,
                style: TextStyle(color: Color.fromARGB(255, 88, 145, 250)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
