import 'package:dartz/dartz.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Future,UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
  );

}
