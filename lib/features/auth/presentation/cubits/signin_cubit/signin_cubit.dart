import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import '../../../domain/repos/auth_repo.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());

  final AuthRepo authRepo;

  Future<void> signinWithEmailAndPassword(String email, String password) async {
    emit(SigninLoading());

    var result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) {
        emit(SigninFailure(message: failure.message));
      },
      (userEntity) {
        emit(SigninSuccess(userEntity: userEntity));
      },
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SigninLoading());
    var result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) {
        emit(SigninFailure(message: failure.message));
      },
      (userEntity) {
        emit(SigninSuccess(userEntity: userEntity));
      },
    );
  }

  Future<void> signInWithFacebook() async {
    emit(SigninLoading());
    var result = await authRepo.signInWithFacebook();
    result.fold(
      (failure) {
        emit(SigninFailure(message: failure.message));
      },
      (userEntity) {
        emit(SigninSuccess(userEntity: userEntity));
      },
    );
  }
}
