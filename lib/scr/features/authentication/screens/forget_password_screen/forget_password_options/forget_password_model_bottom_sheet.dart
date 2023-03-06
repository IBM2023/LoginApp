import 'package:flutter/material.dart';

import '../forget_password_mail/forget_password_mail_screen.dart';

import '../forget_password_phone/forget_password_phone_screen.dart';
import 'Password_btn_widget.dart';

class ForgetPasswordScreen {
 static Future <dynamic> buildShowModalBottomSheet (BuildContext context){
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight:Radius.circular(21),topLeft: Radius.circular(21))),
        context: context,
        builder: (context)=>Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Make Selection !',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('Select one of the options give below to reset your password .',style: TextStyle(fontSize: 15),),
              SizedBox(height: 20,),
              Password_btn_widget(
                icon: Icon(Icons.mail_outline_outlined),
                title: 'E-Mail',
                subtitle: "Reset via mail Verification.",
                ontap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordMailScreen()));
                },
              ),
              SizedBox(height: 20,),
              Password_btn_widget(
                icon: Icon(Icons.phone_android_outlined),
                title: 'phone No',
                subtitle: "Reset via phone Verification.",
                ontap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordPhoneScreen()));
                },
              ),
            ],
          ),
        ));

  }
}