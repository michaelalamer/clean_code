abstract interface class ISettingStorage {
  Future<void> clearToken();
  Future<void> toogleTheme();
  Future<void> setLanguage(String language);
}
