import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/views/widgets/banner_ad_widget.dart';
import '../../home/views/widgets/carousel_slider.dart';
import '../controllers/product_controller.dart';
import 'package:sizer/sizer.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                buildBannerCarousel(),
              ]),
              buildAppBar(),
            ],
          ),
        ),
      ),
    );
  }

  buildAppBar() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(1, 1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      color: Colors.grey.withOpacity(0.9),
                    ),
                  ],
                  color: Colors.white),
              child: CircleAvatar(
                  radius: 18,
                  backgroundColor: const Color(0xffEBF5F4),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chevron_left,
                          size: 20, color: Color(0xff129797)))),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(1, 1),
                          spreadRadius: 1,
                          blurRadius: 5,
                          color: Colors.grey.withOpacity(0.9),
                        ),
                      ],
                      color: Colors.white),
                  child: CircleAvatar(
                      radius: 18,
                      backgroundColor: const Color(0xffEBF5F4),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.share,
                              size: 20, color: Color(0xff129797)))),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(1, 1),
                          spreadRadius: 1,
                          blurRadius: 5,
                          color: Colors.grey.withOpacity(0.9),
                        ),
                      ],
                      color: Colors.white),
                  child: CircleAvatar(
                      radius: 18,
                      backgroundColor: const Color(0xffEBF5F4),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart_outlined,
                              size: 20, color: Color(0xff129797)))),
                ),
              ],
            )
          ]),
    );
  }

  Container buildBannerCarousel() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          CarouselSlider(
            height: 30.h,
            scrollDuration: const Duration(seconds: 2),
            children: List<Widget>.generate(
              controller.smallBannerAds.length,
              (i) => Container(
                margin: EdgeInsets.only(right: 10.w),
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 15.w),
                child: BannerAdWidget(
                  imageUrl: controller.smallBannerAds.elementAt(i).imgUrl,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 15.w),
            child: const Text(
                "Ansel Micoro-touch N30 Nitrel Latex free DesposableGloves Medium"),
          )
        ],
      ),
    );
  }
}
