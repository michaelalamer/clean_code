import 'package:youcancode/core/data/remote/dtos/refresh_token_response.dart';

abstract interface class ITokenService {
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> saveTokens(String accessToken, String refreshToken);
  Future<void> deleteTokens();
  Future<RefreshTokenResponse> refreshToken(String? refreshToken);
}
