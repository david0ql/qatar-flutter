import 'package:flutter/material.dart';
import 'package:qatar/src/pages/pages.dart';

class MyRouter {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/splash': (p0) => const SplashPage(),
    '/home': (p0) => const HomePage()
  };
}
