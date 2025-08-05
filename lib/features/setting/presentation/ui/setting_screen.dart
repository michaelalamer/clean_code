import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youcancode/common/extension/string_hardcoded.dart';
import 'package:youcancode/core/data/local/secure_storage/flutter_secure_storage_provider.dart';
import 'package:youcancode/core/data/local/secure_storage/secure_storage_const.dart';
import 'package:youcancode/core/provider/theme_mode_notifier.dart';
import 'package:youcancode/features/setting/presentation/controller/setting_controller.dart';

class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingScreenState();
}

class _SettingScreenState extends ConsumerState<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setting'.hardcoded)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(settingControllerProvider.notifier).clearToken();
                },
                child: Text('Logout'.hardcoded),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(settingControllerProvider.notifier).toogleTheme();
                },
                child: Text('Toogle Theme'.hardcoded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
