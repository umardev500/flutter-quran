import 'package:flutter/material.dart';
import 'package:quran/components/organisms/bookmark_list.dart';
import 'package:quran/models/bookmark_model.dart';
import 'package:quran/repository/bookmark_repository.dart';

class BookmarkListScreen extends StatefulWidget {
  final int id;
  const BookmarkListScreen({super.key, required this.id});

  @override
  State<BookmarkListScreen> createState() => _BookmarkListScreenState();
}

class _BookmarkListScreenState extends State<BookmarkListScreen> {
  List<Bookmark> bookmarks = [];

  @override
  void initState() {
    super.initState();
    loadBookmarks();
  }

  Future<void> loadBookmarks() async {
    try {
      List<Bookmark> result =
          await BookmarkRepository.getBookmarksByFolderId(widget.id);
      setState(() {
        bookmarks = result;
      });
    } catch (e) {
      debugPrint("Failed to load data list $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: BookmarkList(bookmarks: bookmarks),
      ),
    );
  }
}
