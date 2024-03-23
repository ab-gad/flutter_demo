import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/models/quiz_summary.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key, required this.quizSummaryDetails});
  final List<QuizSummary> quizSummaryDetails;
  final correctAnswerColor = const Color.fromARGB(255, 68, 205, 255);
  final wrongAnswerColor = const Color.fromARGB(255, 249, 108, 237);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: quizSummaryDetails
              .map((d) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: d.isCorrectAnswer
                                  ? correctAnswerColor
                                  : wrongAnswerColor,
                            ),
                            child: Center(
                                child: Text(
                              d.questionNumber.toString(),
                              style: TextStyle(fontSize: 20),
                            )),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  d.question,
                                  style: GoogleFonts.lato(
                                      color: Colors.white, fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  d.userAnswer,
                                  style: GoogleFonts.lato(
                                      color: wrongAnswerColor, fontSize: 16),
                                ),
                                Text(
                                  d.correctAnswer,
                                  style: GoogleFonts.lato(
                                      color: correctAnswerColor, fontSize: 16),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
