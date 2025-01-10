import 'package:flutter/material.dart';
import 'package:quran/components/molecules/bookmark_item.dart';
import 'package:quran/models/bookmark_model.dart';

class BookmarkList extends StatelessWidget {
  final List<Bookmark> bookmarks;
  const BookmarkList({super.key, required this.bookmarks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: bookmarks.length,
        itemBuilder: (context, index) {
          return BookmarkItem(bookmark: bookmarks[index]);
        });
  }
}
