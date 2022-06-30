import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../controllers/catagory_controller.dart';

class CatagoryView extends GetView<CatagoryController> {
  const CatagoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(),
    );
  }

  buildAppBar() {
    return AppBar(
      elevation: 0,
      toolbarHeight: 11.h,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.chevron_left,
          color: Colors.black87,
          size: 35,
        ),
      ),
      title: Text(
        "SAS Pharmacies",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15.sp,
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: Icon(Icons.search), color: Colors.black87),
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 1),
                  spreadRadius: 1,
                  blurRadius: 5,
                  color: Colors.grey.withOpacity(0.9),
                ),
              ],
              color: Colors.white),
          child: CircleAvatar(
              radius: 18,
              backgroundColor: Color(0xffEBF5F4),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart_outlined,
                      size: 20, color: const Color(0xff129797)))),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
        )
      ],
      centerTitle: false,
      backgroundColor: const Color(0xffF6FBFB),
      shadowColor: Colors.transparent,
    );
  }
}
