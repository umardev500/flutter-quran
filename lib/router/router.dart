import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/screens/bookmark_list_screen.dart';
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
  final int? aya;

  const ReadScreenRoute({required this.sura, this.aya});

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoPage(
        child: ReadScreen(
      sura: sura,
      aya: aya,
    ));
  }
}

@TypedGoRoute<BookmarkScreenRoute>(
    path: '/bookmark',
    routes: [TypedGoRoute<BookmarkListScreenRoute>(path: "list/:id")])
@immutable
class BookmarkScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BookmarkScreen();
  }
}

@immutable
class BookmarkListScreenRoute extends GoRouteData {
  final int id; // sura id

  const BookmarkListScreenRoute({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BookmarkListScreen(id: id);
  }
}
