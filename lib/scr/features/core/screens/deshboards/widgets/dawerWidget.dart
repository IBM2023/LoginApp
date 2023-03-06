import 'package:flutter/material.dart';
import 'package:login_app/chackAnimation.dart';
import 'package:login_app/scr/features/core/screens/deshboards/widgets/dawer/dawer_listtile_model.dart';
class DawerWidget extends StatelessWidget  {
   DawerWidget({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;


    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    height: size.height*0.3,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.1),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(size.width*0.5),topRight: Radius.circular(size.width*0.5),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                    ),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage('assets/images/dawer_images/ibrahim_khalil.png'),
                                radius: 55,
                              ),
                              Positioned(
                                right: 0.0,
                                bottom: 0.0,
                                child: GestureDetector(onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChackAnimation()));
                                },
                                    child: Icon(Icons.camera_alt_outlined,color: Colors.orangeAccent.withOpacity(0.6),)),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Text('ibrahim.khalil3007@gmail.com',style: TextStyle(fontSize: 21),)
                        ],

                      ),
                    ),
                  ),
                  SizedBox(height:20),
                  DListTileModel(),
                ],
              ),
            ),
          ),
        ));
  }
}
