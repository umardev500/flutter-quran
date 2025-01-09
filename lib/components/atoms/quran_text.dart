import 'package:flutter/material.dart';

class QuranText {
  static Widget quranText(String text) {
    return RichText(
      text: TextSpan(
        text: text,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 26,
          fontWeight: FontWeight.w400,
          fontFamily: "Uthmanic",
        ),
      ),
      textAlign: TextAlign.right, // Align the entire RichText block
      textDirection: TextDirection.rtl, // Right-to-left for Quranic Arabic
    );
  }

  static Widget quranAya(int aya) {
    return Text(
      "$aya.",
      style: TextStyle(
        color: Colors.teal,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: "rcondensed",
      ),
    );
  }

  static Widget quranTranslation(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black87,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: "rcondensed",
      ),
    );
  }
}
