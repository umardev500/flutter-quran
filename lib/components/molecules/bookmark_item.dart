import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quran/models/bookmark_model.dart';

class BookmarkItem extends StatelessWidget {
  final Bookmark bookmark;
  const BookmarkItem({super.key, required this.bookmark});

  @override
  Widget build(BuildContext context) {
    // Convert Unix timestamp to a DateTime object
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(
        bookmark.createdAt! * 1000,
        isUtc: true);

    // Format the date and time
    String formattedDate = DateFormat("MMM d, yyyy h:mm a").format(dateTime);

    return Material(
      color: Colors.transparent,
      child: Stack(children: [
        ListTile(
          onTap: () {},
          iconColor: Colors.grey.shade800,
          textColor: Colors.grey.shade800,
          tileColor: Colors.white,
          leading: Text(
            "${bookmark.index}.",
            style: TextStyle(fontSize: 16),
          ),
          trailing: Icon(Icons.chevron_right_rounded),
          title: Text(
            "${bookmark.surahName} : ${bookmark.aya}",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            formattedDate,
            style: TextStyle(color: Colors.grey.shade600),
          ),
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
