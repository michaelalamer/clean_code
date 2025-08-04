import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youcancode/features/signup/application/sign_up_service.dart';
import 'package:youcancode/features/signup/data/dto/request/sign_up_request.dart';
import 'package:youcancode/features/signup/presentation/state/sign_up_state.dart';

final signUpControllerProvider =
    AutoDisposeNotifierProvider<SignUpController, SignUpState>(
      SignUpController.new,
    );

class SignUpController extends AutoDisposeNotifier<SignUpState> {
  @override
  SignUpState build() {
    return const SignUpState();
  }

  Future<void> signUp() async {
    try {
      state = state.copyWith(
        isLoading: true,
        isSignUpSuccess: null,
        errorMessage: null,
      );

      final data = SignUpRequest(
        name: state.signUpForm['name'] as String,
        email: state.signUpForm['email'] as String,
        password: state.signUpForm['password'] as String,
        passwordConfirm: state.signUpForm['passwordConfirm'] as String,
      );
      final result = await ref.read(signUpServiceProvider).signup(data);
      result.when(
        (success) {
          state = state.copyWith(
            signUpModel: success,
            isLoading: false,
            isSignUpSuccess: success.isSignUpSuccess,
          );
        },
        (error) {
          state = state.copyWith(
            errorMessage: error.message,
            isLoading: false,
            isSignUpSuccess: null,
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        errorMessage: e.toString(),
        isLoading: false,
        isSignUpSuccess: null,
      );
    }
  }

  void setFormData(Map<String, dynamic> formData) {
    state = state.copyWith(signUpForm: formData);
  }
}
