// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeScreenRoute,
      $surahScreenRoute,
      $readScreenRoute,
      $bookmarkScreenRoute,
    ];

RouteBase get $homeScreenRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeScreenRouteExtension._fromState,
    );

extension $HomeScreenRouteExtension on HomeScreenRoute {
  static HomeScreenRoute _fromState(GoRouterState state) => HomeScreenRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $surahScreenRoute => GoRouteData.$route(
      path: '/surah',
      factory: $SurahScreenRouteExtension._fromState,
    );

extension $SurahScreenRouteExtension on SurahScreenRoute {
  static SurahScreenRoute _fromState(GoRouterState state) => SurahScreenRoute();

  String get location => GoRouteData.$location(
        '/surah',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $readScreenRoute => GoRouteData.$route(
      path: '/read/:sura',
      factory: $ReadScreenRouteExtension._fromState,
    );

extension $ReadScreenRouteExtension on ReadScreenRoute {
  static ReadScreenRoute _fromState(GoRouterState state) => ReadScreenRoute(
        sura: int.parse(state.pathParameters['sura']!),
      );

  String get location => GoRouteData.$location(
        '/read/${Uri.encodeComponent(sura.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $bookmarkScreenRoute => GoRouteData.$route(
      path: '/bookmark',
      factory: $BookmarkScreenRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'list/:id',
          factory: $BookmarkListScreenRouteExtension._fromState,
        ),
      ],
    );

extension $BookmarkScreenRouteExtension on BookmarkScreenRoute {
  static BookmarkScreenRoute _fromState(GoRouterState state) =>
      BookmarkScreenRoute();

  String get location => GoRouteData.$location(
        '/bookmark',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BookmarkListScreenRouteExtension on BookmarkListScreenRoute {
  static BookmarkListScreenRoute _fromState(GoRouterState state) =>
      BookmarkListScreenRoute(
        id: int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/bookmark/list/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
