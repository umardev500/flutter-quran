import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const String dbName = 'quran.db';

  static Future<Database> initializeDB() async {
    // Get the applicatoin's documents directory
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String dpPath = join(appDocDir.path, dbName);

    // Check if the database already exists
    if (!await File(dpPath).exists()) {
      // Copy the database from the assets folder to the documents directory
      ByteData data = await rootBundle.load("assets/quran/$dbName");
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write the database file
      await File(dpPath).writeAsBytes(bytes, flush: true);
    }

    // Open the database
    return await openDatabase(dpPath);
  }
}
