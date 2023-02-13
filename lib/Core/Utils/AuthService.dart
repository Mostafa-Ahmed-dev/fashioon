import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  Future signUpWithEmailService(
      {required String email, required password}) async {
    final credential = FirebaseAuth.instance;
    await credential.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future lognInWithEmailService(
      {required String email, required password}) async {
    final credential = FirebaseAuth.instance;
    await credential.signInWithEmailAndPassword(
        email: email, password: password);
  }
}
