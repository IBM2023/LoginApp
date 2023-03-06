import 'package:flutter/material.dart';

import '../login_screen/login_screen.dart';
import '../sign_up_screeen/sign_up_screen.dart';
class WelcomeScreen extends StatefulWidget {
   WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool animate = false;
  @override
  void initState() {
    startWelcomeAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    // final size = MediaQuery.of(context).size;
    return Scaffold(
      body:Stack(
        children: [
          AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: animate ? 70.0 : -30.0,
              child: Container(
                width: 380,
                  height: 400,
                  child: Image.asset('assets/images/welcome_images/welcome_image.png',))),
          AnimatedPositioned(
            duration: Duration(milliseconds: 1600),
            bottom: animate ? 180.0 : -30.0,
            left: 20,
            child: Column(
              children: [
                Text('Build your own activity',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34,color: Colors.black87),),
                Text("let's put your activity on the valuable \n           apps and enjoy our contain",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 1600),
            bottom: animate ?  80.0 : -30.0,
            left: 10,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white54),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                              color: Colors.transparent,
                              width: 5
                          )
                      )
                  ),
                ),
                SizedBox(width: 160,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  },
                  child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white54),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                              color: Colors.transparent,
                              width: 5
                          )
                      )
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  startWelcomeAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(()=>animate = true);
    await Future.delayed(Duration(milliseconds: 5000));
  }
}
