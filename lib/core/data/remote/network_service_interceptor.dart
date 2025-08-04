import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youcancode/common/http_status/status_code.dart';
import 'package:youcancode/core/data/remote/token/itoken_service.dart';
import 'package:youcancode/core/data/remote/token/token_service.dart';

final networkServiceInterceptorProvider =
    Provider.family<NetworkServiceInterceptor, Dio>((ref, dio) {
      final tokenService = ref.watch(tokenServiceProvider(dio));
      return NetworkServiceInterceptor(tokenService, dio);
    });

final class NetworkServiceInterceptor extends Interceptor {
  final ITokenService _tokenService;
  final Dio _dio;

  NetworkServiceInterceptor(this._tokenService, this._dio);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await _tokenService.getAccessToken();
    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == unauthorized) {
      final token = await _tokenService.getRefreshToken();
      try {
        final refreshTokenResponse = await _tokenService.refreshToken(token);
        final accessToken = refreshTokenResponse.data.accessToken;
        final refreshToken = refreshTokenResponse.data.refreshToken;

        await _tokenService.saveTokens(accessToken, refreshToken);

        final requestOptions = err.requestOptions;
        requestOptions.headers['Authorization'] = 'Bearer $accessToken';

        return handler.resolve(await _dio.fetch(requestOptions));
      } on DioException catch (e) {
        if (e.response?.statusCode == refreshTokenExpired) {
          await _tokenService.deleteTokens();
          //err.response?.statusCode = refreshTokenExpired;
        }
        return handler.next(err);
      }
    }
    return handler.next(err);
  }
}
