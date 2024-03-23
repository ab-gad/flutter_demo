import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerBtn extends StatelessWidget {
  const AnswerBtn(
      {super.key, required this.answerText, required this.onPressed});

  final String answerText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          shape: const StadiumBorder(),
          backgroundColor: const Color.fromARGB(255, 27, 10, 57),
          foregroundColor: Colors.white,
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
