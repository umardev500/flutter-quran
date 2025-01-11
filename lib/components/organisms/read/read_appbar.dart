import 'package:flutter/material.dart';
import 'package:quran/components/organisms/read/read_appbar_anchor.dart';

class ReadAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ReadAppBar({super.key, required this.suraName});

  final String suraName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(suraName),
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
        ReadAppbarAnchor()
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
