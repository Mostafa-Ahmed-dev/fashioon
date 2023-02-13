import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../../../../Core/Utils/AuthService.dart';
import 'Auth_Repo.dart';

class AuthRepoImpl implements AuthRepo {
  AuthService authService;
  AuthRepoImpl(this.authService);

  @override
  Future SignUpWithEmail({required String email, required password}) async {
    try {
      await authService.signUpWithEmailService(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        debugPrint('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        debugPrint('The account already exists for that email.');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future LogInWithEmail(
      {required String email, required String password}) async {
    try {
      await authService.lognInWithEmailService(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        debugPrint('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        debugPrint('Wrong password provided for that user.');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  // @override
  // Future<UserCredential> LogInWithFaceBook() async {
  //   // final LoginResult loginResult = await FacebookAuth.instance.login();
  //   // final OAuthCredential facebookAuthCredential =
  //   //     FacebookAuthProvider.credential(loginResult.accessToken!.token);
  //   // return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  // }
}
