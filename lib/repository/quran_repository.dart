import 'package:flutter/foundation.dart';
import 'package:quran/helpers/db_helper.dart';
import 'package:quran/models/quran_data.dart';

class QuranRepository {
  static Future<List<QuranData>> getQuranBySura(int sura) async {
    debugPrint("getQuranBySura $sura");

    final db = await DatabaseHelper.initializeDB();
    final List<Map<String, dynamic>> result = await db.query(
      'quran_text',
      where: 'sura = ?',
      whereArgs: [sura],
    );

    List<QuranData> quran = result.map((e) => QuranData.fromJson(e)).toList();

    return quran;
  }
}
