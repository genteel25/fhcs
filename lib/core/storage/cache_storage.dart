import 'package:fhcs/core/storage/contract/icache.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheStorage extends ICacheStorage {
  static final CacheStorage _instance = CacheStorage._internal();
  factory CacheStorage() => _instance;
  CacheStorage._internal();

  final SharedPreferencesAsync sharedPreferences = SharedPreferencesAsync();

  @override 
  Future<void> setString(String key, String value) async {
    return await sharedPreferences.setString(key, value);
  }

  @override 
  Future<String> getString(String key) async {
    return await sharedPreferences.getString(key) ?? "";
  }

  @override
  Future<void> setBool(String key, bool value) async {
    return await sharedPreferences.setBool(key, value);
  }


  @override 
  Future<bool> getBool(String key) async {
    return await sharedPreferences.getBool(key) ?? false;
  }

  @override 
  Future<void> remove(String key) async {
    return await sharedPreferences.remove(key);
  }

  @override
  Future<void> clear() async {
    return await sharedPreferences.clear();
  }
}
