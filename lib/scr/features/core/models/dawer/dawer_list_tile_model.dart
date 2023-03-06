import 'package:flutter/material.dart';
import 'package:login_app/scr/features/authentication/screens/login_screen/login_screen.dart';
class DawerListTileModel {
  final String titleText;
  final Icon leadingIcon;
  final VoidCallback? onPress;
  DawerListTileModel(
      this.titleText,
      this.leadingIcon,
      this.onPress,
      );

  static List<DawerListTileModel>list =[

    // DawerListTileModel(titleText, leadingIcon, () { })
    DawerListTileModel('Home', Icon(Icons.home_filled,color: Colors.purple.withOpacity(0.8)),(){}),
    DawerListTileModel('Statements', Icon(Icons.stacked_line_chart_outlined,color: Colors.purple.withOpacity(0.8)),(){}),
    DawerListTileModel('Discover', Icon(Icons.discount_outlined,color: Colors.purple.withOpacity(0.8)),(){}),
    DawerListTileModel('Setting', Icon(Icons.settings,color: Colors.purple.withOpacity(0.8)),(){}),
    DawerListTileModel('Support', Icon(Icons.person,color: Colors.purple.withOpacity(0.8)),(){}),
    DawerListTileModel('About us', Icon(Icons.account_balance_wallet_outlined,color: Colors.purple.withOpacity(0.8)),(){}),
    DawerListTileModel('Log out', Icon(Icons.logout,color: Colors.purple.withOpacity(0.8)),(){
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen(index: index )));
    }),
  ];

}