import 'package:flutter/material.dart';

class CustomIcons {
  CustomIcons._(); // Private constructor to prevent instantiation

  // Define the font name, make sure the font is added in the pubspec.yaml file
  static const String fontName = 'MaterialSymbolsSubset';

  // Define your custom icon mappings as static constants
  static const IconData home =
      IconData(0xe88a, fontFamily: fontName); // U+E88A Home Icon
  static const IconData book5 =
      IconData(0xf53b, fontFamily: fontName); // U+F53B Book 5
  static const IconData settings =
      IconData(0xe8b8, fontFamily: fontName); // U+E8B8 Settings
  static const IconData search =
      IconData(0xe8b6, fontFamily: fontName); // U+E8B6 Search Icon
  static const IconData check =
      IconData(0xe5ca, fontFamily: fontName); // U+E5CA Check
}
