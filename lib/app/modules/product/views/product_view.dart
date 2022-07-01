import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:tene_medical/app/config/theme.dart';
import 'package:tene_medical/app/modules/product/views/widgets/similar_product_card.dart';

import '../../../routes/app_pages.dart';
import '../../home/views/widgets/banner_ad_widget.dart';
import '../../home/views/widgets/carousel_slider.dart';
import '../../home/views/widgets/featured_product_item.dart';
import '../controllers/product_controller.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class ProductView extends GetView<ProductController> {
  ProductView({Key? key}) : super(key: key);
  String selectedpackedsize = "";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppTheme.themeColorFaded.withOpacity(0.2),
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  buildBannerCarousel(),
                  SizedBox(
                    height: 2.h,
                  ),
                  similarproductslider(),
                  SizedBox(
                    height: 2.h,
                  ),
                  frequentlybought()
                ]),
                buildAppBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildAppBar() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
                      icon: const Icon(Icons.chevron_left,
                          size: 20, color: Color(0xff129797)))),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                          icon: const Icon(Icons.share,
                              size: 20, color: Color(0xff129797)))),
                ),
                SizedBox(
                  width: 3.w,
                ),
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
              ],
            )
          ]),
    );
  }

  Container bulletpoint() {
    return Container(
      margin: EdgeInsets.only(
          top: 1.5.h.toDouble(), bottom: 1.5.h.toDouble(), left: 1.5.w),
      height: 1.5.h,
      width: 1.5.w,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }

  Container buildBannerCarousel() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          CarouselSlider(
            height: 30.h,
            scrollDuration: const Duration(seconds: 2),
            children: List<Widget>.generate(
              controller.smallBannerAds.length,
              (i) => Container(
                margin: EdgeInsets.only(right: 10.w),
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 15.w),
                child: BannerAdWidget(
                  imageUrl: controller.smallBannerAds.elementAt(i).imgUrl,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.featuredProductsList[0].title.toString(),
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  controller.featuredProductsList[0].type.toString(),
                  style: TextStyle(fontSize: 11.sp, color: Colors.grey[400]),
                ),
                RatingBar(
                  initialRating:
                      controller.featuredProductsList[0].rating!.toDouble(),
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 6.w,
                  ratingWidget: RatingWidget(
                      full: Icon(
                        Icons.star_rounded,
                        color: Colors.orange.shade800,
                      ),
                      half: Icon(
                        Icons.star_half_rounded,
                        color: Colors.orange.shade800,
                      ),
                      empty: Icon(
                        Icons.star_outline_rounded,
                        color: Colors.orange.shade800,
                      )),
                  onRatingUpdate: (value) {},
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Text(
                      controller.featuredProductsList[0].priceCut.toString(),
                      style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.grey[400],
                          decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      controller.featuredProductsList[0].pricePercentOff
                          .toString(),
                      style: TextStyle(
                          fontSize: 13.sp, color: AppTheme.themeColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deliverd By",
                          style: TextStyle(
                              fontSize: 13.sp, color: Colors.grey[400]),
                        ),
                        Text(
                          controller.featuredProductsList[0].deliverytime
                              .toString(),
                          style:
                              TextStyle(fontSize: 13.sp, color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Go to Store",
                          style: TextStyle(
                              color: AppTheme.themeColor,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          height: 32.sp,
                          width: 32.sp,
                          decoration: const BoxDecoration(
                              color: AppTheme.themeColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.route_outlined,
                                color: Colors.white,
                              )),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Text(
                      controller.featuredProductsList[0].returntype.toString(),
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.grey[400],
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Read More",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: AppTheme.themeColor,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                Container(
                  height: 7.3.h,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: FormBuilderDropdown(
                    name: 'departureplace',
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppTheme.themeColor),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    ),
                    allowClear: false,
                    focusColor: AppTheme.themeColor,
                    onChanged: (String? newValue) {
                      selectedpackedsize = newValue!;
                    },
                    icon: Row(
                      children: [
                        Text("Variant",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: AppTheme.themeColor,
                            )),
                        SizedBox(
                          width: 2.w,
                        ),
                        const Icon(Icons.expand_more),
                      ],
                    ),
                    items: controller.featuredProductsList[0].packsize!
                        .map((goal) => DropdownMenuItem(
                              value: goal,
                              child: Text(goal),
                            ))
                        .toList(),
                  ),
                ),
                Text(
                  controller.featuredProductsList[0].prodectdetailtitile
                      .toString(),
                  style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  controller.featuredProductsList[0].prodectdetail.toString(),
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Uses :",
                  style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  controller.featuredProductsList[0].uses.toString(),
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Product Specifications and Features :",
                  style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 1.h,
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.featuredProductsList[0]
                        .productspecificationandfeatures!.length,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return Row(
                        children: [
                          bulletpoint(),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            controller.featuredProductsList[0]
                                .productspecificationandfeatures![index]
                                .toString(),
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[600]),
                          ),
                        ],
                      );
                    })),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Direction For Use:",
                  style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  controller.featuredProductsList[0].directinforuse.toString(),
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Safety information:",
                  style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 1.h,
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller
                        .featuredProductsList[0].saftyinformation!.length,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return Row(
                        children: [
                          bulletpoint(),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            controller.featuredProductsList[0]
                                .saftyinformation![index]
                                .toString(),
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[600]),
                          ),
                        ],
                      );
                    })),
                SizedBox(
                  height: 1.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container similarproductslider() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 4.w,
              ),
              Text(
                "Similar Products",
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
          Container(
            height: 40.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.featuredProductsListt.length,
                itemBuilder: ((context, index) {
                  // return SizedBox();
                  return SimilarProductcard(
                    featuredProduct: controller.featuredProductsListt[index],
                    useDarkBackground: false,
                    isForGridView: true,
                    onTap: () {
                      Get.toNamed(Routes.PRODUCT);
                    },
                    onAddTap: () {},
                  );
                })),
          ),
        ],
      ),
    );
  }

  Widget frequentlybought() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 4.w,
              ),
              Text(
                "Frequently Bought Together",
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
          Container(
            height: 40.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.featuredProductsListt.length,
                itemBuilder: ((context, index) {
                  // return SizedBox();
                  return FeaturedProductItem(
                    featuredProduct: controller.featuredProductsListt[index],
                    useDarkBackground: false,
                    isForGridView: true,
                    onTap: () {
                      Get.toNamed(Routes.PRODUCT);
                    },
                    onAddTap: () {},
                  );
                })),
          ),
        ],
      ),
    );
  }
}
