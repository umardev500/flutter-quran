import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/components/atoms/icons.dart';
import 'package:quran/router/router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.child});

  final Widget child;

  int _getCurrentIndex(BuildContext ctx) {
    final String location = GoRouterState.of(ctx).uri.path;
    switch (location) {
      case "/search":
        return 1;
      case "/surah":
        return 2;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final int currentIndex = _getCurrentIndex(context);

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          switch (index) {
            case 0:
              HomeTabRoute().go(context);
            case 2:
              SurahTabRoute().go(context);
          }
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
