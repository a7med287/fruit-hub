import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';
import 'package:fruit_hub/core/errors/failures.dart';
import 'package:fruit_hub/core/services/database_service.dart';
import 'package:fruit_hub/core/services/firebase_auth.dart';
import 'package:fruit_hub/core/utils/backend_endpoints.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DataBaseServices dataBaseServices;

  AuthRepoImpl({
    required this.dataBaseServices,
    required this.firebaseAuthService,
  });

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var userEntity = UserEntity(uId: user.uid, name: name, email: email);

      /// add user to fireStore
      await addUser(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return left(ServerFailure(message: e.message));
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return left(
        ServerFailure(message: "error occurred, please try again later"),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      var userEntity = await getUserData(uId: user.uid);
      return right(userEntity);
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    } catch (e) {
      log(e.toString());
      return left(
        ServerFailure(message: "error occurred, please try again later"),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      var userEntity = UserModel.fromFireBaseAuth(user: user);
      var isUSerExist = await dataBaseServices.checkIdDataExist(
        path: BackEndEndPoints.getUserPath,
        documentId: user.uid,
      );
      if(isUSerExist){
        await getUserData(uId: user.uid);
      }else{
        await addUser(user: userEntity);
      }
      return right(userEntity);
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      log("e is $e");
      return left(
        ServerFailure(message: "error occurred, please try again later"),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();

      var userEntity = UserModel.fromFireBaseAuth(user: user);
      var isUSerExist = await dataBaseServices.checkIdDataExist(
        path: BackEndEndPoints.getUserPath,
        documentId: user.uid,
      );
      if(isUSerExist){
        await getUserData(uId: user.uid);
      }else{
        await addUser(user: userEntity);
      }
      return right(userEntity);
    } catch (e) {
      if (user != null) {
        firebaseAuthService.deleteUser();
      }
      log("e is $e");
      return left(
        ServerFailure(message: "error occurred, please try again later"),
      );
    }
  }

  @override
  Future addUser({required UserEntity user}) async {
    await dataBaseServices.addUser(
      path: BackEndEndPoints.addUserPath,
      data: user.toMap(),
      uId: user.uId,
    );
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    var data = await dataBaseServices.getUserData(
      path: BackEndEndPoints.getUserPath,
      uid: uId,
    );
    return UserModel.fromJson(json: data);
  }
}
