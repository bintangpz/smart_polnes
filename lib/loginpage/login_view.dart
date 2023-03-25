import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:smart_polnes/mainpage/dashboard.dart';
//import 'package:dashboard_screen.dart';

const users = const {
  'mc.bintang@gmail.com': '12345',
};

class LoginScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 1000);

  //FirebaseAuth auth = FirebaseAuth.instance;

  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String?> DaftarViaEmail(SignupData data) async {
    // try {
    //   await FirebaseAuth.instance.createUserWithEmailAndPassword(
    //     email: data.name.toString(),
    //     password: data.password.toString(),
    //   );
    // } on FirebaseAuthException catch (e) {
    //   if (e.code == 'weak-password') {
    //     print('The password provided is too weak.');
    //   } else if (e.code == 'email-already-in-use') {
    //     print('The account already exists for that email.');
    //   }
    // } catch (e) {
    //   print(e);
    // }
  }
  // Future<String?> _signupUser(SignupData data) {
  //   debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
  //   return Future.delayed(loginTime).then((_) {
  //     return null;
  //   });
  // }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return 'null';
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'SMART TI',
      logo: AssetImage('images/logo_ti.png'),
      onLogin: _authUser,
      onSignup: DaftarViaEmail,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Dashboard(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
