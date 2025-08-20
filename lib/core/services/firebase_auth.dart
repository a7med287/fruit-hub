import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';

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

  Future<User> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn.instance.authenticate();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(idToken: googleAuth.idToken);

    // Once signed in, return the UserCredential
    return (await FirebaseAuth.instance.signInWithCredential(credential)).user !;
  }
}