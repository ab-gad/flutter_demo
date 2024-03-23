import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.startQuiz});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(176, 255, 255, 255),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Welcome to quiz app ^^",
            style: GoogleFonts.lato(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  side: const BorderSide(color: Colors.white)),
              onPressed: startQuiz,
              icon: const Icon(Icons.arrow_forward_rounded),
              label: const Text("Start Quiz"))
        ],
      ),
    );
  }
}
