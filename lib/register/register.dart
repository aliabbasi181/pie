import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:pie/colors.dart';
import 'package:pie/widgets/MyTextField.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // ignore: non_constant_identifier_names
  TextEditingController username_cont = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController password_cont = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController f_name_cont = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController l_name_cont = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController email_cont = TextEditingController();
  DateTime birthDate = DateTime.now();
  String birthDateInString = "";
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  void _doSomething() async {
    Timer(const Duration(seconds: 3), () {
      _btnController.success();
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
          "Create Account",
          style: TextStyle(color: Colors.black, fontSize: 26),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 40, left: 40, top: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 10),
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
                controller: f_name_cont,
                fieldLabel: "First Name",
                fieldIcon: const Icon(Icons.person),
                isPassword: false,
                isEmail: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: l_name_cont,
                fieldLabel: "Last Name",
                fieldIcon: const Icon(Icons.person),
                isPassword: false,
                isEmail: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: email_cont,
                fieldLabel: "Email",
                fieldIcon: const Icon(Icons.email),
                isPassword: false,
                isEmail: true,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: username_cont,
                fieldLabel: "Username",
                fieldIcon: const Icon(CupertinoIcons.person_alt_circle_fill),
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
              GestureDetector(
                  child: Row(
                    children: const [
                      Icon(CupertinoIcons.calendar_circle_fill),
                      Text(" Tap Select your Date of Birth?",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  onTap: () async {
                    DatePicker.showDatePicker(context,
                        showTitleActions: true,
                        minTime: DateTime(1900, 3, 5),
                        maxTime: DateTime(2016, 12, 31), onChanged: (date) {
                      birthDateInString = date.toString();
                    }, onConfirm: (date) {
                      birthDateInString =
                          '${date.day}/${date.month}/${date.year}';
                      setState(() {});
                    }, currentTime: DateTime.now(), locale: LocaleType.en);
                  }),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      birthDateInString,
                      style: const TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
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
                      "Register",
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
            ],
          ),
        ),
      ),
    );
  }
}
