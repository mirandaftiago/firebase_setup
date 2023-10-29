import 'package:firebase_auth/firebase_auth.dart';

class FireBaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      if (e is FirebaseAuthException) {
        print('Firebase authentication error: ${e.code}');
      } else {
        print('Some error occurred');
      }
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      if (e is FirebaseAuthException) {
        print('Firebase authentication error: ${e.code}');
      } else {
        print('Some error occurred');
      }
    }
    return null;
  }
}
