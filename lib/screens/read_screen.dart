import 'package:flutter/material.dart';
import 'package:quran/components/organisms/quran_list.dart';
import 'package:quran/models/quran_data.dart';
import 'package:quran/repository/quran_repository.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ReadScreen extends StatefulWidget {
  final int sura;
  final int? aya;

  const ReadScreen({super.key, required this.sura, this.aya});

  @override
  State<ReadScreen> createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
  List<QuranData> quranList = [];
  final ItemScrollController _itemScrollController = ItemScrollController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadQuranBySura();
    });
  }

  Future<void> loadQuranBySura() async {
    try {
      await Future.delayed(Duration(milliseconds: 300));
      List<QuranData> result =
          await QuranRepository.getQuranBySura(widget.sura);

      setState(() {
        quranList = result;
      });
    } catch (e) {
      debugPrint("Failed to load data $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    // Jump to aya
    if (widget.aya != null &&
        quranList.isNotEmpty &&
        _itemScrollController.isAttached) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _itemScrollController.jumpTo(
          index: widget.aya! - 1,
        );
      });
    }

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: QuranList(
            quranList: quranList, itemScrollController: _itemScrollController),
      ),
    );
  }
}
