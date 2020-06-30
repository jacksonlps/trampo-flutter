import 'package:firebase_auth/firebase_auth.dart';

class SigninRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<FirebaseUser> login({String email, String password}) async {
    final result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return result.user;
  }
}
