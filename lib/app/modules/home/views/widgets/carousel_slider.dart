import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tene_medical/app/config/theme.dart';

class CarouselSlider extends StatefulWidget {
  const CarouselSlider(
      {Key? key,
      required this.height,
      required this.children,
      required this.scrollDuration})
      : super(key: key);

  final double height;
  final List<Widget> children;
  final Duration scrollDuration;

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  ///NOTIFIER FOR DOTED INDICATOR
  late ValueNotifier<int> pageNotifier;

  ///CONTROLLER FOR PAGE VIEW
  late PageController controller;

  ///TIMER FOR CAROUSEL
  late Timer timer;

  ///PAGER CURRENT PAGE
  int currentPage = 0;

  @override
  void initState() {
    ///PAGE VIEW CONTROLLER INIT
    controller = PageController(
      initialPage: 0,
    );

    ///INDICATOR CONTROLLER INIT
    pageNotifier = ValueNotifier<int>(0);

    ///CAROUSEL TIMER INIT
    timer = Timer.periodic(const Duration(seconds: 6), (Timer timer) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      controller.animateToPage(
        currentPage,
        duration: widget.scrollDuration,
        curve: Curves.easeIn,
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  pageNotifier.value = index;
                  currentPage = index;
                });
              },
              children: widget.children,
            ),
          ),
          SizedBox(
            height: 4.w,
          ),
          SmoothPageIndicator(
            controller: controller, // PageController
            count: widget.children.length,
            effect: ExpandingDotsEffect(
              dotHeight: 1.h,
              dotWidth: 2.w,
              activeDotColor: AppTheme.themeColor,
              dotColor: Colors.black12,
            ),
            onDotClicked: (index) {
              controller.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          )
        ],
      ),
    );
  }
}
