import 'package:flutter/material.dart';
import 'package:food/routes/routes.dart';
import 'package:food/screens/home/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: '7STAR VPN',
      initialRoute: RoutesClass.getHomeRoute(),
      getPages: RoutesClass.routes,
    );
  }
}
