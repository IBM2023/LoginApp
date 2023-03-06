import 'package:flutter/material.dart';
class HeaderForm extends StatelessWidget {
   HeaderForm({
    Key? key,
    required this.images,
     required this.headertitle,
     required this.heardersubtitle,
     this.textAlign,
  }) : super(key: key);
  final String images, headertitle , heardersubtitle;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green.shade200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(images,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.2,

          ),
          Text(headertitle,style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
          Text(heardersubtitle,textAlign: textAlign,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

        ],
      ),
    );
  }
}
