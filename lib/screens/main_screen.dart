import 'package:flutter/material.dart';
import 'package:quran/components/atoms/icons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Main Screen"),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
              icon: Icon(
                CustomIcons.home,
                fill: 1,
              ),
              label: "Home"),
          NavigationDestination(
              icon: Icon(Icons.search_rounded), label: "Search"),
          NavigationDestination(icon: Icon(Icons.book_rounded), label: "Surah"),
          NavigationDestination(
              icon: Icon(
                Icons.settings_rounded,
              ),
              label: "Settings"),
        ],
      ),
    );
  }
}
