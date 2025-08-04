import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final flutterSecureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  const androidOptions = AndroidOptions(encryptedSharedPreferences: true);
  const iosOptions = IOSOptions(
    accessibility: KeychainAccessibility.first_unlock,
  );
  return const FlutterSecureStorage(
    aOptions: androidOptions,
    iOptions: iosOptions,
  );
});
