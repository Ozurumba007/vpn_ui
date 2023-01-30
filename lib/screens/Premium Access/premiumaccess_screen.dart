import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food/constants.dart';
import 'package:food/screens/Sign%20In_screen/Sign_in_screen.dart';
import 'package:get/get.dart';

class PremiumAccess extends StatefulWidget {
  PremiumAccess({Key? key}) : super(key: key);

  @override
  State<PremiumAccess> createState() => _PremiumAccessState();
}

class _PremiumAccessState extends State<PremiumAccess> {
  var titleStyle = const TextStyle(
    fontSize: 25.0,
  );
  var subTitleStyle = const TextStyle(
    fontSize: 15.0,
    // backgroundColor: Colors.blue,
    fontWeight: FontWeight.w300,
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
          "Premium Features",
          style: TextStyle(color: kPrimaryClr),
        ),
      ),
      body: Column(children: [
        Card(
          color: bgColor,
          child: Row(
            children: <Widget>[
              Container(
                color: Color.fromARGB(255, 207, 188, 11),
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: const Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Premium Location",
                    style: titleStyle,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "Access the internet via additional Premuim location",
                    style: subTitleStyle,
                  )
                ],
              ),
            ],
          ),
        ),
        Card(
          color: bgColor,
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.lightGreen,
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: const Icon(
                  Icons.speed,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Turbo Speed",
                    style: titleStyle,
                  ),
                  Text(
                    "Premuim users enjoy dedicated traffic lanes.",
                    style: subTitleStyle,
                  )
                ],
              ),
            ],
          ),
        ),
        Card(
          color: bgColor,
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.lightBlue,
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: const Icon(
                  Icons.dataset_linked,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Premuim Servers",
                    style: titleStyle,
                  ),
                  Text(
                    "Our best-in-class servers guarantee top performance",
                    style: subTitleStyle,
                  )
                ],
              ),
            ],
          ),
        ),
        Card(
          color: bgColor,
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.redAccent,
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: const Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Priority Support",
                    style: titleStyle,
                  ),
                  Text(
                    "If something goes wrong, helping you is our priority",
                    style: subTitleStyle,
                  )
                ],
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryClr,
                padding: const EdgeInsets.all(16.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(14.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text("Watch an Ad to Access Premuim"),
            ),
          ),
        ),
      ]),
    );
  }
}
