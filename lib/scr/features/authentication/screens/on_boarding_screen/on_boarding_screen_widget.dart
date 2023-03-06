import 'package:flutter/material.dart';
class OnBoardingWidget extends StatelessWidget {

  final String image;
  final String title;
  final String subtitle;
  final String counttitle;
  final Color bgcolor;


  OnBoardingWidget({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.counttitle,
    required this.bgcolor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: bgcolor,
      child: Stack(
        children: [
          Positioned(
              top: 30.0, left: 30.0,
              child: Container(
                // height: 300,
                width: 300,
                child: Image.asset(image, height:size.height*0.5 ),)),
          Positioned(
            top: 350,left: 21,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.grey),),
                SizedBox(height: 10,),
                Text(subtitle,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blueGrey),),
              ],
            ),
          ),

          Positioned(
              bottom: 135,right: 170,
              child: Text(counttitle))

        ],
      ),
    );
  }
}

