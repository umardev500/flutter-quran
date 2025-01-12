import 'package:flutter/material.dart';
import 'package:quran/components/atoms/icons.dart';
import 'package:quran/router/router.dart';
import 'package:quran/screens/search_screen.dart';
import 'package:quran/screens/tabs/home_tab.dart';
import 'package:quran/screens/tabs/surah_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.initialIndex});

  final int initialIndex;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final int settingIndex = 3;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  final List<Widget> _screens = [
    const HomeTab(),
    const SearchScreen(),
    const SurahTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          if (index == settingIndex) {
            // Navigate to the settings screen
            SettingScreenRoute().push(context);

            return;
          }
          setState(() {
            _currentIndex = index;
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
