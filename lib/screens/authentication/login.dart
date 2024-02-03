import 'package:authentication_mobile_application/services/authentication.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("SIGN IN"),
      ),
      body: ElevatedButton(
        child: const Text("Sign In Anonymously"),
        onPressed: () async {
          await _auth.signInAnonymously();
          dynamic resulut = await _auth.signInAnonymously();
          if (resulut == Null) {
            print("Error sign in Anonymously");
          } else {
            print("Sign in Anonymously");
            print(resulut);
          }
        },
      ),
    );
  }
}
