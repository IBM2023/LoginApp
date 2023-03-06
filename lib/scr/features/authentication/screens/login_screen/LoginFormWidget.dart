import 'package:flutter/material.dart';
import 'package:login_app/scr/features/authentication/screens/forget_password_screen/forget_password_options/forget_password_model_bottom_sheet.dart';

import '../../../core/screens/deshboards/deshboard.dart';
import '../forget_password_screen/forget_password_options/Password_btn_widget.dart';
class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
      // color: Colors.grey,
      child: Form(
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.account_circle_outlined),
                    label: Text('Enter your user name or @mail'),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2,color: Colors.greenAccent.shade200)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2,color: Colors.grey.shade400)
                    )
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    label: Text('Enter your passwoard'),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2,color: Colors.greenAccent.shade200)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2,color: Colors.grey.shade400)
                    )
                ),
              ),


              //---Forget password btn
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: (){
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                    },
                  child: Text('Forget passwoard ? '),),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                    },
                    child: Text('Login',style: TextStyle(fontSize: 25),)),
              )

            ],
          )),
    );
  }

}

