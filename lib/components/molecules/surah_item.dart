import 'package:flutter/material.dart';
import 'package:quran/components/atoms/surah_text.dart';
import 'package:quran/models/surah_data.dart';
import 'package:quran/router/router.dart';

class SurahItem extends StatelessWidget {
  final SurahData surah;
  const SurahItem({super.key, required this.surah});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // Navigate to read screen
          ReadScreenRoute(sura: surah.index, suraName: surah.tname)
              .push(context);
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
          padding: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
          decoration: _containerDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Surah info
              _surahDetail(),
              // Arabic surah name right end
              SurahText.nameArabicText(surah.name)
            ],
          ),
        ));
  }

  // Container decoration
  BoxDecoration _containerDecoration() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(25),
            offset: Offset(0, 4),
            blurRadius: 6,
            spreadRadius: -1,
          )
        ]);
  }

  // Surah detail component
  Row _surahDetail() {
    return Row(
      spacing: 16,
      children: [
        // Surah number
        SurahText.numberText(surah.index),
        // Surah Name and info
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SurahText.nameText(surah.tname),
            SurahText.translateText(surah.ename),
          ],
        )
      ],
    );
  }
}
