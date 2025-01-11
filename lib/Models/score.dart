class Score {
  final int? id;
  final int score;
  final int userId;
  final String date;

  Score({this.id, required this.score, required this.userId, required this.date});

  // Convertir Score en Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'score': score,
      'user_id': userId,
      'date': date,
    };
  }

  // Convertir un Map en Score
  factory Score.fromMap(Map<String, dynamic> map) {
    return Score(
      id: map['id'],
      score: map['score'],
      userId: map['user_id'],
      date: map['date'],
    );
  }
}
