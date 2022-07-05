import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../config/theme.dart';
import '../../near_by/views/widgets/map_product_item.dart';
import '../controllers/search_nearby_controller.dart';

class SearchNearbyView extends GetView<SearchNearbyController> {
  const SearchNearbyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        leadingWidth: 10,
        title: Container(
            color: Colors.white,
            height: 10.h,
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            child: searchfield()),
        actions: [
          CircleAvatar(
              radius: 18,
              backgroundColor: const Color(0xffEBF5F4),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined,
                      size: 20, color: Color(0xff129797))))
        ],
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(255, 152, 230, 226).withOpacity(0.1),
        child: Column(
          children: [
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
                                      Icons.location_on_outlined,
                                      color: AppTheme.themeColorFaded,
                                    )),
                                SizedBox(
                                  width: 1.w,
                                ),
                                Text(
                                  "See on the map",
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
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                physics: const PageScrollPhysics(),
                itemBuilder: (context, index) {
                  return const MapProductItem();
                },
              ),
            ),
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
            labelStyle: TextStyle(color: Colors.grey[400], fontSize: 10.sp),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppTheme.themeColor),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppTheme.themeColor, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            // labelText: "Search Near by Pharmacy/Hospital",
            hintStyle: TextStyle(color: Colors.grey[400], fontSize: 10.sp),
            hintText: "Search Near by Pharmacy/Hospital",
          ),
        ));
  }
}
