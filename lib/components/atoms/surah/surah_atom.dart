import 'package:flutter/material.dart';

// Surah number
class SurahNumber extends StatelessWidget {
  final int number;
  const SurahNumber({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$number.",
      style: TextStyle(
          fontSize: 16,
          color: Colors.black87,
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto"),
    );
  }
}

// Surah name
class SurahName extends StatelessWidget {
  final String name;

  const SurahName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
          color: Colors.black87,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto"),
    );
  }
}

// Surah translate
class SurahTranslate extends StatelessWidget {
  final String tname;
  const SurahTranslate({super.key, required this.tname});

  @override
  Widget build(BuildContext context) {
    return Text(
      tname,
      style: TextStyle(
        color: Colors.black87,
        fontSize: 16,
        fontFamily: "rcondensed",
      ),
    );
  }
}

// Surah name arabic
class SurahNameArabic extends StatelessWidget {
  final String name;

  const SurahNameArabic({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
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
