import 'package:flutter/material.dart';
class ChackAnimation extends StatefulWidget {
  const ChackAnimation({Key? key}) : super(key: key);

  @override
  State<ChackAnimation> createState() => _ChackAnimationState();
}

class _ChackAnimationState extends State<ChackAnimation> {

  bool animate = false;
  @override
  void initState() {
   startChackAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: animate ? 300 : -300,
              child: Image.asset('assets/images/welcome_images/welcome_image.png',)),
        ],
      ),
    );
  }
 void startChackAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
    await Future.delayed(Duration(milliseconds: 5000));
  }

}
