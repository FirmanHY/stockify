abstract interface class ITokenStorage {
  Future<void> storeToken(String accessToken);
}
