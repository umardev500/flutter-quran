import 'package:flutter/material.dart';
import 'package:quran/router/router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              SurahScreenRoute().push(context);
            },
            child: Text("Navigate"),
          ),
        ),
      ),
    );
  }
}
