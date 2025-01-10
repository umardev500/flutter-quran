import 'package:flutter/material.dart';
import 'package:quran/router/router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  BookmarkScreenRoute().push(context);
                },
                child: Text("Bookmark"),
              ),
              ElevatedButton(
                onPressed: () {
                  SurahScreenRoute().push(context);
                },
                child: Text("Surah"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
