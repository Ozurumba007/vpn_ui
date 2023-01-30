import 'package:flutter/material.dart';
import 'package:food/constants.dart';
import 'package:get/get.dart';

class RateUs extends StatefulWidget {
  const RateUs({Key? key}) : super(key: key);

  @override
  State<RateUs> createState() => _RateUsState();
}

class _RateUsState extends State<RateUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: secndryColor),
        actionsIconTheme: const IconThemeData(color: secndryColor),
        title: const Text(
          "Rate Us",
          style: TextStyle(color: secndryColor),
        ),
      ),
    );
  }
}
