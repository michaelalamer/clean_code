abstract interface class ISettingRepository {
  Future<void> clearToken();
  Future<void> toogleTheme();
  Future<void> setLanguage(String language);
}
