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
          fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
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
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: "rcondensed"),
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
        color: Colors.white,
        fontSize: 16,
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
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w500,
          fontFamily: "Uthmanic"),
    );
  }
}
