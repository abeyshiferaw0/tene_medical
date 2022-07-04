import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../config/theme.dart';
import '../controllers/delivery_detail_controller.dart';

class DeliveryDetailView extends GetView<DeliveryDetailController> {
  const DeliveryDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.off(context);
              },
              icon: const Icon(
                Icons.chevron_left,
                size: 35,
                color: Colors.black,
              )),
          title: const Text(
            'Delivery Detail',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            CircleAvatar(
                radius: 18,
                backgroundColor: const Color(0xffEBF5F4),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_outlined,
                        size: 20, color: Color(0xff129797))))
          ],
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: AppTheme.themeColorFaded.withOpacity(0.2),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.location_on,
                          color: AppTheme.themeColor,
                        ),
                        title: Text(
                          "Nifas Silk Lafto",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        minLeadingWidth: 20,
                        subtitle: Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "Addis Ababa, Ethiopia",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        trailing: const Icon(
                          Icons.chevron_right,
                          size: 30,
                          color: AppTheme.themeColor,
                        ),
                      ),
                      Divider(
                        color: Colors.grey[500],
                        height: 4.h,
                        thickness: 1,
                        endIndent: 20,
                        indent: 20,
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.location_on,
                          color: AppTheme.themeColor,
                        ),
                        title: Text(
                          "Call me",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        minLeadingWidth: 20,
                        subtitle: Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "When the arrival please calle me",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        trailing: const Icon(
                          Icons.chevron_right,
                          size: 30,
                          color: AppTheme.themeColor,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            "Delivery Time",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          Text(
                            "3-4 Hour",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          height: 7.h,
                          width: 95.w,
                          decoration: const BoxDecoration(
                              color: AppTheme.themeColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Standard",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          height: 7.h,
                          width: 95.w,
                          decoration: BoxDecoration(
                              color: AppTheme.themeColorFaded.withOpacity(0.1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Schedule",
                                style: TextStyle(
                                    color: AppTheme.themeColor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
                const PricingDetail(),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 7.h,
                    width: 95.w,
                    decoration: const BoxDecoration(
                        color: AppTheme.themeColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.sp),
                            ),
                            Text(
                              "1050 Birr",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.sp),
                            )
                          ],
                        ),
                        const VerticalDivider(
                          color: Colors.white,
                          thickness: 2,
                          width: 2,
                          endIndent: 4,
                          indent: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Place Order",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class PricingDetail extends StatelessWidget {
  const PricingDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Item Total",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "1200 Birr",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price Discount",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "-120",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 2,
            height: 3,
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.w,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Shipping Fee",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Icon(
                  Icons.error,
                  color: Colors.grey.shade200,
                  size: 4.w,
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Text(
                  "1200 Birr",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.w,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Pckaging and handling charge",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Icon(
                  Icons.error,
                  color: Colors.grey.shade200,
                  size: 4.w,
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Text(
                  "10 Birr",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 2,
            height: 3,
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.w,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "To be paid",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Text(
                  "1300 Birr",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(2.w),
            child: Material(
              color: const Color(0xffEBF5F4),
              borderRadius: BorderRadius.circular(2.w),
              child: Padding(
                padding: EdgeInsets.all(4.w),
                child: Row(
                  children: [
                    Text(
                      "Total saving",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      "120 Birr",
                      style: TextStyle(
                        color: AppTheme.themeColor,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
