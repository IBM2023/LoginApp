import 'package:flutter/material.dart';
class CourseCategorisModel{
  final String subName;
  final String writerName;
  final String image;
  final String icon;
  final VoidCallback? onPress;

  CourseCategorisModel(
      this.subName,
      this.writerName,
      this.image,
      this.icon,
      this.onPress
      );

  static List<CourseCategorisModel>arry=[
    // CourseCategorisModel(subName, writerName, image, icon, () { })
    CourseCategorisModel('Physics', 'Ibrahim khalil', 'assets/images/dashboard_images/physic_book_images.png', 'assets/images/dashboard_images/physic_book_images.png', () {}),
    CourseCategorisModel('Math', 'Husain Islam', 'assets/images/dashboard_images/math_book_images.png', 'assets/images/dashboard_images/math_book_images.png', () {}),
    CourseCategorisModel('English', 'Rabiul Islam', 'assets/images/dashboard_images/english_book_images.png', 'assets/images/dashboard_images/english_book_images.png', () {}),
    CourseCategorisModel('Chemistry', 'Parves Alom', 'assets/images/dashboard_images/Chemistry_book_images.png', 'assets/images/dashboard_images/Chemistry_book_images.png', () {}),
    CourseCategorisModel('Bangla', 'Mokaddes hassan', 'assets/images/dashboard_images/banlga_book_images.png', 'assets/images/dashboard_images/banlga_book_images.png', () {}),
    CourseCategorisModel('Biology', 'Alhaz Mahmud', 'assets/images/dashboard_images/biology_book_images.png', 'assets/images/dashboard_images/biology_book_images.png', () {}),
  ];

}