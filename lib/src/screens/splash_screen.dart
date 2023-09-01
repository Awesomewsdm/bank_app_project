import 'dart:async';
import 'package:bank_app/src/constants/app_routes.dart';
import 'package:bank_app/src/constants/colors.dart';
import 'package:bank_app/src/constants/image_strings.dart';
import 'package:bank_app/src/constants/text.dart';
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
    startTimer();
  }

  void startTimer() {
    Timer(const Duration(seconds: 2), () {
      router.go(pHome2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: tWhiteColor,
        child: Center(
          child: Hero(
            tag: tHerotag,
            child: Image.asset(
              tSplashLoading,
              height: 80,
              width: 50,
            ),
          ),
        ));
  }
}
