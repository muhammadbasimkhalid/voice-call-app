import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class VoiceCallScreen extends StatefulWidget {
  const VoiceCallScreen({Key? key}) : super(key: key);

  @override
  State<VoiceCallScreen> createState() => _VoiceCallScreenState();
}

class _VoiceCallScreenState extends State<VoiceCallScreen> {
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.whiteonly,
      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Icon(Icons.more_vert,color: Colors.black,),
        )],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                    'Voice Call',
                    style: GoogleFonts.judson(
                      fontSize: MediaQuery.of(context).size.width * 0.12,
                      fontWeight: FontWeight.w400,
                      height: 1.0,
                    ),
                  ),
            ),
                SizedBox(height: 20),
              Image(
                image: AssetImage('assets/undraw_phone_call_re_hx6a 1.png'),
                height: MediaQuery.of(context).size.width * 0.6,
              ),
              SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
               height: MediaQuery.of(context).size.width * 0.15,
        width: MediaQuery.of(context).size.width * 0.9,
              child: TextFormField(
              
                controller: phoneNumberController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                      
                  labelText: 'Phone Number',
                  labelStyle: GoogleFonts.judson(fontSize:20,fontWeight:FontWeight.w400,color:AppColors.whitegrey),
                  prefixIcon: Icon(Icons.phone,color:AppColors.greyBlack,size:25 ,),
                   border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                      borderSide: new BorderSide(),
                    ),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid phone number';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 20),
          
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: button('Call',() {
                  String phoneNumber = phoneNumberController.text;
                  _makeVoiceCall(phoneNumber);
                },context),
            )
          ],
        ),
      ),
    );
  }

  void _makeVoiceCall(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not make the call')),
      );
    }
  }
   Widget button(String value,  onTap,BuildContext context) {
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
        child: Center(
          child: Text(
            value,
            style: GoogleFonts.judson(
              color: AppColors.whiteonly,
              fontSize: MediaQuery.of(context).size.width * 0.06,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

}
