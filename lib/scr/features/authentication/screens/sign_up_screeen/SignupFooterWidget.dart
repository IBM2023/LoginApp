import 'package:flutter/material.dart';
import 'package:login_app/scr/features/authentication/screens/login_screen/login_screen.dart';
class SignupFooterWidget extends StatelessWidget {
  const SignupFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("OR",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20),),
        SizedBox(height: 20,),
        TextButton.icon(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.0)
              )
          ),
          icon: Image.asset('assets/logo/google_logo.png',height: 20.0,width: 20.0,),
          onPressed: (){},
          label: Text('sign in with Google',style: TextStyle(fontSize: 21.0,color: Colors.black87)),),
        SizedBox(height: 15,),
        TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            },
            child: Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: "Already have an account ? " ,style: TextStyle(color: Colors.grey)),
                      TextSpan(text: ' Login')
                    ]
                )
            ))
      ],
    );
  }
}