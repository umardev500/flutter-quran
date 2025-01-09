import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/screens/home_screen.dart';
import 'package:quran/screens/surah_screen.dart';

final GoRouter goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/surah',
      pageBuilder: (context, state) => CupertinoPage(child: SurahScreen()),
    )
  ],
);
