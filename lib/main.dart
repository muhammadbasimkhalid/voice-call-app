import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Videocallscreen.dart';
import 'package:flutter_application_1/screens/landing.dart';
import 'package:flutter_application_1/screens/mainPage.dart';
import 'package:flutter_application_1/screens/splashScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home:  MainPage(),


    );
  }
}


