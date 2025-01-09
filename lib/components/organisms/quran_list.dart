import 'package:flutter/material.dart';
import 'package:quran/components/molecules/quran_item.dart';
import 'package:quran/models/quran_data.dart';

class QuranList extends StatelessWidget {
  final List<QuranData> quranList;
  const QuranList({super.key, required this.quranList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quranList.length,
      itemBuilder: (context, index) {
        final item = quranList[index];
        return QuranItem(quran: item);
      },
    );
  }
}
