import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/screens/bookmark_screen.dart';
import 'package:quran/screens/home_screen.dart';
import 'package:quran/screens/read_screen.dart';
import 'package:quran/screens/surah_screen.dart';

part 'router.g.dart';

@TypedGoRoute<HomeScreenRoute>(path: '/')
@immutable
class HomeScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

@TypedGoRoute<SurahScreenRoute>(path: '/surah')
@immutable
class SurahScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SurahScreen();
  }

  // @override
  // Page<void> buildPage(BuildContext context, GoRouterState state) {
  //   return const CupertinoPage(child: SurahScreen());
  // }
}

@TypedGoRoute<ReadScreenRoute>(path: '/read/:sura')
@immutable
class ReadScreenRoute extends GoRouteData {
  final int sura;

  const ReadScreenRoute({required this.sura});

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoPage(child: ReadScreen(sura: sura));
  }
}

@TypedGoRoute<BookmarkScreenRoute>(path: '/bookmark')
@immutable
class BookmarkScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BookmarkScreen();
  }
}
