import 'package:flutter/material.dart';
class GridViewModel{
  final String subName;
  final String lessonConunt;
  final String bgimage;
  final String bannerimage;
  final VoidCallback? onPress;

  GridViewModel(
      this.subName,
      this.lessonConunt,
      this.bannerimage,
      this.bgimage,
      this.onPress,
      );

  static List<GridViewModel>list = [
    // GridViewModel(subName, lessonConunt, bannerimage, bgimage, () { })
    GridViewModel('Physics Book', '14', 'assets/images/dashboard_images/banner_images.png', 'assets/images/dashboard_images/physic_book_images.png', () { }),
    GridViewModel('English Book', '11', 'assets/images/dashboard_images/banner_images.png', 'assets/images/dashboard_images/english_book_images.png', () { }),
    GridViewModel('Biology Book', '15', 'assets/images/dashboard_images/banner_images.png', 'assets/images/dashboard_images/biology_book_images.png', () { }),
    GridViewModel('Math Book', '18', 'assets/images/dashboard_images/banner_images.png', 'assets/images/dashboard_images/math_book_images.png', () { }),
    GridViewModel('Bangla Book', '18', 'assets/images/dashboard_images/banner_images.png', 'assets/images/dashboard_images/banlga_book_images.png', () { }),
    GridViewModel('Chemistry Book', '16', 'assets/images/dashboard_images/banner_images.png', 'assets/images/dashboard_images/Chemistry_book_images.png', () { }),
  ];


}