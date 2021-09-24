import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

import 'onboaring.dart';

class Splash extends StatelessWidget {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(
  //       Duration(seconds: 5),
  //           () => Navigator.of(context).pushReplacement(MaterialPageRoute(
  //           builder: (BuildContext context) => OnBoarding())));
  // }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        // systemNavigationBarColor: Colors.w, // navigation bar color
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark
        // status bar color
        ));
    return Scaffold(
      body: AnimatedSplashScreen(
         // duration: 3000,
          splash: 'assets/images/splash_image.png',
          splashIconSize: 180,
          nextScreen: OnBoarding(),
          splashTransition: SplashTransition.sizeTransition,
          pageTransitionType: PageTransitionType.leftToRight,
          backgroundColor: Colors.white),
    );
  }
}
