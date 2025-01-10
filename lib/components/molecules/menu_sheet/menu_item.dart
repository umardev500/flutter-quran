import 'package:flutter/material.dart';

class MenuSheetItem {
  final String title;
  final IconData icon;
  final double filledIcon;
  final VoidCallback? onTap;
  final Color? color;
  final Color? iconColor;
  final TextStyle textStyle;

  MenuSheetItem({
    required this.title,
    required this.icon,
    this.filledIcon = 0,
    this.onTap,
    this.color,
    this.iconColor,
    TextStyle? textStyle,
  }) : textStyle =
            textStyle ?? const TextStyle(fontSize: 14, fontFamily: 'Roboto');
}

ListTile item(MenuSheetItem item) {
  return ListTile(
    textColor: item.color,
    iconColor: item.iconColor ?? item.color,
    leading: Icon(
      item.icon,
      fill: item.filledIcon,
      weight: 500,
    ),
    title: Text(item.title, style: item.textStyle),
    onTap: item.onTap,
  );
}
