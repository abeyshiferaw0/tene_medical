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
        color: Color.fromARGB(255, 152, 230, 226).withOpacity(0.1),
        child: Column(
          children: [
            Container(
                color: Colors.white,
                height: 10.h,
                padding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                child: searchfield()),
            Container(
              height: 15.h,
              width: 100.w,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              // decoration:
              //     BoxDecoration(borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.center,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/map.png',
                      height: 15.h,
                      width: 100.w,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 7.h,
                        width: 85.w,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.location_on,
                                      color: AppTheme.themeColorFaded,
                                    )),
                                SizedBox(
                                  width: 1.w,
                                ),
                                Text(
                                  "pin on the map",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                const Expanded(child: SizedBox()),
                                Container(
                                  decoration: BoxDecoration(
                                      color: AppTheme.themeColorFaded
                                          .withOpacity(0.2),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10))),
                                  padding: const EdgeInsets.all(2),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.chevron_right,
                                        size: 35,
                                        color: AppTheme.themeColorFaded,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nearby",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.near_me),
                      SizedBox(
                        width: 1.h,
                      ),
                      const Text(
                        "Use Current Location",
                        style: TextStyle(),
                      ),
                      const Expanded(child: SizedBox()),
                      Container(
                        width: 20.w,
                        height: 5.h,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: AppTheme.themeColorFaded.withOpacity(0.2),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ))),
                          child: Text(
                            "Enable",
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[500],
                    height: 4.h,
                    thickness: 1,
                    endIndent: 5,
                    indent: 5,
                  ),
                  Text(
                    "Nearby",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ),
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
                      margin: const EdgeInsets.symmetric(vertical: 5),
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
                      Icons.note_alt,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
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
                      margin: const EdgeInsets.symmetric(vertical: 5),
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
                      Icons.note_alt,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
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
                      margin: const EdgeInsets.symmetric(vertical: 5),
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
                      Icons.note_alt,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                ],
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
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
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
