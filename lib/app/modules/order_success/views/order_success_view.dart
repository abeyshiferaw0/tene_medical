import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import '../../../config/theme.dart';
import '../controllers/order_success_controller.dart';

class OrderSuccessView extends GetView<OrderSuccessController> {
  const OrderSuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 36.h,
          width: 95.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/sucess.png'),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  "Successfully Ordered",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: AppTheme.themeColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                child: Text(
                  "The order will arrive after 3 hours please dont close your phone",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11.sp, color: AppTheme.themeColor),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 7.h,
                  width: 95.w,
                  decoration: const BoxDecoration(
                      color: AppTheme.themeColor,
                      borderRadius: BorderRadius.all(Radius.circular(22))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Tarck Your Order",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(1, 1),
                  spreadRadius: 0,
                  blurRadius: 5,
                  color: Colors.grey.withOpacity(0.9),
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
