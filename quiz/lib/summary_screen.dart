import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/models/quiz_summary.dart';
import 'package:quiz/summary_details.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({
    super.key,
    required this.userAnswers,
    required this.goToStartScreen,
  });
  final List<String> userAnswers;
  final VoidCallback goToStartScreen;

  List<QuizSummary> get summaryDetails {
    List<QuizSummary> details = [];
    for (var i = 0; i < userAnswers.length; i++) {
      details.add(
        QuizSummary(
          questionNumber: i + 1,
          question: questions[i].question,
          userAnswer: userAnswers[i],
          correctAnswer: questions[i].answers[0],
        ),
      );
    }
    return details;
  }

  int get correctAnswersNumber {
    return summaryDetails.where((detail) => detail.isCorrectAnswer).length;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You answered $correctAnswersNumber out of ${userAnswers.length} correctly!",
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                fontSize: 25, color: const Color.fromARGB(255, 202, 136, 249)),
          ),
          const SizedBox(
            width: double.infinity,
            height: 20,
          ),
          SummaryDetails(quizSummaryDetails: summaryDetails),
          const SizedBox(
            width: double.infinity,
            height: 20,
          ),
          TextButton.icon(
            icon: const Icon(Icons.replay_outlined),
            onPressed: goToStartScreen,
            label: const Text(
              "Restart Quiz!",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
