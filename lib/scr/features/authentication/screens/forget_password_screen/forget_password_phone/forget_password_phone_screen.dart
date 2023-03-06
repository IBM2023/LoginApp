import 'package:flutter/material.dart';

import '../../../../../common_widgets/HeaderForm.dart';
import '../forget_password_otp/forget_password_otp_screen.dart';
class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeaderForm(
                images: 'assets/images/forget_password_images/forget_phone_screen_image-removebg-preview.png',
                headertitle: 'Forget Password',
                heardersubtitle: 'Please enter you phone number for reset you password',textAlign: TextAlign.center),
            SizedBox(height: 15,),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                label: Text('enter your phone'),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(width: 2,color: Colors.green.shade200)
                ),
                enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(width: 2,color: Colors.grey)
                ),
              ),
            ),
            SizedBox(height: 15,),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade600,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordOTPScreen()));
                },
                child: Text('Next'),
              ),
            )
          ],
        ),
      ),
    );
  }
}