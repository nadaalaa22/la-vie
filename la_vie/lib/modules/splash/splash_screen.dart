import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';

import '../../layout/uesr_login/login.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: 'assets/images/logo.png',
        nextScreen:MainLogin(),
        splashTransition:  SplashTransition.slideTransition,
        duration: 3000,
    );
  }
}

