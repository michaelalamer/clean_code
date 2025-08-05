import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youcancode/core/provider/language_notifier.dart';
import 'package:youcancode/core/provider/theme_mode_notifier.dart';
import 'package:youcancode/core/route/go_router_provider.dart';
import 'package:youcancode/l10n/app_localizations.dart';

class MainWidget extends ConsumerWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    final themeMode = ref.watch(themeModeProvider);
    final language = ref.watch(languageNotifierProvider);
    return MaterialApp.router(
      themeMode: themeMode,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: language,
    );
  }
}
