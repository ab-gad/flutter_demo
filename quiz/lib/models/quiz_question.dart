class QuizQuestion {
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  get shuffledAnswers {
    final shuffledAnswers = List.of(answers)..shuffle();
    return shuffledAnswers;
  }
}
