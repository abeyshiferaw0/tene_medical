import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tene_medical/app/config/theme.dart';
import 'package:sizer/sizer.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
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
            'Cart',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Get.off(context);
                },
                icon: const Icon(
                  Icons.favorite_border_sharp,
                  size: 25,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {
                  Get.off(context);
                },
                icon: const Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.black,
                )),
          ],
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: AppTheme.themeColorFaded.withOpacity(0.1),
            child: Column(
              children: [
                const CartViewComponent(),
                const CartViewComponent(),
                const CartViewComponent(),
                const CartViewComponent(),
                const CartViewComponent(),
                Container(
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
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      "Trending Near You",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: AppTheme.themeColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.5.h,
                ),
              ],
            ),
          ),
        ));
  }
}

class CartViewComponent extends StatelessWidget {
  const CartViewComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 3),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://media.istockphoto.com/photos/falling-antibiotics-healthcare-background-picture-id1300036753?k=20&m=1300036753&s=612x612&w=0&h=dlbqUqv7hXHw01H1CCycVV8ZhdsNpl_3iehkKasCi3E=",
                height: 15.h,
                width: 30.w,
                fit: BoxFit.contain,
              ),
              SizedBox(
                width: 2.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50.w,
                    child: Text(
                      "Ansell Micro-Touch N30 Nitrites Latex-Free Disposable Gloves Latex-Free",
                      style: TextStyle(
                          fontSize: 13.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Box of 30 gloves",
                    style: TextStyle(fontSize: 11.sp, color: Colors.grey[400]),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.trash, color: Colors.grey[600]))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30.w,
                    child: Row(
                      children: [
                        Text(
                          "300 Birr",
                          style: TextStyle(
                              fontSize: 11.sp,
                              color: Colors.grey[400],
                              decoration: TextDecoration.lineThrough),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "10% OFF",
                          style: TextStyle(
                              fontSize: 11.sp, color: AppTheme.themeColor),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "350 Birr",
                    style:
                        TextStyle(fontSize: 14.sp, color: AppTheme.themeColor),
                  ),
                ],
              ),
              const CartQuantity(),
            ],
          )
        ],
      ),
    );
  }
}

class CartQuantity extends StatefulWidget {
  const CartQuantity({
    Key? key,
  }) : super(key: key);

  @override
  State<CartQuantity> createState() => _CartQuantityState();
}

class _CartQuantityState extends State<CartQuantity> {
  int cartnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 15.w,
          height: 7.h,
          child: IconButton(
              onPressed: () {
                setState(() {
                  cartnumber--;
                });
              },
              icon: const Icon(
                Icons.remove,
                color: Colors.grey,
                size: 35,
              )),
          decoration: BoxDecoration(
              color: AppTheme.themeColorFaded.withOpacity(0.1),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
        ),
        Container(
          width: 15.w,
          height: 7.h,
          decoration: BoxDecoration(
            color: AppTheme.themeColorFaded.withOpacity(0.1),
          ),
          child: Center(
            child: Text(
              cartnumber.toString(),
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppTheme.themeColor,
              ),
            ),
          ),
        ),
        Container(
          width: 15.w,
          height: 7.h,
          decoration: const BoxDecoration(
              color: AppTheme.themeColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: IconButton(
              onPressed: () {
                setState(() {
                  cartnumber++;
                });
              },
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 35,
              )),
        )
      ],
    );
  }
}
