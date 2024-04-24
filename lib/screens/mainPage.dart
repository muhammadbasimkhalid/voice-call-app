import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/screens/VoiceCallScreen.dart';
import 'package:flutter_application_1/screens/landing.dart';
import 'package:google_fonts/google_fonts.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.green ,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Center(child:Text('Calling-App', style: GoogleFonts.pacifico(fontSize: 30)))),
            SizedBox(height: 20),
            GestureDetector(
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child:ListTile(
                    trailing: Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 25,
                      child: Center(
                        child: Icon(Icons.call, color: Colors.white),
                      ),
                                    ),
                    ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Voice Call', style: TextStyle(fontSize: 16)),
                  ),
                
                  ) ,),
              ),
                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VoiceCallScreen()),
                );
              },
            ),
           
            SizedBox(height: 10),
            GestureDetector(
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child:ListTile(
                    trailing: Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 25,
                      child: Center(
                        child: Icon(Icons.call, color: Colors.white),
                      ),
                                    ),
                    ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Video Call', style: TextStyle(fontSize: 16)),
                  ),
                
                  ) ,),
              ),
                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LandingPage()),
                );
              },
            ),
           
          ],
        ),
      ),
    );
  }
}
