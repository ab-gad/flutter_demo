import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.showResultScreen});

  final void Function(List<String> userAnswers) showResultScreen;
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final List<String> userAnswers = [];
  int currentQuestion = 0;
  void nextQuestion() {
    if (userAnswers.length == questions.length) {
      widget.showResultScreen(userAnswers);
    } else {
      setState(() {
        currentQuestion++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questions[currentQuestion].question,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ...questions[currentQuestion].shuffledAnswers.map(
                  (answer) => AnswerBtn(
                    answerText: answer,
                    onPressed: () {
                      userAnswers.add(answer);
                      nextQuestion();
                    },
                  ),
                )
          ],
        ),
      ),
    );
  }
}
