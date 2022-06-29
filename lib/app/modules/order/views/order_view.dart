import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/config/theme.dart';
import 'package:tene_medical/app/modules/order/views/widgets/history_page.dart';
import 'package:tene_medical/app/modules/order/views/widgets/ongoing_page.dart';

import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBF5F4),
      body: Column(
        children: [
          ///HEADER SEARCH BAR BUTTON
          buildHeaderSearchBar(),

          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 1.5.h,
                ),

                ///TOP ONGOING AND HISTORY BUTTONS
                buildTopButtons(),

                SizedBox(
                  height: 1.5.h,
                ),

                ///ORDER DETAIL
                Obx(
                  () => Expanded(
                    child: Container(
                      child: controller.currentOrderPage.value ==
                              CurrentOrderPage.ON_GOING
                          ? const OngoingPage()
                          : const HistoryPage(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Material buildHeaderSearchBar() {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          color: Colors.white,
          padding:
              EdgeInsets.only(left: 4.w, right: 4.w, bottom: 3.h, top: 1.h),
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
              prefixIcon: Icon(
                Icons.search,
                size: 6.w,
                color: Colors.black45,
              ),
              fillColor: Colors.white,
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8.0),
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
                vertical: 5.w,
                horizontal: 2.w,
              ),
            ),
          ),
        ),
      ),
    );
  }

  buildTopButtons() {
    return Obx(
      () => Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          top: 4.w,
          bottom: 3.w,
          right: 4.w,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 2.h,
            ),
            ElevatedButton(
              onPressed: () {
                controller.changePage(CurrentOrderPage.ON_GOING);
              },
              style: ElevatedButton.styleFrom(
                primary: controller.currentOrderPage.value ==
                        CurrentOrderPage.ON_GOING
                    ? AppTheme.themeColor
                    : Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                shadowColor: Colors.transparent,
                padding: EdgeInsets.symmetric(
                  vertical: 1.5.h,
                  horizontal: 6.w,
                ),
              ),
              child: Text(
                'Ongoing',
                style: TextStyle(
                  color: controller.currentOrderPage.value ==
                          CurrentOrderPage.ON_GOING
                      ? Colors.white
                      : AppTheme.themeColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              width: 1.h,
            ),
            ElevatedButton(
              onPressed: () {
                controller.changePage(CurrentOrderPage.HISTORY);
              },
              style: ElevatedButton.styleFrom(
                primary: controller.currentOrderPage.value ==
                        CurrentOrderPage.ON_GOING
                    ? Colors.grey.shade200
                    : AppTheme.themeColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                shadowColor: Colors.transparent,
                padding: EdgeInsets.symmetric(
                  vertical: 1.5.h,
                  horizontal: 6.w,
                ),
              ),
              child: Text(
                'History',
                style: TextStyle(
                  color: controller.currentOrderPage.value ==
                          CurrentOrderPage.ON_GOING
                      ? AppTheme.themeColor
                      : Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
