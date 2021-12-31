// ignore_for_file: file_names, must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  TextEditingController controller;
  bool isPassword = false;
  bool isEmail = false;
  String fieldLabel;
  Icon fieldIcon;
  MyTextField(
      {Key? key,
      required this.controller,
      required this.fieldIcon,
      required this.fieldLabel,
      required this.isEmail,
      required this.isPassword})
      : super(key: key);
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    if (widget.isPassword) {
      return TextField(
        controller: widget.controller,
        obscureText: _obscure,
        obscuringCharacter: "●",
        autocorrect: false,
        decoration: InputDecoration(
          prefixIcon: widget.fieldIcon,
          suffixIcon: InkWell(
            splashColor: Colors.white,
            onTap: () {
              setState(() {
                _obscure = !_obscure;
              });
            },
            child: const Icon(CupertinoIcons.eye_fill),
          ),
          label: Text(widget.fieldLabel),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      );
    } else {
      return TextField(
        controller: widget.controller,
        obscureText: widget.isPassword,
        autocorrect: false,
        decoration: InputDecoration(
          prefixIcon: widget.fieldIcon,
          label: Text(widget.fieldLabel),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      );
    }
  }
}

class MyTextArea extends StatelessWidget {
  // ignore: non_constant_identifier_names
  TextEditingController field_controller;
  String hint;
  // ignore: non_constant_identifier_names
  MyTextArea({Key? key, required this.field_controller, required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: field_controller,
      autocorrect: false,
      keyboardType: TextInputType.multiline,
      textInputAction: TextInputAction.newline,
      minLines: 1,
      maxLines: 7,
      style: const TextStyle(
          fontSize: 16, fontFamily: "Quicksand", fontWeight: FontWeight.bold),
      decoration: InputDecoration(hintText: hint),
    );
  }
}
