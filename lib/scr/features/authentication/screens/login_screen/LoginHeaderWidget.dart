import 'package:flutter/material.dart';
class LoginHeader extends StatelessWidget {
  const LoginHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green.shade200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/login_images/login_images.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.2,

          ),
          Text("Welcome back",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
          Text("Let's get started with login our account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

        ],
      ),
    );
  }
}
