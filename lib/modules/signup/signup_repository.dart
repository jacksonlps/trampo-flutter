import 'package:firebase_auth/firebase_auth.dart';

class SignupRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<FirebaseUser> register({String email, String password}) async {
    final result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return result.user;
  }
}
