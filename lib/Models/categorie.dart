import 'package:quiz_langages/models/question.dart';

class Categorie {
  final int id;
  final String nom;
  final List<Question> questions;

  Categorie({
    required this.id,
    required this.nom,
    required this.questions,
  });
}
