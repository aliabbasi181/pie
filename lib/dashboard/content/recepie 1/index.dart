// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../colors.dart';

class RecepieOneMain extends StatelessWidget {
  Widget list;
  RecepieOneMain(this.list, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.blueGrey[50],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2.0, color: MyColor().darkOrange),
        ),
        child: list);
  }
}
