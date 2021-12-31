import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pie/colors.dart';
import 'package:pie/widgets/MyTextField.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  // ignore: non_constant_identifier_names
  TextEditingController password_cont = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController conf_password_cont = TextEditingController();
  DateTime birthDate = DateTime.now();
  String birthDateInString = "";

  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  void _doSomething() async {
    Timer(const Duration(seconds: 3), () {
      _btnController.success();
      Timer(const Duration(milliseconds: 500), () {
        Navigator.pop(context);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor().backgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: MyColor().backgroundColor,
        title: const Text(
          "Reset Your Password",
          style: TextStyle(color: Colors.black, fontSize: 26),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 40, left: 40, top: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 50),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/images/logo.png'),
                        fit: BoxFit.fitHeight),
                  ),
                ),
              ),
              MyTextField(
                controller: password_cont,
                fieldLabel: "New Password",
                fieldIcon: const Icon(CupertinoIcons.lock_circle_fill),
                isPassword: true,
                isEmail: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: password_cont,
                fieldLabel: "Confirm New Password",
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
                      "Submit",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(CupertinoIcons.arrow_right, color: Colors.black)
                  ],
                ),
                controller: _btnController,
                onPressed: _doSomething,
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(
                text: "Back to ",
                style: TextStyle(
                  color: MyColor().darkOrange,
                ),
                children: [
                  TextSpan(
                      text: "Login",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        },
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16))
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
