import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/screens/home_screen.dart';
import 'package:quran/screens/read_screen.dart';
import 'package:quran/screens/surah_screen.dart';

final GoRouter goRouter = GoRouter(
  initialLocation: '/surah',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/surah',
      pageBuilder: (context, state) => CupertinoPage(child: SurahScreen()),
    ),
    GoRoute(
      path: '/read',
      builder: (context, state) => const ReadScreen(),
    )
  ],
);
