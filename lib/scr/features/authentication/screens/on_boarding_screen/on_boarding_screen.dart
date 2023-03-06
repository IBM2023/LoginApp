import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../welcome_screen/WelcomeScreen.dart';
import 'on_boarding_screen_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      OnBoardingWidget(
        bgcolor: Colors.blue.shade100,
        image: 'assets/images/on_boarding_images/on_boarding-images1.png',
        title: "Rumana's picture",
        subtitle: "This picture is beautifull. \n You can like this picture. ",
        counttitle: '1/3',
      ),
      OnBoardingWidget(
        bgcolor: Colors.deepPurple.shade100,
        image: 'assets/images/on_boarding_images/on_boarding-images2.png',
        title: " Rumana is happy",
        subtitle: "      Rumana is dancing  \n      She is very exciting. ",
        counttitle: '2/3',
      ),
      OnBoardingWidget(
        bgcolor: Colors.greenAccent.shade100,
        image: 'assets/images/on_boarding_images/on_boarding-images3.png',
        title: "Rumana's friend",
        subtitle: " They are playing in field. \n   They look like anocint. ",
        counttitle: '3/3',
      ),
    ];

    return Scaffold(
        body: Stack(
      children: [
        LiquidSwipe(
          liquidController: controller,
          onPageChangeCallback: onPageChangeCallback,
          pages: pages,
          slideIconWidget: Icon(Icons.arrow_back_ios),
          enableSideReveal: true,
        ),
        Positioned(
          right: 0.0,
          child: SafeArea(
            child: TextButton(
                onPressed: () {
                  // controller.jumpToPage(page: 2);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          ),
        ),
        Positioned(
          bottom: 130.0,
          left: 5.0,
          child: ElevatedButton(
            onPressed: () {
              controller.animateToPage(page: currentPage + 1);
            },
            child: Icon(Icons.arrow_forward_ios),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        Positioned(
          bottom: 60.0,
          left: 180,
          child: AnimatedSmoothIndicator(
            activeIndex: controller.currentPage,
            count: 3,
            effect: WormEffect(
              activeDotColor: Colors.green.shade300,
              dotHeight: 40,
              dotWidth: 10,
              spacing: 10,
            ),
          ),
        )
      ],
    ));
  }

  onPageChangeCallback(int activeIndex) {
    currentPage = activeIndex;
    setState(() {});
  }
}
