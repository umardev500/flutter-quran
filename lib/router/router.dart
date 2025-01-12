import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/screens/bookmark_list_screen.dart';
import 'package:quran/screens/bookmark_screen.dart';
import 'package:quran/screens/main_screen.dart';
import 'package:quran/screens/read_screen.dart';
import 'package:quran/screens/tabs/home_tab.dart';
import 'package:quran/screens/tabs/surah_tab.dart';

part 'router.g.dart';

@TypedShellRoute<TabShellRouteData>(routes: [
  TypedGoRoute<HomeTabRoute>(path: "/home"),
  TypedGoRoute<SurahTabRoute>(path: "/surah"),
])
class TabShellRouteData extends ShellRouteData {
  const TabShellRouteData();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return MainScreen(child: navigator);
  }
}

// TAB SCREENS

@immutable
class HomeTabRoute extends GoRouteData {
  const HomeTabRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeTab();
  }
}

@immutable
class SurahTabRoute extends GoRouteData {
  const SurahTabRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SurahTab();
  }
}

// STACK SCREENS

@TypedGoRoute<ReadScreenRoute>(path: '/read/:sura')
@immutable
class ReadScreenRoute extends GoRouteData {
  final int sura;
  final int? aya; // An optional query parameter
  final String? suraName;

  const ReadScreenRoute({required this.sura, this.aya, this.suraName});

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoPage(
        child: ReadScreen(
      sura: sura,
      aya: aya,
      suraName: suraName ?? "Quran",
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
