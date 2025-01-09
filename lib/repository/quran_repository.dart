import 'package:quran/helpers/db_helper.dart';
import 'package:quran/models/quran_data.dart';

class QuranRepository {
  final dbHelper = DatabaseHelper();

  static Future<List<QuranData>> getQuranBySura(int sura) async {
    final db = await DatabaseHelper().database;
    final List<Map<String, dynamic>> result = await db.rawQuery(
      '''
      SELECT t.*, tr.text as trText
      FROM quran_text t
      JOIN id_translation tr ON t.sura = tr.sura AND t.aya = tr.aya
      WHERE t.sura = ?
      ''',
      [sura],
    );

    List<QuranData> quran = result.map((e) => QuranData.fromJson(e)).toList();

    return quran;
  }
}
