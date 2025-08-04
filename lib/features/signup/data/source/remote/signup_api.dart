import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:youcancode/core/data/remote/endpoint.dart';
import 'package:youcancode/core/data/remote/network_service.dart';
import 'package:youcancode/features/signup/data/dto/request/sign_up_request.dart';
import 'package:youcancode/features/signup/data/dto/response/sign_up_response.dart';

part 'signup_api.g.dart';

final signupApiProvider = Provider<SignupApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return SignupApi(dio);
});

@RestApi()
abstract class SignupApi {
  factory SignupApi(Dio dio) => _SignupApi(dio);

  @POST(signUpEndPoint)
  Future<SignUpResponse> signup(@Body() SignUpRequest body);
}
