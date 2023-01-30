import 'package:flutter/material.dart';
import 'package:food/constants.dart';
import 'package:get/get.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  var subTitleStyle = const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    height: 2,
  );
  var longAboutText = const TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 17,
  );
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
          "About ",
          style: TextStyle(color: secndryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "leo_yrn.png",
                height: 100,
                width: 100,
              ),
            ),
            Column(
              children: [
                Text(
                  "Terms of Service",
                  style: subTitleStyle,
                ),
                Text(
                  "Privacy Policy",
                  style: subTitleStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "7Star VPN - the best way to stay safe while accessing the internet.",
                      style: TextStyle(
                        height: 4,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "FEATURES",
                      style: TextStyle(
                        height: 3,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 60,
                  child: Text(
                    "(1).  7Star protects your public wifi connection from hackers trying to steal your personal data, Passwords and financial information. Your data will be encrypted and safe.",
                    style: longAboutText,
                  ),
                ),
                Container(
                  height: 50,
                  child: Text(
                    "(2).  Improve your online privacy. Malicious ISP won't be able to track or sell your personal information.",
                    style: longAboutText,
                  ),
                ),
                Container(
                  height: 50,
                  child: Text(
                    "(3).  Our service hides your IP and Location from hackers. Get maximum protection you ever wanted.",
                    style: longAboutText,
                  ),
                ),
                Container(
                  height: 50,
                  child: Text(
                    "(4).  Easily switch between multiple virtual locations. We have endpoints in the US, Netherlands, and Singapore.",
                    style: longAboutText,
                  ),
                ),
                Text(
                  "(5).  7Star provides truly free, unlimited and protected surfing. Get any content you want.",
                  style: longAboutText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
