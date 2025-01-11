import 'package:flutter/material.dart';
import 'package:quran/components/organisms/quran_list.dart';
import 'package:quran/models/quran_data.dart';
import 'package:quran/repository/quran_repository.dart';
import 'package:quran/utils/read_util.dart';
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
  final ItemPositionsListener _itemPositionsListener =
      ItemPositionsListener.create();
  int currentIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    // Listen last index and change the current index
    _itemPositionsListener.itemPositions.addListener(() {
      final position = _itemPositionsListener.itemPositions.value;
      final currentItem = position.first;

      currentIndex = currentItem.index;
    });
  }

  // Load quran by sura
  Future<QuranDataResult> loadQuranBySura() async {
    try {
      await Future.delayed(Duration(milliseconds: 300));
      // Get the quran
      List<QuranData> result =
          await QuranRepository.getQuranBySura(widget.sura);

      // Get the last read index
      int lastAya =
          widget.aya ?? (await ReadUtil.instance.getLastReadIndex(widget.sura));

      return QuranDataResult(quran: result, aya: lastAya);
    } catch (e) {
      debugPrint("Failed to load data $e");
      return QuranDataResult(quran: [], aya: 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      // Handle the back action
      onPopInvokedWithResult: (status, obj) {
        // Save the last read index
        ReadUtil.instance.saveLastReadIndex(widget.sura, currentIndex);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Surah name", style: TextStyle()),
          titleSpacing: 0,
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
            IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
          ],
        ),
        body: Container(
            color: Colors.white,
            child: FutureBuilder(
                future: loadQuranBySura(),
                builder: (ctx, snap) {
                  if (snap.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return QuranList(
                    quranList: snap.data!.quran,
                    itemScrollController: _itemScrollController,
                    itemPositionsListener: _itemPositionsListener,
                    initalIndex: snap.data!.aya,
                  );
                })),
      ),
    );
  }
}
