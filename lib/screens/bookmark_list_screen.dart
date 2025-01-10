import 'package:flutter/material.dart';

class BookmarkListScreen extends StatelessWidget {
  final int id;

  const BookmarkListScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Bookmark List $id"),
      ),
    );
  }
}
