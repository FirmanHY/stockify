import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:stockify/core/data/local/secure_storage/isecure_storage.dart';
import 'package:stockify/core/data/local/secure_storage/secure_storage.dart';
import 'package:stockify/core/data/local/secure_storage/secure_storage_const.dart';
import 'package:stockify/core/enums/role.dart';

final authProvider = ChangeNotifierProvider<AuthNotifier>((ref) {
  final secureStorage = ref.watch(secureStorageProvider);
  return AuthNotifier(secureStorage);
});

class AuthNotifier extends ChangeNotifier {
  final ISecureStorage _secureStorage;
  String? _token;
  bool _isChecking = true;
  String? _userId;
  Role _role = Role.unknown;

  AuthNotifier(this._secureStorage) {
    checkAuthStatus();
  }

  String? get token => _token;
  bool get isChecking => _isChecking;
  String? get userId => _userId;
  Role get role => _role;

  Future<void> checkAuthStatus() async {
    try {
      final storedToken = await _secureStorage.read(accessTokenKey);
      if (storedToken != null) {
        _decodeAndSetToken(storedToken);
      }
    } catch (e) {
      _clearAuthData();
    } finally {
      _isChecking = false;
      notifyListeners();
    }
  }

  Future<void> getAccessToken(String newToken) async {
    try {
      _token = newToken;
      _decodeAndSetToken(newToken);
      notifyListeners();
    } catch (e) {
      throw Exception('Gagal menyimpan token');
    }
  }

  void _decodeAndSetToken(String token) {
    try {
      final decoded = JwtDecoder.decode(token);
      _token = token;
      _userId = decoded['userId']?.toString();
      _role = Role.fromString(decoded['role']?.toString() ?? '');
    } catch (e) {
      _clearAuthData();
      throw Exception('Invalid token format');
    }
  }

  Future<void> logout() async {
    try {
      // Hapus token dari secure storage
      await _secureStorage.delete(accessTokenKey);
      _clearAuthData();
      notifyListeners();
    } catch (e) {
      throw Exception('Gagal menghapus token');
    }
  }

  void _clearAuthData() {
    _token = null;
    _userId = null;
    _role = Role.unknown;
  }

  Future<bool> isTokenValid() async {
    if (_token == null) return false;

    return true;
  }
}
