import 'package:flutter/material.dart';
class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
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
            onPressed: (){},
            child: Text("Already have an account?"))
      ],
    );
  }
}
