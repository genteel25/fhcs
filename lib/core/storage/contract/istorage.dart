abstract class IAppStorage {
  Future<void> saveString(String key, String value);
  Future<String> fetchString(String key);
  Future<void> saveBool(String key, bool value);
  Future<bool> fetchBool(String key);
  Future<void> removeValue(String key);
  Future<void> wipeCache();
}
