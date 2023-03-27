import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:smart_polnes/mainpage/dashboard.dart';

// const users = {
//   'mc.bintang@gmail.com': '12345',
// };
User? user;

class LoginScreen extends StatelessWidget {
  const LoginScreen({required Key? key}) : super(key: key);
  Duration get loginTime => const Duration(milliseconds: 1000);

  Future<String?> authUser(LoginData data) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: data.name.toString(),
          password: data.password.toString(),
      );
      user = userCredential.user;
      if (user?.emailVerified ?? false) {
      // user telah melakukan verifikasi email, lanjutkan ke halaman berikutnya
      return null;
    } else {
      // user belum melakukan verifikasi email, tampilkan pesan kesalahan
      return 'Email belum diverifikasi';
    }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        debugPrint('User tidak ditemukan');
        return 'User tidak ditemukan';
      } else if (e.code == 'wrong-password') {
        debugPrint('Password yang dimasukkan salah');
        return 'Password yang dimasukkan salah';
      } else {
        //print(e);
        return e.toString();
      }
    }
  }

   Future<String?> daftarviaemail(SignupData data) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: data.name.toString(),
        password: data.password.toString(),
      );
    User user = userCredential.user!;
    await user.sendEmailVerification();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen(key: key)),
    );
    return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        debugPrint('The password provided is too weak.');
        return 'Password terlalu lemah';
      } else if (e.code == 'email-already-in-use') {
        debugPrint('The account already exists for that email.');
        return 'Email sudah terdaftar';
      } else {
        //print(e);
        return e.toString();
      }
    } catch (e) {
      //print(e);
      return e.toString();
    }
  }

  Future<String?> _resetPassword(String name) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: name);
    return null;
  } catch (e) {
    debugPrint('Error kirim Reset Password ke: $e');
    return 'Email Tidak Terdaftar';
  }
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
      onRecoverPassword: _resetPassword,
    );
  }
}
