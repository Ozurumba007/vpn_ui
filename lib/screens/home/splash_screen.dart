import 'package:flutter/material.dart';
import 'package:food/screens/home/home_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
    return Scaffold(
      body: Center(
        child: Image.asset(
          "leo_yrn.png",
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
