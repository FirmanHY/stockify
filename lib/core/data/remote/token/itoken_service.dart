abstract interface class ITokenService {
  Future<String?> getAccessToken();

  Future<void> saveToken(String accessToken, String refreshToken);

  Future<void> clearToken();
}
