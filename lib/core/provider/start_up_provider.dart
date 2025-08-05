import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:youcancode/core/data/local/secure_storage/secure_storage.dart';
import 'package:youcancode/core/data/local/secure_storage/secure_storage_const.dart';
import 'package:youcancode/core/provider/auth_state_provider.dart';
import 'package:youcancode/core/provider/language_notifier.dart';
import 'package:youcancode/core/provider/theme_mode_notifier.dart';

part 'start_up_provider.g.dart';

@Riverpod(keepAlive: true)
Future<void> startUp(Ref ref) async {
  final secureStorage = ref.watch(secureStorageProvider);
  final accessToken = await secureStorage.read(key: accessTokenKey);
  final isDarkStr = await secureStorage.read(key: darkModeKey);
  final languageStr = await secureStorage.read(key: languageKey);

  if (languageStr == null) {
    await secureStorage.write(key: languageKey, value: "en");
  }
  if (languageStr != null) {
    ref
        .read(languageNotifierProvider.notifier)
        .setLanguage(Locale(languageStr));
  }
  if (isDarkStr == null) {
    await secureStorage.write(key: darkModeKey, value: "false");
  }
  if (isDarkStr != null && isDarkStr == "true") {
    ref.read(themeModeProvider.notifier).setTheme(ThemeMode.dark);
  } else {
    ref.read(themeModeProvider.notifier).setTheme(ThemeMode.light);
  }
  if (accessToken != null) {
    ref.read(authStateProvider.notifier).setAuthState(true);
  }
}
