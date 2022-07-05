import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../config/theme.dart';
import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
          'Payment',
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: false,
      ),
      body: Container(
        color: AppTheme.themeColorFaded.withOpacity(0.1),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          height: 30.h,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Add Payment",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 7.h,
                  width: 95.w,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.credit_card,
                            size: 35,
                            color: Colors.grey[800],
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Credit Card or Debit Card",
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 7.h,
                  width: 95.w,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.paypal,
                            size: 35,
                            color: Colors.blue[900],
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Paypal",
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
