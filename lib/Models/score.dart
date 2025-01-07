class Score {
  final int totalQuestions;
  final int reponseCorrect;

  Score({
    required this.totalQuestions,
    required this.reponseCorrect,
  });

  double calculatePercentage() {
    return (reponseCorrect / totalQuestions) * 100;
  }
}
