import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/VoiceCallScreen.dart';
import 'package:flutter_application_1/screens/landing.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteonly,
      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Icon(Icons.more_vert,color: Colors.black,),
        )],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Calling-App',
                  style: GoogleFonts.judson(
                    fontSize: MediaQuery.of(context).size.width * 0.12,
                    fontWeight: FontWeight.w400,
                    height: 1.0,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Image(
                image: AssetImage('assets/undraw_collab_-8-oes 2.png'),
                height: MediaQuery.of(context).size.width * 0.6,
              ),
              SizedBox(height: 100),
              button('Video Call', 'assets/camera.png', () {
                // Navigate to another screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LandingPage()),
                );
              },context),
              SizedBox(height: 10),
              button('Voice Call', 'assets/call.png', () {
                // Navigate to another screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VoiceCallScreen()),
                );
              },context),
            ],
          ),
        ),
      ),
    );
  }

  Widget button(String value, String val, onTap,BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.green,
        ),
        height: MediaQuery.of(context).size.width * 0.15,
        width: MediaQuery.of(context).size.width * 0.9,
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              value,
              style: GoogleFonts.judson(
                color: AppColors.whiteonly,
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.w400,
              ),
            ),
            Image(
              image: AssetImage(val),
              height: MediaQuery.of(context).size.width * 0.1,
              width: MediaQuery.of(context).size.width * 0.2,
            ),
          ],
        ),
      ),
    );
  }

}
