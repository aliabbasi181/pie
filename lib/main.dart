import 'package:flutter/material.dart';
import 'package:pie/intro_screen.dart';
import 'package:pie/global.dart' as global;
import 'login/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: global.GlobalAsset.isAppOpenFirstTime
        ? const IntroScreen()
        : const Login(),
  ));
}
