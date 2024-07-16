import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Provider/onBoardignProvidder.dart';
import 'homePage.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    PageController controller = PageController();
    OnBoardingProvider onBoardingProviderTrue =
        Provider.of<OnBoardingProvider>(context, listen: true);
    OnBoardingProvider onBoardingProviderFalse =
        Provider.of<OnBoardingProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
                controller: controller,
                onPageChanged: (index) {
                  onBoardingProviderFalse.pageIndex(index);
                },
                children: [
                  buildPage(
                      height,
                      width,
                      'assets/images/onBoardingScreen/img1.png',
                      'Welcome to Surf.',
                      'I provide essential stuff for your ui designs every tuesday'),
                  buildPage(
                      height,
                      width,
                      'assets/images/onBoardingScreen/img2.png',
                      'Design Template uploads Every Tuesday',
                      'Make sure to take a look my uplab profile every tuesday'),
                  buildPage(
                      height,
                      width,
                      'assets/images/onBoardingScreen/img3.png',
                      'Download now!',
                      'You can follow me if you wantand comment on any to get some freebies')
                ]),
            (onBoardingProviderTrue.currentPage == 2)
                ? Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: const HomePage(),
                                type: PageTransitionType.rightToLeft));
                        onBoardingProviderFalse.removeScreen();
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: width * 0.0185, vertical: 15),
                        width: width * 0.28,
                        height: height * 0.068,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          'Start',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              color: Colors.white,
                              fontSize: width * 0.028,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                : Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.0188, vertical: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.animateToPage(2,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut);
                              // Navigator.pushReplacement(
                              //     context,
                              //     PageTransition(
                              //         child: const HomePage(),
                              //         type: PageTransitionType.rightToLeft));
                              onBoardingProviderFalse.removeScreen();
                            },
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: 'poppins',
                                  fontSize: width * 0.021),
                            ),
                          ),
                          SmoothPageIndicator(
                            controller: controller,
                            count: 3,
                            onDotClicked: (index) {
                              onBoardingProviderFalse.pageIndex(index);
                              controller.animateToPage(index,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut);
                            },
                            effect: const WormEffect(
                                type: WormType.thin,
                                activeDotColor: Colors.black),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut);
                            },
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'poppins',
                                  fontSize: width * 0.021),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

SizedBox buildPage(
    double height, double width, String img, String title, String description) {
  return SizedBox(
    height: height,
    width: width,
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: height * 0.092),
          child: Image.asset(
            img,
          ),
        ),
        SizedBox(height: height * 0.045),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.bold,
                fontSize: width * 0.0265),
          ),
        ),
        SizedBox(height: height * 0.04),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey,
                fontFamily: 'poppins',
                fontWeight: FontWeight.bold,
                fontSize: width * 0.0172),
          ),
        ),
      ],
    ),
  );
}
