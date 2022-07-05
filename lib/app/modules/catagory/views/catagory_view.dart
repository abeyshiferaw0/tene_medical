import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/config/theme.dart';
import '../controllers/catagory_controller.dart';

class CatagoryView extends GetView<CatagoryController> {
  const CatagoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(vertical: 15),
        color: AppTheme.themeColorFaded.withOpacity(0.2),
        child: ListView.builder(
          itemCount: 10,
          physics: const PageScrollPhysics(),
          itemBuilder: (context, index) {
            return expandedtile();
          },
        ),
      ),
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
        "All Catagories",
        style: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 15.sp, color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.black87),
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
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
        )
      ],
      centerTitle: false,
      backgroundColor: const Color(0xffF6FBFB),
      shadowColor: Colors.transparent,
    );
  }

  Widget expandedtile() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(1, 1),
              spreadRadius: 0,
              blurRadius: 5,
              color: Colors.grey.withOpacity(0.9),
            ),
          ],
          color: Color.fromARGB(255, 241, 171, 66).withOpacity(0.8),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: ExpansionTile(
        // backgroundColor: const ,
        title: Text("Covid Essentials",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600)),
        leading: Image.network(
          "https://image.shutterstock.com/shutterstock/photos/1762539611/display_1500/stock-photo-dettol-liquid-and-dettol-soap-product-shoot-1762539611.jpg",
          height: 12.h,
          width: 15.w,
        ),
        subtitle: Text("Covid Text Kits,Disinfecatants",
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        expandedAlignment: Alignment.centerLeft,
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text("All Covid Essentials items",
                  style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600))),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text("Covid Test kits",
                  style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600))),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text("Disinfectants",
                  style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600))),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text("Home Hygiene Essental Masks",
                  style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600))),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text("Hand sanitizers",
                  style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600))),
        ],
      ),
    );
  }
}
