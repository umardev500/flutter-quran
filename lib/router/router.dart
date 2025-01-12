import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/screens/bookmark_list_screen.dart';
import 'package:quran/screens/bookmark_screen.dart';
import 'package:quran/screens/main_screen.dart';
import 'package:quran/screens/read_screen.dart';
import 'package:quran/screens/setting_screen.dart';

part 'router.g.dart';

// STACK SCREENS

@TypedGoRoute<MainScreenRoute>(path: '/')
@immutable
class MainScreenRoute extends GoRouteData {
  const MainScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MainScreen(initialIndex: 0);
  }
}

@TypedGoRoute<SettingScreenRoute>(path: '/setting')
@immutable
class SettingScreenRoute extends GoRouteData {
  const SettingScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingScreen();
  }
}

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
  const BookmarkScreenRoute();

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
