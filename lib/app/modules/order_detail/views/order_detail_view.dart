import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tene_medical/app/config/theme.dart';
import 'package:sizer/sizer.dart';
import '../controllers/order_detail_controller.dart';

class OrderDetailView extends GetView<OrderDetailController> {
  const OrderDetailView({Key? key}) : super(key: key);
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
          'Order Detail',
          style: TextStyle(color: Colors.black87),
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
      body: Container(
        color: AppTheme.themeColorFaded.withOpacity(0.2),
        child: Column(
          children: [
            Container(
                color: Colors.white,
                height: 10.h,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: searchfield()),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                'assets/images/map.png',
                height: 10.h,
                width: 95.w,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget searchfield() {
    return Container(
        height: 10.h,
        width: 95.w,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
        child: TextField(
          cursorColor: AppTheme.themeColor,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey[400],
            ),
            labelStyle: TextStyle(color: Colors.grey[400], fontSize: 15),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppTheme.themeColor),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppTheme.themeColor, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            labelText: "Enter a new address",
            hintStyle: TextStyle(color: Colors.grey[400]),
            hintText: "Enter a new address",
          ),
        ));
  }
}
