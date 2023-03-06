import 'package:flutter/material.dart';
class SizeBoxTextWidget extends StatelessWidget {
   SizeBoxTextWidget({
     required this.containerName,
     required this.writerName,
     required this.videotext,
    Key? key,
  }) : super(key: key);

  final String containerName , writerName , videotext ;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Row(
          children: [
            Container(
                height: 70,
                width: 80,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black.withOpacity(0.8),
                ),
                child: Center(child: Text(containerName,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white.withOpacity(.8)),))),
            SizedBox(width: 15,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                    TextSpan(
                        text: 'Writer: ',
                        children:[
                          TextSpan(
                              text: writerName,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple.withOpacity(0.8))
                          )
                        ] )),
                SizedBox(height: 5),
                Text('video: $videotext ',style: TextStyle(fontWeight: FontWeight.w400),),
              ],
            )
          ],
        )
    );
  }
}

