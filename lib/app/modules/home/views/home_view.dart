import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/config/theme.dart';
import 'package:tene_medical/app/modules/home/views/widgets/CarouselSlider.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBF5F4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
                vertical: 2.h,
              ),
              child: TextField(
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.none,
                ),
                decoration: InputDecoration(
                  hintText: "Search for medicines/healthcare products",
                  hintStyle: TextStyle(
                    color: const Color(0xff757A80),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  alignLabelWithHint: true,
                  prefix: Icon(
                    Icons.search,
                    size: 2.w,
                    color: Colors.black,
                  ),
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                    borderSide: BorderSide(
                      color: AppTheme.themeColor.withOpacity(0.4),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                    borderSide: BorderSide(
                      color: AppTheme.themeColor,
                    ),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 3.w,
                    horizontal: 2.w,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 1.5.h,
            ),

            ///INITIAL CAROUSEL BANNER
            buildBannerCarousel(),
          ],
        ),
      ),
    );
  }

  Container buildBannerCarousel() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        top: 3.w,
        bottom: 3.w,
        right: 4.w,
      ),
      child: CarouselSlider(
        height: 20.h,
        scrollDuration: const Duration(seconds: 2),
        children: [
          Container(
            margin: EdgeInsets.only(left: 4.w),
            child: Material(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 4.w),
            child: Material(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 4.w),
            child: Material(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      ),
    );
  }
}
