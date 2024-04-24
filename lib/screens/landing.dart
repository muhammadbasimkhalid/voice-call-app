import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Videocallscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  TextEditingController callIdController = TextEditingController();
  TextEditingController userIdController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text('Video-Calling', style: GoogleFonts.pacifico(fontSize: height * 0.05)),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: TextFormField(
                  controller: callIdController,
                  decoration: InputDecoration(
                    hintText: "Please enter call ID",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: TextFormField(
                  controller: userIdController,
                  decoration: InputDecoration(
                    hintText: "Please enter user ID",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: TextFormField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    hintText: "Please enter username",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CallPage(
                        callID: callIdController.text,
                        userID: userIdController.text,
                        username: userNameController.text,
                       
                      ),
                    ),
                  );
                },
                style: ButtonStyle(elevation: MaterialStateProperty.all(10)),
                child: Text("Join the call"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
