import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/data/local/secure_storage/isecure_storage.dart';
import 'package:stockify/core/data/local/secure_storage/secure_storage.dart';
import 'package:stockify/core/data/local/secure_storage/secure_storage_const.dart';

final authProvider = ChangeNotifierProvider<AuthNotifier>((ref) {
  final secureStorage = ref.watch(secureStorageProvider);
  return AuthNotifier(secureStorage);
});

class AuthNotifier extends ChangeNotifier {
  final ISecureStorage _secureStorage;
  String? _token;
  bool _isChecking = true;

  AuthNotifier(this._secureStorage) {
    checkAuthStatus();
  }

  String? get token => _token;
  bool get isChecking => _isChecking;

  Future<void> checkAuthStatus() async {
    try {
      final storedToken = await _secureStorage.read(accessTokenKey);
      _token = storedToken;
    } catch (e) {
      _token = null;
    } finally {
      _isChecking = false;
      notifyListeners();
    }
  }

  Future<void> getAccessToken(String newToken) async {
    try {
      _token = newToken;
      notifyListeners();
    } catch (e) {
      throw Exception('Gagal menyimpan token');
    }
  }

  Future<void> logout() async {
    try {
      // Hapus token dari secure storage
      await _secureStorage.delete(accessTokenKey);
      _token = null;
      notifyListeners();
    } catch (e) {
      throw Exception('Gagal menghapus token');
    }
  }

  Future<bool> isTokenValid() async {
    if (_token == null) return false;

    return true;
  }
}
