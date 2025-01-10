import 'package:quran/helpers/db_helper.dart';
import 'package:quran/models/bookmark_model.dart';
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

  // Get bookmarks by folder id
  static Future<List<Bookmark>> getBookmarksByFolderId(int folderId) async {
    final db = await _database();
    final List<Map<String, dynamic>> maps = await db.rawQuery('''
      SELECT b.*, s.tname as surah_name
      FROM bookmarks b
      JOIN surahs s ON s."index" = b.sura
      WHERE b.folder_id = ?
      ''', [folderId]);

    return maps
        .asMap()
        .map((index, e) =>
            MapEntry(index, Bookmark.fromMap(e)..index = index + 1))
        .values
        .toList();
  }

  // Get all folders with bookmarks
  static Future<List<Folder>> getFoldersWithBookmarks() async {
    final db = await _database();
    final List<Map<String, dynamic>> maps = await db.rawQuery('''
    SELECT
        f.id,
        f.name,
        count(b.id) as bookmark_count
    FROM folders f
    LEFT JOIN bookmarks b
        ON f.id = b.folder_id
    GROUP BY f.id
    ''');

    return maps.map((e) => Folder.fromMap(e)).toList();
  }
}
