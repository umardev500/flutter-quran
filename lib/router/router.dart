import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/screens/home_screen.dart';
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
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const CupertinoPage(child: SurahScreen());
  }
}
