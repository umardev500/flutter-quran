import 'package:flutter/material.dart';

class ReadScreen extends StatelessWidget {
  final int sura;

  const ReadScreen({super.key, required this.sura});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
          child: Text(
            "Sura $sura",
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
