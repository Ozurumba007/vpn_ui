import 'package:flutter/material.dart';
import 'package:food/constants.dart';
import 'package:food/screens/home/home_screen.dart';
import 'package:get/get.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({Key? key}) : super(key: key);

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
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
          "Change Language",
          style: TextStyle(color: secndryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    decoration: BoxDecoration(
                        color: kPrimaryClr.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: kPrimaryClr)),
                    child: Column(children: [
                      Image.asset(
                        "Usa_flag.jpg",
                        height: 60,
                        width: 60,
                      ),
                      const Text(
                        "English",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    decoration: BoxDecoration(
                        color: kPrimaryClr.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: kPrimaryClr)),
                    child: Column(children: [
                      Image.asset(
                        "azerbaijan_flag.jpg",
                        height: 60,
                        width: 60,
                      ),
                      const Text(
                        "Arabic",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    decoration: BoxDecoration(
                        color: kPrimaryClr.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: kPrimaryClr)),
                    child: Column(children: [
                      Image.asset(
                        "india_flag.jpg",
                        height: 60,
                        width: 60,
                      ),
                      const Text(
                        "Hindi",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
