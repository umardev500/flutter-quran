import 'dart:convert';

import 'package:quran/constants/shared_pref.dart';
import 'package:quran/models/quran_data.dart';
import 'package:quran/storage/shared_pref_storage.dart';

class ReadUtil {
  // Private constructor to prevent instantiation
  ReadUtil._();

  // Singleton instance
  static final ReadUtil instance = ReadUtil._();

  // Save last read
  Future<void> saveLastRead(QuranData data) async {
    // Convert the QuranData object to a JSON string
    String jsonString = json.encode(data.toJson());

    await SharedPrefStorage.instance
        .saveValue(SharedPrefKeys.lastRead.key, jsonString);
  }

  // Save last read offset
  Future<void> saveLastReadIndex(int id, int index) async {
    // Key formula is sura_id id + "index"
    final key = "${id}_index";

    await SharedPrefStorage.instance.saveValue(key, index);
  }

  // Get last read offset
  Future<int> getLastReadIndex(int id) async {
    // Key formula is sura_id id + "index"
    final key = "${id}_index";

    return await SharedPrefStorage.instance.getValue(key) ?? 0;
  }
}
