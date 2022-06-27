import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tene_medical/app/config/theme.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/modules/main_screen/controllers/main_screen_controller.dart';

class BottomBarWidget extends GetView<MainScreenController> {
  const BottomBarWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppTheme.themeColor,
        unselectedItemColor: Colors.black87,
        currentIndex: controller.selectedTabIndex.value,
        iconSize: 6.w,
        onTap: (newIndex) {
          controller.onBottomBarItemTapped(newIndex);
        },
        selectedLabelStyle: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.bold,
          color: AppTheme.themeColor,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
        ),
        items: [
          buildBottomItem(
            icon: Icons.home_outlined,
            activeIcon: Icons.home,
            title: 'Home',
          ),
          buildBottomItem(
            icon: Icons.explore_outlined,
            activeIcon: Icons.explore,
            title: 'NearBy',
          ),
          buildBottomItem(
            icon: Icons.local_shipping_outlined,
            activeIcon: Icons.local_shipping,
            title: 'Order',
          ),
          buildBottomItem(
            icon: Icons.person_outline,
            activeIcon: Icons.person,
            title: 'Profile',
          ),
        ],
      );
    });
  }

  buildBottomItem({
    required IconData icon,
    required IconData activeIcon,
    required String title,
  }) {
    return BottomNavigationBarItem(
      icon: Container(
        margin: EdgeInsets.only(bottom: 0.5.h),
        child: Icon(
          icon,
        ),
      ),
      activeIcon: Container(
        margin: EdgeInsets.only(bottom: 0.5.h),
        padding: EdgeInsets.symmetric(
          horizontal: 6.w,
          vertical: 0.5.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            100,
          ),
          color: AppTheme.themeColorFaded.withOpacity(0.2),
        ),
        child: Icon(activeIcon),
      ),
      label: title,
    );
  }
}
