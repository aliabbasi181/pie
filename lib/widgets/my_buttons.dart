// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class GreenButton extends StatefulWidget {
  String text;
  GreenButton({Key? key, required this.text}) : super(key: key);

  @override
  _GreenButtonState createState() => _GreenButtonState();
}

class _GreenButtonState extends State<GreenButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      child: Text(widget.text),
      onPressed: () {},
      padding: const EdgeInsets.only(left: 20, right: 20),
    );
  }
}

class MyPrimaryButton extends StatefulWidget {
  final VoidCallback action;
  String text;
  MyPrimaryButton({Key? key, required this.action, required this.text})
      : super(key: key);

  @override
  _MyPrimaryButtonState createState() => _MyPrimaryButtonState();
}

class _MyPrimaryButtonState extends State<MyPrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.action,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0))),
          backgroundColor: MaterialStateProperty.all(MyColor().darkOrange),
        ),
        child: Text(
          widget.text,
          style: const TextStyle(fontSize: 18),
        ));
  }
}
