import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:youcancode/common/exception/failure.dart';
import 'package:youcancode/features/signup/application/isign_up_service.dart';
import 'package:youcancode/features/signup/data/dto/request/sign_up_request.dart';
import 'package:youcancode/features/signup/data/dto/response/sign_up_response.dart';
import 'package:youcancode/features/signup/data/repository/isign_up_repository.dart';
import 'package:youcancode/features/signup/data/repository/sign_up_repository.dart';
import 'package:youcancode/features/signup/domain/mapper/isign_up_model_mapper.dart';
import 'package:youcancode/features/signup/domain/model/sign_up_model.dart';

final signUpServiceProvider = Provider<ISignUpService>((ref) {
  final signUpRepository = ref.watch(signUpRepositoryProvider);
  return SignUpService(signUpRepository);
});

final class SignUpService implements ISignUpService, ISignUpModelMapper {
  SignUpService(this._signUpRepository);

  final ISignUpRepository _signUpRepository;

  @override
  Future<Result<SignUpModel, Failure>> signup(SignUpRequest request) async {
    try {
      final response = await _signUpRepository.signup(request);
      return Success(mapToModel(response));
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  SignUpModel mapToModel(SignUpResponse response) {
    return SignUpModel(
      name: response.data.user.name,
      email: response.data.user.email,
      isSignUpSuccess: true,
    );
  }
}
