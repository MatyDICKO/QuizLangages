import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static Future<Database> getDatabase() async {
    String path = join(await getDatabasesPath(), 'quiz_langages.db');
    return openDatabase(
      path,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE questions(id INTEGER PRIMARY KEY, question TEXT, reponse TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<List<Map<String, dynamic>>> getQuestions() async {
    final db = await getDatabase();
    return await db.query('questions');
  }
}
