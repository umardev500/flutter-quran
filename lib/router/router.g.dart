// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $tabShellRouteData,
      $readScreenRoute,
      $bookmarkScreenRoute,
    ];

RouteBase get $tabShellRouteData => ShellRouteData.$route(
      factory: $TabShellRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/home',
          factory: $HomeTabRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/surah',
          factory: $SurahTabRouteExtension._fromState,
        ),
      ],
    );

extension $TabShellRouteDataExtension on TabShellRouteData {
  static TabShellRouteData _fromState(GoRouterState state) =>
      const TabShellRouteData();
}

extension $HomeTabRouteExtension on HomeTabRoute {
  static HomeTabRoute _fromState(GoRouterState state) => const HomeTabRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SurahTabRouteExtension on SurahTabRoute {
  static SurahTabRoute _fromState(GoRouterState state) => const SurahTabRoute();

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
        aya: _$convertMapValue('aya', state.uri.queryParameters, int.parse),
        suraName: state.uri.queryParameters['sura-name'],
      );

  String get location => GoRouteData.$location(
        '/read/${Uri.encodeComponent(sura.toString())}',
        queryParams: {
          if (aya != null) 'aya': aya!.toString(),
          if (suraName != null) 'sura-name': suraName,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
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
