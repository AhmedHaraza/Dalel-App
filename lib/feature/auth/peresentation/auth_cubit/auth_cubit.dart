// ignore_for_file: unused_local_variable

import 'package:dalel_app/feature/auth/peresentation/auth_cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  late String? firstName;
  late String? lastName;
  late String? emailAddress;
  late String? password;

  void createUserWithEmailAndPassword() async {
    try {
      emit(SingUpLoadingState());
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
}
