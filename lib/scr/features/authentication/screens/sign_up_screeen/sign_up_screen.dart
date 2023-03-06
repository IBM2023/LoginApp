import 'package:flutter/material.dart';
import 'SignupFooterWidget.dart';
import 'SignupFormWidget.dart';
import 'SignupHeaderWidget.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SignupHeaderWidget(),
                SignupFormWidget(),
                SignupFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}




