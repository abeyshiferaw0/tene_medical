import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/config/theme.dart';
import 'package:tene_medical/app/modules/home/views/widgets/banner_ad_widget.dart';
import 'package:tene_medical/app/modules/home/views/widgets/carousel_slider.dart';
import 'package:tene_medical/app/modules/home/views/widgets/category_item.dart';
import 'package:tene_medical/app/modules/home/views/widgets/featured_product_item.dart';
import 'package:tene_medical/app/modules/home/views/widgets/main_category_item.dart';

import '../controllers/home_controller.dart';
import 'widgets/health_blog_item.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBF5F4),
      body: Column(
        children: [
          ///TOP HEADER SEARCH BAR
          buildHeaderSearchBar(),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 1.5.h,
                  ),

                  ///INITIAL CAROUSEL BANNER
                  buildBannerCarousel(),

                  SizedBox(
                    height: 1.5.h,
                  ),

                  ///BUILD MAIN CATEGORIES
                  buildMainCategories(),

                  SizedBox(
                    height: 1.5.h,
                  ),

                  ///BUILD CATEGORIES
                  buildCategoriesGrid(),

                  SizedBox(
                    height: 1.5.h,
                  ),

                  ///BUILD CATEGORIES
                  buildFeaturedProducts(),

                  SizedBox(
                    height: 1.5.h,
                  ),

                  ///SECOND LARGER CAROUSEL BANNER
                  buildSecondBannerCarousel(),

                  SizedBox(
                    height: 1.5.h,
                  ),

                  ///TRENDING NEAR YOU PRODUCTS LIST
                  buildTrendingNearYouProducts(),

                  SizedBox(
                    height: 1.5.h,
                  ),

                  ///NEW ARRIVAL PRODUCTS LIST
                  buildNewArrivalProducts(),

                  SizedBox(
                    height: 1.5.h,
                  ),

                  ///THIRD CAROUSEL BANNER
                  buildBannerCarousel(),

                  SizedBox(
                    height: 1.5.h,
                  ),

                  ///HEALTH BLOG ITEMS LIST
                  buildHealthBlogs(),

                  SizedBox(
                    height: 1.5.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildFeaturedProducts() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 3.w,
        bottom: 4.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 4.w,
              ),
              Text(
                "Featured Products",
                style: TextStyle(
                  fontSize: 16.sp,
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
          GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.symmetric(
              horizontal: 2.w,
            ),
            childAspectRatio: 0.63,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(
              controller.categories.length,
              (index) {
                return FeaturedProductItem(
                  featuredProduct: controller.featuredProductsList.elementAt(
                    index,
                  ),
                  useDarkBackground: false,
                  isForGridView: true,
                  onTap: () {},
                  onAddTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container buildTrendingNearYouProducts() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 3.w,
        bottom: 4.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 4.w,
              ),
              Text(
                "Trending Near You",
                style: TextStyle(
                  fontSize: 16.sp,
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                controller.featuredProductsList.length,
                (index) => Container(
                  width: 42.w,
                  margin: EdgeInsets.only(
                    left: index == 0 ? 3.w : 0,
                  ),
                  child: FeaturedProductItem(
                    featuredProduct: controller.featuredProductsList.elementAt(
                      index,
                    ),
                    useDarkBackground: false,
                    isForGridView: false,
                    onTap: () {},
                    onAddTap: () {},
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildNewArrivalProducts() {
    return Container(
      color: const Color(0xff04312B),
      height: 47.h,
      padding: EdgeInsets.only(
        top: 3.w,
        bottom: 4.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 4.w,
              ),
              Text(
                "New Arrival",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
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
          Expanded(
            child: ListView.builder(
              itemCount: controller.featuredProductsList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  width: 42.w,
                  margin: EdgeInsets.only(
                    left: index == 0 ? 3.w : 0,
                  ),
                  child: FeaturedProductItem(
                    featuredProduct: controller.featuredProductsList.elementAt(
                      index,
                    ),
                    useDarkBackground: true,
                    isForGridView: false,
                    onTap: () {},
                    onAddTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container buildCategoriesGrid() {
    return Container(
      color: Colors.white,
      height: 44.h,
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 3.w,
        bottom: 4.w,
        right: 4.w,
        left: 4.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Category",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: List.generate(
                controller.categories.length,
                (index) {
                  return CategoryItem(
                    category: controller.categories.elementAt(
                      index,
                    ),
                    onTap: () {},
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildMainCategories() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        top: 6.w,
        bottom: 6.w,
        right: 4.w,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            controller.mainCategories.length,
            (index) => MainCategoryItem(
              mainCategory: controller.mainCategories.elementAt(index),
              onTap: () {},
            ),
          ),
        ),
      ),
      // child: ListView.builder(
      //   scrollDirection: Axis.horizontal,
      //   itemCount: controller.mainCategories.length,
      //   itemBuilder: (context, index) {
      //     return MainCategoryItem(
      //       mainCategory: controller.mainCategories.elementAt(index),
      //       onTap: () {},
      //     );
      //   },
      // ),
    );
  }

  Container buildHeaderSearchBar() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 3.h, top: 1.h),
      child: TextField(
        style: TextStyle(
          color: Colors.black87,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.none,
        ),
        decoration: InputDecoration(
          hintText: "Search for medicines/healthcare products",
          hintStyle: TextStyle(
            color: const Color(0xff757A80),
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
          alignLabelWithHint: true,
          prefixIcon: Icon(
            Icons.search,
            size: 5.w,
            color: Colors.black45,
          ),
          fillColor: Colors.white,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: AppTheme.themeColor.withOpacity(0.4),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
            borderSide: BorderSide(
              color: AppTheme.themeColor,
            ),
          ),
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            vertical: 4.w,
            horizontal: 2.w,
          ),
        ),
      ),
    );
  }

  Container buildBannerCarousel() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        top: 4.w,
        bottom: 3.w,
        right: 4.w,
      ),
      child: CarouselSlider(
        height: 20.h,
        scrollDuration: const Duration(seconds: 2),
        children: List<Widget>.generate(
          controller.smallBannerAds.length,
          (i) => BannerAdWidget(
            imageUrl: controller.smallBannerAds.elementAt(i).imgUrl,
          ),
        ),
      ),
    );
  }

  Container buildSecondBannerCarousel() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        top: 4.w,
        bottom: 3.w,
        right: 4.w,
      ),
      child: CarouselSlider(
        height: 30.h,
        scrollDuration: const Duration(seconds: 2),
        children: List<Widget>.generate(
          controller.smallBannerAds.length,
          (i) => BannerAdWidget(
            imageUrl: controller.smallBannerAds.elementAt(i).imgUrl,
          ),
        ),
      ),
    );
  }

  Container buildHealthBlogs() {
    return Container(
      color: Colors.white,
      height: 34.h,
      padding: EdgeInsets.only(
        top: 3.w,
        bottom: 4.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 4.w,
              ),
              Text(
                "Health Blogs",
                style: TextStyle(
                  fontSize: 16.sp,
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
            height: 1.w,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: controller.healthBlogs.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  width: 65.w,
                  margin: EdgeInsets.only(
                    left: index == 0 ? 3.w : 0,
                  ),
                  child: HealthBlogItem(
                    healthBlog: controller.healthBlogs.elementAt(
                      index,
                    ),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
