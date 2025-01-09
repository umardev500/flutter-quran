import 'package:flutter/material.dart';
import 'package:quran/components/atoms/quran_text.dart';
import 'package:quran/models/quran_data.dart';

class QuranItem extends StatelessWidget {
  final QuranData quran;
  const QuranItem({super.key, required this.quran});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
          padding: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 16,
            children: [
              QuranText.quranText(quran.text),

              // Translation
              Row(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuranText.quranAya(quran.aya),
                  Expanded(child: QuranText.quranTranslation(quran.trText))
                ],
              )
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 0.5,
              color: Colors.grey.shade300,
            ))
      ],
    );
  }
}
