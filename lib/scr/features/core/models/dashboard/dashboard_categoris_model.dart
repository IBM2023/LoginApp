import 'package:flutter/material.dart';
class DashboardCategorisModel{
  final String title;
  final String heading;
  final String subheading;
  final VoidCallback? onPress;

  DashboardCategorisModel(
      this.title,
      this.heading,
      this.subheading,
      this.onPress,
      );


  static List<DashboardCategorisModel>list = [

    // DashboardCategorisModel(title, heading, subheading, () { })
    DashboardCategorisModel('Physics', 'Ibrahim', '80', (){}),
    DashboardCategorisModel('Bangla', 'Mokaddes', '30', (){}),
    DashboardCategorisModel('English', 'Rabiul', '50', (){}),
    DashboardCategorisModel('Math', 'Husen', '100', (){}),
    DashboardCategorisModel('Chemistry', 'Parves', '60', (){}),
    DashboardCategorisModel('Biology', 'Alhaz', '85', (){}),


  ];
}