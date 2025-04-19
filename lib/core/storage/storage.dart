import 'package:fhcs/core/storage/contract/icache.dart';
import 'package:fhcs/core/storage/contract/ilocal.dart';
import 'package:fhcs/core/storage/contract/istorage.dart';

class AppStorage implements IAppStorage {
  final ICacheStorage cache;
  final ILocalStorage local;

  AppStorage({required this.cache, required this.local});

  @override
  Future<void> saveString(String key, String value) =>
      cache.setString(key, value);
  @override
  Future<String> fetchString(String key) => cache.getString(key);
  @override
  Future<void> saveBool(String key, bool value) => cache.setBool(key, value);
  @override
  Future<bool> fetchBool(String key) => cache.getBool(key);
  @override
  Future<void> removeValue(String key) => cache.remove(key);
  @override
  Future<void> wipeCache() => cache.clear();
}
