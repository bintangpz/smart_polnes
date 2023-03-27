import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:smart_polnes/mainpage/dashboard.dart';

// const users = {
//   'mc.bintang@gmail.com': '12345',
// };

class LoginScreen extends StatelessWidget {
  const LoginScreen({required Key? key}) : super(key: key);
  Duration get loginTime => const Duration(milliseconds: 1000);

  Future<String?> authUser(LoginData data) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: data.name.toString(),
        password: data.password.toString(),
      );
      User? user = userCredential.user; // login berhasil
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // email tidak ditemukan
      } else if (e.code == 'wrong-password') {
        // password salah
      }
    }
  }

  Future<String?> daftarviaemail(SignupData data) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: data.name.toString(),
        password: data.password.toString(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      // if (!users.containsKey(name)) {
      //   return 'User not exists';
      // }
      return 'null';
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'SMART TI',
      logo: const AssetImage('images/logo_ti.png'),
      onLogin: authUser,
      onSignup: daftarviaemail,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Dashboard(key: key),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
