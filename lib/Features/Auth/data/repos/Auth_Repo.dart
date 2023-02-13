abstract class AuthRepo {
  Future SignUpWithEmail({required String email, required String password});
  void LogInWithEmail({required String email, required String password});
  // Future<UserCredential> LogInWithFaceBook();
}
