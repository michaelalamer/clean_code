import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youcancode/core/data/local/secure_storage/isecure_storage.dart';
import 'package:youcancode/core/data/local/secure_storage/secure_storage.dart';
import 'package:youcancode/core/data/local/secure_storage/secure_storage_const.dart';
import 'package:youcancode/features/setting/data/source/local/isetting_storage.dart';

final settingStorageProvider = Provider<ISettingStorage>((ref) {
  final secureStorage = ref.watch(secureStorageProvider);

  return SetingStorage(secureStorage);
});

class SetingStorage implements ISettingStorage {
  final ISecureStorage _secureStorage;

  SetingStorage(this._secureStorage);

  @override
  Future<void> clearToken() async {
    await _secureStorage.delete(key: accessTokenKey);
    await _secureStorage.delete(key: refreshTokenKey);
  }

  @override
  Future<void> toogleTheme() async {
    final isDark = await _secureStorage.read(key: darkModeKey);
    if (isDark.toString() == "true") {
      await _secureStorage.delete(key: darkModeKey);
      await _secureStorage.write(key: darkModeKey, value: "false");
    } else {
      await _secureStorage.delete(key: darkModeKey);
      await _secureStorage.write(key: darkModeKey, value: "true");
    }
  }
}
