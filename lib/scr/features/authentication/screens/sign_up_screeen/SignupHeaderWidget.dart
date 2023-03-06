import 'package:flutter/material.dart';
import 'package:login_app/scr/common_widgets/HeaderForm.dart';


class SignupHeaderWidget extends StatelessWidget {
  const SignupHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeaderForm(
      images: 'assets/images/sign_up_images/sign_up_image.png',
      headertitle: 'Look at bellow',
      heardersubtitle: 'Fill up form and get entry to our field',
    );
  }
}