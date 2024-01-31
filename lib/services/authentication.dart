import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signAnonymosly() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
