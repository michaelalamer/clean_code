// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState {
  SignUpModel? get signUpModel => throw _privateConstructorUsedError;
  bool? get isSignUpSuccess => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Map<String, dynamic> get signUpForm => throw _privateConstructorUsedError;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {SignUpModel? signUpModel,
      bool? isSignUpSuccess,
      bool isLoading,
      String? errorMessage,
      Map<String, dynamic> signUpForm});

  $SignUpModelCopyWith<$Res>? get signUpModel;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpModel = freezed,
    Object? isSignUpSuccess = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? signUpForm = null,
  }) {
    return _then(_value.copyWith(
      signUpModel: freezed == signUpModel
          ? _value.signUpModel
          : signUpModel // ignore: cast_nullable_to_non_nullable
              as SignUpModel?,
      isSignUpSuccess: freezed == isSignUpSuccess
          ? _value.isSignUpSuccess
          : isSignUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      signUpForm: null == signUpForm
          ? _value.signUpForm
          : signUpForm // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignUpModelCopyWith<$Res>? get signUpModel {
    if (_value.signUpModel == null) {
      return null;
    }

    return $SignUpModelCopyWith<$Res>(_value.signUpModel!, (value) {
      return _then(_value.copyWith(signUpModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SignUpModel? signUpModel,
      bool? isSignUpSuccess,
      bool isLoading,
      String? errorMessage,
      Map<String, dynamic> signUpForm});

  @override
  $SignUpModelCopyWith<$Res>? get signUpModel;
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpModel = freezed,
    Object? isSignUpSuccess = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? signUpForm = null,
  }) {
    return _then(_$SignUpStateImpl(
      signUpModel: freezed == signUpModel
          ? _value.signUpModel
          : signUpModel // ignore: cast_nullable_to_non_nullable
              as SignUpModel?,
      isSignUpSuccess: freezed == isSignUpSuccess
          ? _value.isSignUpSuccess
          : isSignUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      signUpForm: null == signUpForm
          ? _value._signUpForm
          : signUpForm // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  const _$SignUpStateImpl(
      {this.signUpModel,
      this.isSignUpSuccess,
      this.isLoading = false,
      this.errorMessage,
      final Map<String, dynamic> signUpForm = const {}})
      : _signUpForm = signUpForm;

  @override
  final SignUpModel? signUpModel;
  @override
  final bool? isSignUpSuccess;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;
  final Map<String, dynamic> _signUpForm;
  @override
  @JsonKey()
  Map<String, dynamic> get signUpForm {
    if (_signUpForm is EqualUnmodifiableMapView) return _signUpForm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_signUpForm);
  }

  @override
  String toString() {
    return 'SignUpState(signUpModel: $signUpModel, isSignUpSuccess: $isSignUpSuccess, isLoading: $isLoading, errorMessage: $errorMessage, signUpForm: $signUpForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.signUpModel, signUpModel) ||
                other.signUpModel == signUpModel) &&
            (identical(other.isSignUpSuccess, isSignUpSuccess) ||
                other.isSignUpSuccess == isSignUpSuccess) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._signUpForm, _signUpForm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      signUpModel,
      isSignUpSuccess,
      isLoading,
      errorMessage,
      const DeepCollectionEquality().hash(_signUpForm));

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {final SignUpModel? signUpModel,
      final bool? isSignUpSuccess,
      final bool isLoading,
      final String? errorMessage,
      final Map<String, dynamic> signUpForm}) = _$SignUpStateImpl;

  @override
  SignUpModel? get signUpModel;
  @override
  bool? get isSignUpSuccess;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  Map<String, dynamic> get signUpForm;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
