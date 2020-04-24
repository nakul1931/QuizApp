import 'package:firebase_auth/firebase_auth.dart';
import 'user.dart';

class AuthUser {
  FirebaseAuth _auth = FirebaseAuth.instance;
  User _firebaseUserr(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Future signIn(String email, String password) async {
    try {
      AuthResult authResultSignIn = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser _firebaseUser = authResultSignIn.user;
      return _firebaseUserr(_firebaseUser);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signUp(String email, String password) async {
    try {
      AuthResult authResultSignUp = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser _firebaseUser = authResultSignUp.user;
      return _firebaseUserr(_firebaseUser);
    } catch (e) {
      print(e.toString());
    }
  }

  Future logout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
