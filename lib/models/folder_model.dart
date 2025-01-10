import 'dart:convert';

import 'package:quran/models/bookmark_model.dart';

class Folder {
  final int? id;
  final String name;
  final List<Bookmark> bookmarks;

  Folder({required this.id, required this.name, this.bookmarks = const []});

  // Covert Folder to map for Sqlite
  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  // Convert Map to folder instance
  factory Folder.fromMap(Map<String, dynamic> map) {
    final bookmarksJson =
        map['bookmarks'] != null ? jsonDecode(map['bookmarks']) as List : [];
    final bookmarks = bookmarksJson.map((e) => Bookmark.fromMap(e)).toList();

    return Folder(
      id: map['id'],
      name: map['name'],
      bookmarks: bookmarks,
    );
  }
}
