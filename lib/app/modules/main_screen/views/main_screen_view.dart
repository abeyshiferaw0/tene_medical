import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/config/theme.dart';
import 'package:tene_medical/app/modules/home/views/home_view.dart';
import 'package:tene_medical/app/modules/main_screen/views/widgets/bottom_bar.dart';
import 'package:tene_medical/app/modules/near_by/views/near_by_view.dart';
import 'package:tene_medical/app/modules/order/views/order_view.dart';
import 'package:tene_medical/app/modules/profile/views/profile_view.dart';

import '../controllers/main_screen_controller.dart';

class MainScreenView extends GetView<MainScreenController> {
  const MainScreenView({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: const BottomBarWidget(),
      backgroundColor: const Color(0xffEBF5F4),
      body: Obx(() {
        return IndexedStack(
          index: controller.selectedTabIndex.value,
          children: [
            const HomeView(),
            NearByView(),
            OrderView(),
            ProfileView(),
          ],
        );
      }),
    );
  }

  buildAppBar() {
    return AppBar(
      elevation: 0,
      foregroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Text(
        "Teena",
        style: TextStyle(
          color: const Color(0xff129797),
          fontWeight: FontWeight.w400,
          fontSize: 20.sp,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none,
            color: Colors.black87,
            size: 7.w,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Material(
            borderRadius: BorderRadius.circular(100),
            elevation: 4,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(1.w),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: AppTheme.themeColor,
                size: 5.w,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
      ],
      centerTitle: false,
      backgroundColor: const Color(0xffF6FBFB),
      shadowColor: Colors.transparent,
    );
  }
}
