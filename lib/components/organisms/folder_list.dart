import 'package:flutter/material.dart';
import 'package:quran/components/molecules/folder_item.dart';
import 'package:quran/models/folder_model.dart';

class FolderList extends StatelessWidget {
  final List<Folder> folders;
  const FolderList({super.key, required this.folders});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: folders.length,
      itemBuilder: (context, index) {
        return FolderItem(folder: folders[index]);
      },
    );
  }
}
