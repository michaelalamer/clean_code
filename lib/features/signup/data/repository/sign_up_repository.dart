import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youcancode/common/exception/failure.dart';
import 'package:youcancode/common/extension/string_hardcoded.dart';
import 'package:youcancode/features/signup/data/dto/request/sign_up_request.dart';
import 'package:youcancode/features/signup/data/dto/response/sign_up_response.dart';
import 'package:youcancode/features/signup/data/repository/isign_up_repository.dart';
import 'package:youcancode/features/signup/data/source/remote/signup_api.dart';
import 'package:youcancode/common/mixin/dio_exception_mapper.dart';

final signUpRepositoryProvider = Provider<ISignUpRepository>((ref) {
  final signupApi = ref.watch(signupApiProvider);
  return SignUpRepository(signupApi);
});

final class SignUpRepository
    with DioExceptionMapper
    implements ISignUpRepository {
  final SignupApi _signupApi;
  SignUpRepository(this._signupApi);

  @override
  Future<SignUpResponse> signup(SignUpRequest request) async {
    try {
      final response = await _signupApi.signup(request);
      return response;
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message:
            "An unexpected error occurred. Please try again later".hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }
}
