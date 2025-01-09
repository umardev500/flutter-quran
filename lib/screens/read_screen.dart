import 'package:flutter/material.dart';
import 'package:quran/models/quran_data.dart';
import 'package:quran/repository/quran_repository.dart';

class ReadScreen extends StatefulWidget {
  final int sura;

  const ReadScreen({super.key, required this.sura});

  @override
  State<ReadScreen> createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
  List<QuranData> quran = [];

  @override
  void initState() {
    super.initState();
    loadQuranBySura();
  }

  Future<void> loadQuranBySura() async {
    try {
      List<QuranData> result = await QuranRepository.getQuranBySura(1);

      setState(() {
        quran = result;
      });
    } catch (e) {
      debugPrint("Failed to load data $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
          child: Text(
            "Sura ${quran.length}",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
