import 'package:brew_crew/screens/authenticate/register.dart';
import 'package:brew_crew/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIN = true;
  void toggleView() {
    setState(() {
      showSignIN = !showSignIN;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showSignIN
        ? SignIn(toggleView: toggleView)
        : Register(toggleView: toggleView);
  }
}
