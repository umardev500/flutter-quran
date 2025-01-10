import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:quran/components/molecules/menu_sheet/menu_item.dart';
import 'package:quran/components/molecules/menu_sheet/menu_sheet.dart';

void showReadBottomSheet(BuildContext context) {
  showMenuSheet(context: context, items: [
    MenuSheetItem(
      title: "Play Murratal",
      icon: Symbols.motion_play_rounded,
      onTap: () {},
    ),
    MenuSheetItem(
      title: "Copy Aya",
      icon: Symbols.content_copy,
      onTap: () {},
    ),
    MenuSheetItem(
      title: "Share Aya",
      icon: Symbols.share,
      onTap: () {},
    ),
    MenuSheetItem(
      title: "Add To Bookmark",
      icon: Symbols.bookmark_add_rounded,
      filledIcon: 1,
      onTap: () {},
    ),
    MenuSheetItem(
      title: "Mark As Last Read",
      iconColor: Colors.green.shade900,
      icon: Symbols.check,
      onTap: () {},
    ),
  ]);
}
