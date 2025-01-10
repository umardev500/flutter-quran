enum SharedPrefKeys {
  lastRead,
}

extension SharedPrefKeysExtension on SharedPrefKeys {
  String get key => name.toLowerCase();
}
