import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';

class FirebaseAuthService{

  Future<User> createUserWithEmailAndPassword({required String email,required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
       throw CustomException(message: "Password is too week");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: "Email already exist");
      }else{
        throw CustomException(message: "error occurred, please try again later");
      }
    } catch (e) {
      throw CustomException(message: "error occurred, please try again later");
    }
  }

  Future<User> signInWithEmailAndPassword({required String email, required String password}) async{
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw CustomException(message: "Email not exist or wrong password!");
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: "Email not exist or wrong password!");
      }else if(e.code == "network-request-failed"){
        throw CustomException(message: "No Internet!");
      }else{
        throw CustomException(message: "error occurred, please try again later");
      }
    }
  }
}