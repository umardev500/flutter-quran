import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

Widget animatedScrollToFab(ValueListenable<bool> isFabVisible,
    ItemScrollController itemScrollController) {
  return ValueListenableBuilder<bool>(
      valueListenable: isFabVisible,
      builder: (ctx, isVisible, child) {
        return AnimatedScale(
          scale: isVisible ? 1 : 0,
          duration: Duration(milliseconds: 300),
          child: FloatingActionButton(
            onPressed: () {
              itemScrollController.scrollTo(
                  index: 0, duration: Duration(milliseconds: 300));
            },
            child: Icon(Icons.keyboard_arrow_up_rounded),
          ),
        );
      });
}
