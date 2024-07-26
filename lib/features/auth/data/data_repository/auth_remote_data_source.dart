abstract class AuthRemoteDataSource {
  Future<void> signIn();
  Future<bool> signOut();
  Future<void> resetPassword();
}
