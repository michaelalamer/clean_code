import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youcancode/core/data/local/secure_storage/flutter_secure_storage_provider.dart';
import 'package:youcancode/core/data/local/secure_storage/isecure_storage.dart';

final secureStorageProvider = Provider<ISecureStorage>((ref) {
  final storage = ref.watch(flutterSecureStorageProvider);
  return SecureStorage(storage);
});

final class SecureStorage implements ISecureStorage {
  final FlutterSecureStorage _storage;

  SecureStorage(this._storage);

  @override
  Future<void> delete({required String key}) async {
    try {
      await _storage.delete(key: key);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String?> read({required String key}) async {
    try {
      return await _storage.read(key: key);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> write({required String key, required String? value}) async {
    try {
      await _storage.write(key: key, value: value);
    } catch (e) {
      rethrow;
    }
  }
}
