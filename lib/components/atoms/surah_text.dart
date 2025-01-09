import 'package:flutter/material.dart';

class SurahText {
  static Widget numberText(int number) {
    return Text(
      "$number.",
      style: TextStyle(
          fontSize: 16,
          color: Colors.black87,
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto"),
    );
  }

  static Widget nameText(String name) {
    return Text(
      name,
      style: TextStyle(
          color: Colors.black87,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto"),
    );
  }

  static Widget translateText(String tname) {
    return Text(
      tname,
      style: TextStyle(
        color: Colors.grey.shade700,
        fontSize: 16,
        fontFamily: "rcondensed",
      ),
    );
  }

  static Widget nameArabicText(String name) {
    return Text(
      name,
      style: TextStyle(
          color: Colors.black87,
          fontSize: 25,
          fontWeight: FontWeight.w700,
          fontFamily: "Uthmanic"),
    );
  }
}
