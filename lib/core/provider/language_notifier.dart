import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LanguageNotifier extends StateNotifier<Locale> {
  LanguageNotifier() : super(const Locale('en'));

  void setLanguage(Locale locale) => state = locale;
  Locale getLanguage() => state;
}

final languageNotifierProvider =
    StateNotifierProvider<LanguageNotifier, Locale>(
      (ref) => LanguageNotifier(),
    );
