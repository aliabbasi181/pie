import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pie/colors.dart';
import 'package:pie/dashboard/dashboard.dart';
import 'package:pie/register/register.dart';
import 'package:pie/reset_password/reset_password.dart';
import 'package:pie/widgets/MyTextField.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // ignore: non_constant_identifier_names
  TextEditingController username_cont = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController password_cont = TextEditingController();

  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  void _doSomething() async {
    Timer(const Duration(seconds: 3), () {
      _btnController.success();
      Timer(const Duration(milliseconds: 500), () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const Dashboard(),
          ),
          (route) => false,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 253, 237, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 80),
                  child: Hero(
                    tag: 'myTag',
                    child: Image(
                      image: AssetImage('asset/images/logo.png'),
                      height: 300,
                      width: 300,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40, left: 40),
                  child: Column(
                    children: [
                      MyTextField(
                        controller: username_cont,
                        fieldLabel: "Username",
                        fieldIcon:
                            const Icon(CupertinoIcons.person_alt_circle_fill),
                        isPassword: false,
                        isEmail: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MyTextField(
                        controller: password_cont,
                        fieldLabel: "Password",
                        fieldIcon: const Icon(CupertinoIcons.lock_circle_fill),
                        isPassword: true,
                        isEmail: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RoundedLoadingButton(
                        color: MyColor().orange,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Login",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.login_rounded, color: Colors.black)
                          ],
                        ),
                        controller: _btnController,
                        onPressed: _doSomething,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                          textAlign: TextAlign.end,
                          text: TextSpan(
                            text: "Forgot Password?",
                            style: const TextStyle(
                                color: Colors.black, fontSize: 16),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgotPassword()),
                                );
                              },
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                          text: TextSpan(
                        text: "Don't have PIE account?",
                        style: TextStyle(
                          color: MyColor().darkOrange,
                        ),
                        children: [
                          TextSpan(
                              text: " Register",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Register()),
                                  );
                                },
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                        ],
                      )),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
