import 'package:flutter/material.dart';
import 'package:quran/components/atoms/surah/surah_atom.dart';
import 'package:quran/models/surah_data.dart';

class SurahItem extends StatelessWidget {
  final SurahData surahData;
  const SurahItem({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left
          _LeftComponent(),
          // Arabic surah name right end
          SurahNameArabic(name: "الفاتحة")
        ],
      ),
    );
  }
}

class _LeftComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        // Surah number
        SurahNumber(
          number: 12,
        ),
        // Surah Name and info
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SurahName(name: "Al-Fatihah"),
            SurahTranslate(tname: "The Opening"),
          ],
        )
      ],
    );
  }
}
