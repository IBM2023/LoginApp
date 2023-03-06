import 'package:flutter/material.dart';
import 'package:login_app/scr/features/authentication/screens/splash_screen/splash_screen.dart';
void main (){
  runApp(myLoginApp());
}
class myLoginApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness:Brightness.light),
      darkTheme:ThemeData(brightness:Brightness.dark),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,

      title: 'myLoginApp',
      home: SplashScreen(),
    );
  }

}