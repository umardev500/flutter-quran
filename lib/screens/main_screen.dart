import 'package:flutter/material.dart';
import 'package:quran/components/atoms/icons.dart';
import 'package:quran/router/router.dart';

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
        child: ElevatedButton(
            onPressed: () {
              SurahScreenRoute().push(context);
            },
            child: Text("click")),
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
            icon: Icon(CustomIcons.home),
            selectedIcon: Icon(CustomIcons.home, fill: 1),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(CustomIcons.search),
            selectedIcon: Icon(CustomIcons.search, fill: 1),
            label: "Search",
          ),
          NavigationDestination(
            icon: Icon(CustomIcons.book5),
            selectedIcon: Icon(CustomIcons.book5, fill: 1),
            label: "Surah",
          ),
          NavigationDestination(
            icon: Icon(CustomIcons.settings),
            selectedIcon: Icon(CustomIcons.settings, fill: 1),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
