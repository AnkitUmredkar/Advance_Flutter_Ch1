import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../Provider/onBoardignProvidder.dart';
import 'homePage.dart';
import 'introScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingProvider onBoardingProviderFalse =
        Provider.of<OnBoardingProvider>(context, listen: false);
    Timer(const Duration(seconds: 6), () {
      if (onBoardingProviderFalse.isShow) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Screen1()));
      }
    });
    double height = MediaQuery.of(context).size.height * 0.4;
    double width = MediaQuery.of(context).size.height * 0.4;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/images/onBoardingScreen/logo.json',
              height: height * 0.53,
            ),
            Text('Design Your UI',
                style: TextStyle(
                    fontSize: width * 0.065,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'poppins')),
          ],
        ),
      ),
    );
  }
}
