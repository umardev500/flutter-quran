import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran/components/atoms/icons.dart';
import 'package:quran/components/organisms/surah_list.dart';
import 'package:quran/models/surah_data.dart';

class SurahTab extends StatefulWidget {
  const SurahTab({super.key});

  @override
  State<SurahTab> createState() => _SurahTabState();
}

class _SurahTabState extends State<SurahTab> {
  List<SurahData> surahs = [];

  @override
  void initState() {
    super.initState();
    loadSurahData(); // Load data when the widget is initialized
  }

  Future<void> loadSurahData() async {
    try {
      // Load the file from assets
      final String response =
          await rootBundle.loadString("assets/quran/surahs.json");

      // Decode the JSON into a List<dynamic>
      List<dynamic> data = jsonDecode(response);

      // Map each dynamic object to a SurahData object
      List<SurahData> surahs = data.map((e) => SurahData.fromJson(e)).toList();

      // Update the state with the loaded data
      setState(() {
        this.surahs = surahs;
      });
    } catch (e) {
      debugPrint("Failed to load data $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Quran", style: TextStyle()),
        shadowColor: Colors.black.withAlpha(30),
        surfaceTintColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey.shade200,
            height: 1.0,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CustomIcons.swapVert)),
          IconButton(onPressed: () {}, icon: Icon(CustomIcons.search)),
        ],
      ),
      body: Container(
        color: Color(0xFFf3f4f6),
        child: SafeArea(child: SurahList(surahs: surahs)),
      ),
    );
  }
}
