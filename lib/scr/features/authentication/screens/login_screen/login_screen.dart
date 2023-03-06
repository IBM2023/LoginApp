import 'package:flutter/material.dart';
import 'LoginFooterWidget.dart';
import 'LoginFormWidget.dart';
import 'LoginHeaderWidget.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               LoginHeader(),
                SizedBox(height: 15,),
                LoginFormWidget(),
                LoginFooterWidget(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
