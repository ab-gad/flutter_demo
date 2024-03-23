class QuizSummary {
  final int questionNumber;
  final String question;
  final String correctAnswer;
  final String userAnswer;

  QuizSummary({
    required this.questionNumber,
    required this.question,
    required this.correctAnswer,
    required this.userAnswer,
  });

  bool get isCorrectAnswer {
    return userAnswer == correctAnswer;
  }
}
