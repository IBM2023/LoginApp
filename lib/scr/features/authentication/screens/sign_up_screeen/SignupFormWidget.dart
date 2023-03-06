import 'package:flutter/material.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
      child: Form(
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.account_circle_outlined),
                    label: Text('Enter your user name'),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2,color: Colors.greenAccent.shade200)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2,color: Colors.grey.shade400)
                    )
                ),
              ),
              SizedBox(height: 8,),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email_rounded),
                    label: Text('Enter your email'),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2,color: Colors.greenAccent.shade200)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2,color: Colors.grey.shade400)
                    )
                ),
              ),
              SizedBox(height: 8,),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.phone),
                    label: Text('Enter your phone'),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2,color: Colors.greenAccent.shade200)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2,color: Colors.grey.shade400)
                    )
                ),
              ),
              SizedBox(height: 8,),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.lock),
                    label: Text('Enter your passwoard'),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2,color: Colors.greenAccent.shade200)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(width: 2,color: Colors.grey.shade400)
                    )
                ),
              ),
              SizedBox(height: 8,),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),
                    onPressed: (){},
                    child: Text('Sign Up',style: TextStyle(fontSize: 25),)),
              ),
            ],
          )),
    );
  }
}
