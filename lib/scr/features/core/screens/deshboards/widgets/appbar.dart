import 'package:flutter/material.dart';
import 'package:login_app/scr/features/core/screens/deshboards/widgets/dawerWidget.dart';
class DashboardAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))),
      backgroundColor:Colors.transparent,

      // leading: IconButton(
      //     onPressed: (){
      //       Navigator.push(context, MaterialPageRoute(builder: (context)=>DawerWidget()));
      //     },
      //     icon: Icon(Icons.menu)),

      title: Text('Courses'),
      centerTitle: true,
      actions: [
        Container(
          padding: EdgeInsets.only(right: 20.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.5),
            child: Icon(Icons.account_circle,color: Colors.green.withOpacity(0.8),),
          ),
        )
      ],

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55);
}
