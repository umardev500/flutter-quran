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
  static const IconData moveDown =
      IconData(0xeb61, fontFamily: fontName); // U+EB61 Move down
  static const IconData darkMode =
      IconData(0xe51c, fontFamily: fontName); // U+E51C Dark mode
  static const IconData lightMode =
      IconData(0xe518, fontFamily: fontName); // U+E518 Light mode
  static const IconData stepInfo =
      IconData(0xf701, fontFamily: fontName); // U+F701 Step info
  static const IconData lowPriority =
      IconData(0xe16d, fontFamily: fontName); // U+E16D Low priority
  static const IconData verticalAlignCenter =
      IconData(0xe259, fontFamily: fontName); // U+E259 Vertical align center
  static const IconData playCircle =
      IconData(0xe1c4, fontFamily: fontName); // U+E1C4 Play circle
  static const IconData contentCopy =
      IconData(0xe14d, fontFamily: fontName); // U+E14D Content Copy
  static const IconData share =
      IconData(0xe80d, fontFamily: fontName); // U+E80D Share
  static const IconData gTranslate =
      IconData(0xe927, fontFamily: fontName); // U+E927 G Translate
  static const IconData moreVert =
      IconData(0xe5d4, fontFamily: fontName); // U+E5D4 More vert
  static const IconData moreHoriz =
      IconData(0xe5d3, fontFamily: fontName); // U+E5D3 More horiz
  static const IconData swapVert =
      IconData(0xe8d5, fontFamily: fontName); // U+E8D5 Swap vert
  static const IconData arrowBack =
      IconData(0xe5c4, fontFamily: fontName); // U+E5C4 Arrow back
  static const IconData arrowForward =
      IconData(0xe5c8, fontFamily: fontName); // U+E5C8 Arrow forward
  static const IconData chevronLeft =
      IconData(0xe5cb, fontFamily: fontName); // U+E5CB Chevron left
  static const IconData chevronRight =
      IconData(0xe5cc, fontFamily: fontName); // U+E5CC Chevron right
  static const IconData close =
      IconData(0xe5cd, fontFamily: fontName); // U+E5CD Close
  static const IconData delete =
      IconData(0xe872, fontFamily: fontName); // U+E872 Delete
}
