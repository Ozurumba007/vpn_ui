import 'package:food/screens/home/home_screen.dart';
import 'package:food/screens/home/splash_screen.dart';
import 'package:get/get.dart';

class RoutesClass {
  static String splashscreen = "/";

  static String getHomeRoute() => splashscreen;

  static List<GetPage> routes = [
    GetPage(page: () => const Splashscreen(), name: splashscreen)
  ];
}
