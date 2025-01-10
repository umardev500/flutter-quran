import 'package:flutter/material.dart';
import 'package:quran/components/molecules/menu_sheet/menu_item.dart';

void showMenuSheet({
  required BuildContext context,
  required List<MenuSheetItem> items,
  bool isControlled = true,
  Color backgroundColor = Colors.white,
  ShapeBorder? shape,
  double borderRadius = 0,
  bool isDismissable = true,
  bool showDragHandle = true,
}) {
  showModalBottomSheet(
      showDragHandle: showDragHandle,
      shape: shape ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(borderRadius),
              topRight: Radius.circular(borderRadius),
            ),
          ),
      backgroundColor: backgroundColor,
      context: context,
      builder: (ctx) {
        return SafeArea(
          child: Wrap(
            children: items.map((map) => item(map)).toList(),
          ),
        );
      });
}
