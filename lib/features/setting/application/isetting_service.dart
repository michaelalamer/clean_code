abstract interface class IsettingService {
  Future<void> clearToken();
  Future<void> toogleTheme();
  Future<void> setLanguage(String language);
}
