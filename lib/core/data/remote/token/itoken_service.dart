import 'package:youcancode/common/dtos/refresh_token_response.dart';

abstract interface class ITokenService {
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> saveTokens(String accessToken, String refreshToken);
  Future<void> deleteTokens();
  Future<RefreshTokenResponse> refreshToken(String? refreshToken);
}
