import 'package:flutter/material.dart';
import 'package:food/constants.dart';
import 'package:food/screens/About%20us/about_us_screen.dart';
import 'package:food/screens/Change%20Language/change_language_screen.dart';
import 'package:food/screens/Premium%20Access/premiumaccess_screen.dart';
import 'package:food/screens/Rate%20Us/rateus_screen.dart';
import 'package:food/screens/Server/server_screen.dart';
import 'package:food/screens/Sign%20In_screen/Sign_in_screen.dart';
import 'package:food/screens/help_screen/help.dart';
import 'package:get/get.dart';

import 'package:rating_dialog/rating_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isactive = false;
  final _dialog = RatingDialog(
    initialRating: 1.0,
    // your app's name?
    title: const Text(
      'RATE 7STAR',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    // encourage your user to leave a high rating?
    message: const Text(
      'Tap a star to set your rating. Add more description here if you want.',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 15),
    ),
    // your app's logo?
    image: Container(
      child: Image.asset("leo_yrn.png"),
      height: 100,
      width: 100,
    ),
    submitButtonText: 'Submit',
    commentHint: 'Set your custom comment hint',
    onCancelled: () => print('cancelled'),
    onSubmitted: (response) {
      print('rating: ${response.rating}, comment: ${response.comment}');

      // ignore: todo
      // TODO: add your own logic
      if (response.rating < 3.0) {
        // send their comments to your email or anywhere you wish
        // ask the user to contact you instead of leaving a bad review
      } else {
        // _rateAndReviewApp();
      }
    },
  );
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: secndryColor),
        actionsIconTheme: const IconThemeData(color: secndryColor),
        title: const Text(
          "7STAR VPN",
          style: TextStyle(color: secndryColor),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpScreen()));
              },
              icon: const Icon(
                Icons.info_outline,
              ))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  "7STAR VPN",
                  style: TextStyle(
                      color: kPrimaryClr,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChangeLanguage()));
              },
              leading: const Icon(
                Icons.translate,
                color: Colors.blue,
              ),
              title: const Text(
                "Change Language",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PremiumAccess()));
              },
              leading: const Icon(
                Icons.lock,
                color: Colors.blue,
              ),
              title: const Text(
                "Watch Ad to Access Premium",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            ListTile(
              onTap: () {
                //  Navigator.push(
                //   context, MaterialPageRoute(builder: (context) => RateUs()));
                showDialog(context: context, builder: (context) => _dialog);
              },
              leading: const Icon(
                Icons.rate_review,
                color: Colors.blue,
              ),
              title: const Text(
                "Rate Us",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUs()));
              },
              leading: const Icon(
                Icons.all_inbox_outlined,
                color: Colors.blue,
              ),
              title: const Text(
                "About ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            Spacer(),
            const Text(
              "V 1.0.0",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: _size.height * 0.1,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isactive = !isactive;
                  });
                },
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(150),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: kPrimaryClr,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: const BoxDecoration(
                        color: kWhiteClr,
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.power_settings_new,
                            size: 30,
                            color: isactive == true ? kPrimaryClr : Colors.grey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            isactive == true ? "STOP" : "START",
                            style: TextStyle(
                              color:
                                  isactive == true ? Colors.black : Colors.grey,
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.1,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: isactive == true
                      ? kPrimaryClr
                      : kPrimaryClr.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  isactive == true ? "Connected" : "Not Connected",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: secndryColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => ServerScreen())));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: kWhiteClr,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Select Location",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: secndryColor),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: secndryColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: kPrimaryClr.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_downward,
                      color: kPrimaryClr,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Download",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: secndryColor),
                      ),
                      Text(
                        isactive == true ? "128kb" : "0.0kb",
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: kPrimaryClr.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_upward,
                      color: kPrimaryClr,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Upload",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: secndryColor),
                      ),
                      Text(
                        isactive == true ? "98kb" : "0.0kb",
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
