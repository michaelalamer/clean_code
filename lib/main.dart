import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youcancode/core/startup/start_up_screen.dart';
import 'package:youcancode/main_widget.dart';

void main() {
  runApp(
    ProviderScope(
      child: StartUpScreen(builder: (context) => const MainWidget()),
    ),
  );
}
