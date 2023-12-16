class AuthState {}

final class AuthInitial extends AuthState {}

final class SingUpLoadingState extends AuthState {}

final class SingUpSucsessState extends AuthState {}

final class SingUpFailureState extends AuthState {
  final String errorMasage;
  SingUpFailureState({required this.errorMasage});
}

final class TermesAndConditionsUpDataState extends AuthState {}
final class ObscurePasswordTextUpdataState extends AuthState {}

