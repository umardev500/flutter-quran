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
  @override
  void initState() {
    super.initState();
  }

  Future<List<Bookmark>> loadBookmarks() async {
    try {
      List<Bookmark> result =
          await BookmarkRepository.getBookmarksByFolderId(widget.id);

      return result;
    } catch (e) {
      debugPrint("Failed to load data list $e");
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Bookmarks", style: TextStyle()),
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
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
            child: FutureBuilder(
          future: loadBookmarks(),
          builder: (ctx, snap) {
            if (snap.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snap.data!.isEmpty) {
              return Center(
                child: Text("No bookmarks"),
              );
            }

            return BookmarkList(bookmarks: snap.data!);
          },
        )),
      ),
    );
  }
}
