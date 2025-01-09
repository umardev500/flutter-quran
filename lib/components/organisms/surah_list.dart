import 'package:flutter/material.dart';
import 'package:quran/components/molecules/surah_item.dart';
import 'package:quran/models/surah_data.dart';

class SurahList extends StatelessWidget {
  final List<SurahData> surahs;

  const SurahList({super.key, required this.surahs});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: surahs.length,
      itemBuilder: (context, index) {
        final surah = surahs[index];
        return SurahItem(surah: surah);
      },
    );
  }
}
