import 'package:flutter/material.dart';
import 'package:quran/models/bookmark_model.dart';

class BookmarkItem extends StatelessWidget {
  final Bookmark bookmark;
  const BookmarkItem({super.key, required this.bookmark});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(children: [
        ListTile(
          onTap: () {},
          tileColor: Colors.white,
          leading: Text(
            "${bookmark.index}.",
            style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
          ),
          trailing:
              Icon(Icons.chevron_right_rounded, color: Colors.grey.shade700),
          title: Text(
            bookmark.surahName,
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.grey.shade800),
          ),
          subtitle: Text("The Opening | Aya 7"),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Divider(
                height: 0.5, thickness: 0.5, color: Colors.grey.shade300)),
      ]),
    );
  }
}
