import 'package:flutter/material.dart';
import 'package:quran/utils/number_util.dart';

class QuranText {
  static Widget quranText(String text, int aya) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(fontSize: 26),
        children: [
          TextSpan(
            text: text, // Original Quran text
            style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontFamily: "Hafs",
                fontFeatures: [FontFeature.enable('rlig')]),
          ),
          TextSpan(
            text: " ${toArabicNumbers(aya)}", // Space plus the Arabic number ١
            style: TextStyle(
              color: Colors.teal.shade800,
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
        color: Colors.teal.shade800,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: "Roboto",
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
        fontFamily: "Roboto",
        height: 1.5,
      ),
    );
  }
}
