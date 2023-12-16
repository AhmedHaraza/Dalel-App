// ignore_for_file: unused_local_variable

import 'package:dalel_app/feature/auth/peresentation/auth_cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  bool obscurePasswordTextValue = false;
  String? password;
  bool? termesAndConditionsCheckBoxValues = false;
  final GlobalKey<FormState> singUpFormKey = GlobalKey();

  void createUserWithEmailAndPassword() async {
    emit(SingUpLoadingState());
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SingUpSucsessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SingUpFailureState(
            errorMasage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SingUpFailureState(
            errorMasage: 'The account already exists for that email.'));
      }
    } catch (error) {
      emit(SingUpFailureState(errorMasage: error.toString()));
    }
  }

  void updataTermesAndConditionsCheckBox({required newValue}) {
    termesAndConditionsCheckBoxValues = newValue;
    emit(TermesAndConditionsUpDataState());
  }

  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdataState());
  }
}
