import 'package:flutter/material.dart';
import 'package:quran/components/organisms/folder_list.dart';
import 'package:quran/models/folder_model.dart';
import 'package:quran/repository/bookmark_repository.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  List<Folder> bookmarks = [];

  @override
  void initState() {
    super.initState();
    loadBookmarks();
  }

  Future<void> loadBookmarks() async {
    try {
      List<Folder> result = await BookmarkRepository.getFoldersWithBookmarks();
      setState(() {
        bookmarks = result;
      });
    } catch (e) {
      debugPrint("Failed to load data $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: FolderList(folders: bookmarks),
      ),
    );
  }
}
