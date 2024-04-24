import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_application_1/screens/landing.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LandingPage())),

);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/video.png',
                height: height * 0.4,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: height * .04,
            ),
            Center(child: Center(child: AnimatedTextKit(totalRepeatCount: 2, animatedTexts: [TyperAnimatedText('Video-Calling', textStyle: GoogleFonts.lemon(fontSize: height * 0.05))]))),
            SizedBox(
              height: height * .04,
            ),
            SpinKitChasingDots(
              color: Color.fromARGB(255, 92, 58, 7),
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}