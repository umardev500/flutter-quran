import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefStorage {
  // Private constructor
  SharedPrefStorage._();

  // Singleton instance
  static final SharedPrefStorage instance = SharedPrefStorage._();

  // Save a value (supports String, int, double, bool, List<String>)
  Future<void> saveValue(String key, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();

    switch (value) {
      case String _:
        await prefs.setString(key, value);
        break;
      case int _:
        await prefs.setInt(key, value);
        break;
      case double _:
        await prefs.setDouble(key, value);
        break;
      case bool _:
        await prefs.setBool(key, value);
        break;
      case List<String> _:
        await prefs.setStringList(key, value);
        break;
      default:
        throw UnsupportedError('Unsupported value type: ${value.runtimeType}');
    }
  }

  // Retrieve a value
  Future<dynamic> getValue(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get(key); // Automatically handles all value type
  }

  /// Delete a value by key
  Future<void> removeValue(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  /// Clear all preferences
  Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
