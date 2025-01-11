import 'package:flutter/material.dart';
import 'package:quran/components/molecules/quran_item.dart';
import 'package:quran/models/quran_data.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class QuranList extends StatelessWidget {
  final List<QuranData> quranList;
  final ItemScrollController itemScrollController;
  final ScrollOffsetController scrollOffsetController;
  final ScrollOffsetListener scrollOffsetListener;

  const QuranList(
      {super.key,
      required this.quranList,
      required this.itemScrollController,
      required this.scrollOffsetController,
      required this.scrollOffsetListener});

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      itemScrollController: itemScrollController,
      scrollOffsetController: scrollOffsetController,
      scrollOffsetListener: scrollOffsetListener,
      itemCount: quranList.length,
      itemBuilder: (context, index) {
        final item = quranList[index];
        return QuranItem(quran: item);
      },
    );
  }
}
