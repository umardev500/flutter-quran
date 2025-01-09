import 'package:flutter/material.dart';

class QuranText {
  static Widget quranText(String text) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(fontSize: 26),
        children: [
          TextSpan(
            text: text, // Original Quran text
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w400,
              fontFamily: "Uthmanic",
            ),
          ),
          TextSpan(
            text: " ١", // Space plus the Arabic number ١
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w400,
              fontFamily: "Hafs",
            ),
          ),
        ],
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
