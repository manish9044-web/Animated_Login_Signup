import 'package:animatedloginsignup/login_screen.dart';
import 'package:animatedloginsignup/signup_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool showLogin = true;

  void toggleAuth() {
    setState(() {
      showLogin =!showLogin;
    });
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      child: showLogin ? Loginscreen(
        key: ValueKey('login'),
        onSignUpTap: toggleAuth, ) : 
        SignUpscreen(
          key: ValueKey('signup'),
          onLoginTap: toggleAuth)
        );
  }
}