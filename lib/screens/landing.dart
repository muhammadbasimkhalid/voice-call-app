import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Videocallscreen.dart';
import 'package:flutter_application_1/utils/color.dart';
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
      backgroundColor: AppColors.whiteonly,
      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Icon(Icons.more_vert,color: Colors.black,),
        )],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Center(
              child: Text(
                    'Video Call',
                    style: GoogleFonts.judson(
                      fontSize: MediaQuery.of(context).size.width * 0.12,
                      fontWeight: FontWeight.w400,
                      height: 1.0,
                    ),
                  ),
            ),
                SizedBox(height: 20),
              Image(
                image: AssetImage('assets/undraw_video_call_re_4p26 2.png'),
                height: MediaQuery.of(context).size.width * 0.6,
              ),
              SizedBox(height: 20),
              
              textff(callIdController, 'Enter Call ID', TextInputType.number),
              const SizedBox(height: 20),
              textff(userIdController, 'Enter User ID', TextInputType.number),
              
              const SizedBox(height: 20),
               textff(userNameController, 'Enter Username', TextInputType.name),
             
              const SizedBox(height: 20),
              button('Join the Call', 'assets/camera.png',  () {
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
                }, context)
             ],
          ),
        ),
      ),
    );
  }
  textff(TextEditingController controller,String value,TextInputType type){
    return  Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
               height: MediaQuery.of(context).size.width * 0.15,
        width: MediaQuery.of(context).size.width * 0.9,
              child: TextFormField(
              
                controller: controller,
                keyboardType: type,
                decoration: InputDecoration(
                      
                  labelText: value,
                  labelStyle: GoogleFonts.judson(fontSize:20,fontWeight:FontWeight.w400,color:AppColors.whitegrey),

                   border:  OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                      borderSide: new BorderSide(color: Colors.black),
                    ),
                ),
              
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid $value';
                  }
                  return null;
                },
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
        width: MediaQuery.of(context).size.width * 0.85,
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image: AssetImage(val),
              height: MediaQuery.of(context).size.width * 0.1,
              width: MediaQuery.of(context).size.width * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.only(right:40),
              child: Text(
                value,
                style: GoogleFonts.judson(
                  color: AppColors.whiteonly,
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }

}
