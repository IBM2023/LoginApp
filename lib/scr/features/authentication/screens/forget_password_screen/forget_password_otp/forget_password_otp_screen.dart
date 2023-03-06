import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
class ForgetPasswordOTPScreen extends StatelessWidget {
  const ForgetPasswordOTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
              TextSpan(
                  text: 'Code',
                  children: [
                TextSpan(
                  text: '  Verification',style: TextStyle(color:Colors.green.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 15)
                )
              ])
              ,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 50),),
                SizedBox(height: 15,),
                Text('Please chack your messages or email and fill up bellow box',textAlign: TextAlign.center,),
                SizedBox(height: 15,),

              //  you have to first add dev defendence 'flutter_otp_text_field: ^1.1.1' package.

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: OtpTextField(
                    numberOfFields: 6,
                    fillColor: Colors.black.withOpacity(0.1),
                    filled: true,

                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ),
                      onPressed: (){},
                      child: Text('Submit',style: TextStyle(color: Colors.blue.withOpacity(0.8)),)),
                ),
                

              ],
            ),
          ),
        ));
  }
}
