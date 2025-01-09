import 'package:flutter/material.dart';
import 'package:quran/components/atoms/surah/surah_atom.dart';
import 'package:quran/models/surah_data.dart';

class SurahItem extends StatelessWidget {
  final SurahData surah;
  const SurahItem({super.key, required this.surah});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(25),
              offset: Offset(0, 4),
              blurRadius: 6,
              spreadRadius: -1,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left
          _LeftComponent(surah: surah),
          // Arabic surah name right end
          SurahNameArabic(name: surah.name)
        ],
      ),
    );
  }
}

class _LeftComponent extends StatelessWidget {
  final SurahData surah;

  const _LeftComponent({required this.surah});

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
            SurahName(name: surah.tname),
            SurahTranslate(tname: surah.ename),
          ],
        )
      ],
    );
  }
}
