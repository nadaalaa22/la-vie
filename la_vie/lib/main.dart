import 'package:flutter/material.dart';

import 'layout/home_layout/home_layout.dart';
import 'layout/uesr_login/user_login_screen.dart';
import 'modules/login/login_screen.dart';
import 'modules/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
