import 'package:quran/helpers/db_helper.dart';
import 'package:quran/models/folder_model.dart';
import 'package:sqflite/sqflite.dart';

class BookmarkRepository {
  static final dbHelper = DatabaseHelper();

  static Future<Database> _database() async {
    return await dbHelper.database;
  }

  // Create folder
  static Future<int> createFolder(Folder folder) async {
    final db = await _database();
    return await db.insert('folders', folder.toMap());
  }

  // Get all folders with bookmarks
  static Future<List<Folder>> getFoldersWithBookmarks() async {
    final db = await _database();
    final List<Map<String, dynamic>> maps = await db.rawQuery('''
    SELECT
        f.id,
        f.name,
        '[' || GROUP_CONCAT(
            '{"sura":' || b.sura || ', "aya":' || b.aya || ', "created_at":' || b.created_at || '}'
        ) || ']' AS bookmarks
    FROM folders f
    LEFT JOIN bookmarks b
        ON f.id = b.folder_id
    GROUP BY f.id
    ''');

    return maps.map((e) => Folder.fromMap(e)).toList();
  }
}
