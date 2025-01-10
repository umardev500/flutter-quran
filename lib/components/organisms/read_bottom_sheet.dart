import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran/components/molecules/menu_sheet/menu_item.dart';
import 'package:quran/components/molecules/menu_sheet/menu_sheet.dart';
import 'package:quran/models/quran_data.dart';
import 'package:quran/utils/read_util.dart';
import 'package:share_plus/share_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showReadBottomSheet(BuildContext context, {required QuranData data}) {
  showMenuSheet(context: context, items: [
    MenuSheetItem(
      title: "Play Murratal",
      icon: Icons.play_circle_outline_rounded,
      onTap: () {},
    ),
    MenuSheetItem(
      title: "Copy Aya",
      icon: Icons.content_copy,
      onTap: () {
        Clipboard.setData(ClipboardData(text: data.text));
        Navigator.of(context).pop();
      },
    ),
    MenuSheetItem(
      title: "Share Aya",
      icon: Icons.share,
      onTap: () async {
        final result = await Share.share(data.text);
        if (result.status == ShareResultStatus.success && context.mounted) {
          Navigator.of(context).pop();
        }
      },
    ),
    MenuSheetItem(
      title: "Add To Bookmark",
      icon: Icons.bookmark_add_rounded,
      filledIcon: 1,
      onTap: () {},
    ),
    MenuSheetItem(
      title: "Mark As Last Read",
      icon: Icons.check,
      onTap: () async {
        await ReadUtil.instance.saveLastRead(data);
        Fluttertoast.showToast(
          msg: "Aya ${data.aya} marked as last read",
          toastLength: Toast.LENGTH_SHORT,
        );

        if (context.mounted) {
          Navigator.of(context).pop();
        }
      },
    ),
  ]);
}
