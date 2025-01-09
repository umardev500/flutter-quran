import 'package:flutter/material.dart';

class ReadScreen extends StatelessWidget {
  final int sura;

  const ReadScreen({super.key, required this.sura});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("$sura"),
      ),
    );
  }
}
