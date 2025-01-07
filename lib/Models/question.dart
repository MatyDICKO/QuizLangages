class Question {
  final int id;
  final String texteQuestion;
  final List<String> options;
  final int indexBonneReponse;

  Question({
    required this.id,
    required this.texteQuestion,
    required this.options,
    required this.indexBonneReponse,
  });
}
