class Categorie {
  final int? id; // Identifiant
  final String nom; // Nom de la catégorie

  // Constructeur de la classe Categorie
  Categorie({this.id, required this.nom});

  // Convertir un objet Categorie en Map (utilisé pour l'insertion dans SQLite)
  Map<String, dynamic> toMap() {
    return {
      'id': id,  // L'id peut être null, c'est donc optionnel
      'nom': nom,
    };
  }

  // Convertir un Map (récupéré de SQLite) en objet Categorie
  factory Categorie.fromMap(Map<String, dynamic> map) {
    return Categorie(
      id: map['id'],
      nom: map['nom'],
    );
  }
}
