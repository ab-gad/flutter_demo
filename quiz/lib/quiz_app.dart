import 'package:flutter/material.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/summary_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  String activeScreenName = "start_screen";
  List<String> answers = [];
  void startQuiz() {
    setState(() {
      activeScreenName = "quiz_screen";
    });
  }

  void restartQuiz() {
    setState(() {
      activeScreenName = "start_screen";
    });
  }

  void showResults(List<String> userAnswers) {
    answers = userAnswers;
    setState(() {
      activeScreenName = "summary_screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    final activeScreen = activeScreenName == "start_screen"
        ? StartScreen(startQuiz: startQuiz)
        : activeScreenName == "quiz_screen"
            ? QuestionsScreen(
                showResultScreen: showResults,
              )
            : SummaryScreen(
                goToStartScreen: restartQuiz,
                userAnswers: answers,
              );

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 34, 8, 79), Colors.deepPurple],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
