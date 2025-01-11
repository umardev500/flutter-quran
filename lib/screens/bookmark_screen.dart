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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Bookmark"),
        titleSpacing: 0,
        shadowColor: Colors.black.withAlpha(30),
        surfaceTintColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey.shade200,
            height: 1.0,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_rounded)),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(child: FolderList(folders: bookmarks)),
      ),
    );
  }
}
