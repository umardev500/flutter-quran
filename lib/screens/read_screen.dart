import 'package:flutter/material.dart';
import 'package:quran/components/organisms/quran_list.dart';
import 'package:quran/models/quran_data.dart';
import 'package:quran/repository/quran_repository.dart';

class ReadScreen extends StatefulWidget {
  final int sura;

  const ReadScreen({super.key, required this.sura});

  @override
  State<ReadScreen> createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
  List<QuranData> quranList = [];

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
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: QuranList(quranList: quranList),
      ),
    );
  }
}
