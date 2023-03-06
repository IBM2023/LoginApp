import 'dart:async';

import 'package:flutter/material.dart';

import '../on_boarding_screen/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;
  @override
  void initState() {
    startAnimation();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 1600),
            top: animate ? 80.0 : -180.0,
            left: animate ? 80.0 : -30.0,
            // top: 80,
            // right: 80.0,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 100,
              backgroundImage: AssetImage(
                'assets/images/splash_images/Splash_top.png',
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 1600),
            top: animate ? 300.0 : 300,
            right: animate ? 70.0 : -200.0,
            // top: 300.0,
            // left: 80.0,
            child: Text(
              'Welcome',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.deepPurple.shade400),
            ),
          ),
          AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              bottom: animate ? 150.0 : -180.0,
              right: animate ? 80.0 : -30.0,
              // bottom:150.0,right: 80.0,
              child: Container(
                  height: 200.0,
                  width: 200.0,
                  // child: Text('This is my App'),))
                  child: Image.asset('assets/images/splash_images/Splash_down.png'))),
        ],
      ),
    );
  }

  void startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));

    //            I can use top function or bellow funtion
    // await Timer(Duration( milliseconds: 5000 ), () {
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcome()));
    // });
  }
}
