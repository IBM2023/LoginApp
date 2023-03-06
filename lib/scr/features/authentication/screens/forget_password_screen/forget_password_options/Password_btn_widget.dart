import 'package:flutter/material.dart';
class Password_btn_widget extends StatelessWidget {
   Password_btn_widget({
    Key? key,
     required this.icon,
     required this.title,
     required this.subtitle,
     required this.ontap,

  }) : super(key: key);

  final String title , subtitle ;
  final Icon icon;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade500
        ),
        child: Row(
          children: [
            icon,
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                Text(subtitle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
