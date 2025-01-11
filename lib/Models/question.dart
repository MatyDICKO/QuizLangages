class Question {
  final int? id; // Identifiant
  final int categorieId; // Identifiant de la catégorie (référence)
  final String question; // La question
  final String reponse_1; // Première réponse
  final String reponse_2; // Deuxième réponse
  final String reponse_3; // Troisième réponse
  final String reponse_4; // Quatrième réponse
  final int bonneReponse; // Index de la bonne réponse (1, 2, 3 ou 4)

  // Constructeur de la classe Question
  Question({
    this.id,
    required this.categorieId,
    required this.question,
    required this.reponse_1,
    required this.reponse_2,
    required this.reponse_3,
    required this.reponse_4,
    required this.bonneReponse,
  });

  // Convertir un objet Question en Map (utilisé pour l'insertion dans SQLite)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'categorie_id': categorieId,
      'question': question,
      'reponse_1': reponse_1,
      'reponse_2': reponse_2,
      'reponse_3': reponse_3,
      'reponse_4': reponse_4,
      'bonne_reponse': bonneReponse,
    };
  }

  // Convertir un Map (récupéré de SQLite) en objet Question
  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'],
      categorieId: map['categorie_id'],
      question: map['question'],
      reponse_1: map['reponse_1'],
      reponse_2: map['reponse_2'],
      reponse_3: map['reponse_3'],
      reponse_4: map['reponse_4'],
      bonneReponse: map['bonne_reponse'],
    );
  }
}
