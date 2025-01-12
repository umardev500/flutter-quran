// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mainScreenRoute,
      $settingScreenRoute,
      $readScreenRoute,
      $bookmarkScreenRoute,
    ];

RouteBase get $mainScreenRoute => GoRouteData.$route(
      path: '/',
      factory: $MainScreenRouteExtension._fromState,
    );

extension $MainScreenRouteExtension on MainScreenRoute {
  static MainScreenRoute _fromState(GoRouterState state) =>
      const MainScreenRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingScreenRoute => GoRouteData.$route(
      path: '/setting',
      factory: $SettingScreenRouteExtension._fromState,
    );

extension $SettingScreenRouteExtension on SettingScreenRoute {
  static SettingScreenRoute _fromState(GoRouterState state) =>
      const SettingScreenRoute();

  String get location => GoRouteData.$location(
        '/setting',
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
      const BookmarkScreenRoute();

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
