import 'package:flutter/material.dart';
import 'package:quran/components/molecules/menu_sheet/menu_item.dart';
import 'package:quran/components/molecules/menu_sheet/menu_sheet.dart';

void showReadBottomSheet(BuildContext context) {
  showMenuSheet(context: context, items: [
    MenuSheetItem(
      title: "Play Murratal",
      icon: Icons.play_circle_outline_rounded,
      onTap: () {},
    ),
    MenuSheetItem(
      title: "Copy Aya",
      icon: Icons.content_copy,
      onTap: () {},
    ),
    MenuSheetItem(
      title: "Share Aya",
      icon: Icons.share,
      onTap: () {},
    ),
    MenuSheetItem(
      title: "Add To Bookmark",
      icon: Icons.bookmark_add_rounded,
      filledIcon: 1,
      onTap: () {},
    ),
    MenuSheetItem(
      title: "Mark As Last Read",
      iconColor: Colors.green.shade900,
      icon: Icons.check,
      onTap: () {},
    ),
  ]);
}
