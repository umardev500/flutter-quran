import 'package:flutter/material.dart';
import 'package:quran/models/folder_model.dart';
import 'package:quran/router/router.dart';

class FolderItem extends StatelessWidget {
  final Folder folder;

  const FolderItem({super.key, required this.folder});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          ListTile(
            iconColor: Colors.grey.shade700,
            textColor: Colors.grey.shade700,
            onTap: () {
              BookmarkListScreenRoute(id: folder.id).go(context);
            },
            leading: Icon(Icons.folder_rounded),
            trailing: InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                debugPrint("clicked");
              },
              child: Icon(
                Icons.more_horiz_rounded,
                size: 18,
              ),
            ),
            title: Text(
              "${folder.name} (${folder.bookmarkCount})",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "rcondensed",
              ),
            ),
          ),

          // The divier
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Divider(
                height: 0.5,
                thickness: 0.5,
                color: Colors.grey.shade300,
              ))
        ],
      ),
    );
  }
}
