import "dart:async";

import 'package:connect/OnboardingScreens/onboardingScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Onbording()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: SizedBox(
                width: 300,
                height: 300,
                child: Image.asset("assets/connect_gold_nobck.png"))
            // Image.asset('assets/connectLogoPng.png'),
            ));
  }
}
