import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/config/theme.dart';
import 'package:tene_medical/app/modules/home/models/featured_product.dart';

class SimilarProductcard extends StatelessWidget {
  const SimilarProductcard(
      {Key? key,
      required this.featuredProduct,
      required this.onTap,
      required this.onAddTap,
      required this.useDarkBackground,
      required this.isForGridView})
      : super(key: key);

  final FeaturedProduct featuredProduct;
  final VoidCallback onTap;
  final VoidCallback onAddTap;
  final bool useDarkBackground;
  final bool isForGridView;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      child: Material(
        color: useDarkBackground ? const Color(0xff04312B) : null,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.only(
              left: 1.5.w,
              right: 1.5.w,
              top: 1.h,
              bottom: 1.h,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    color: AppTheme.themeColorFaded.withOpacity(0.2),
                    blurRadius: 6,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Column(
                  children: [
                    Image.network(
                      featuredProduct.imgUrl,
                      height: 18.8.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Duphalac Oral Solution Lemon",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(
                            height: 1.0.h,
                          ),
                          Text(
                            "450 ml in 1 bottle",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              Text(
                                '${featuredProduct.priceCut} Birr',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black45,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                featuredProduct.pricePercentOff,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppTheme.themeColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    isForGridView
                        ? const Expanded(
                            child: SizedBox(),
                          )
                        : SizedBox(
                            height: 1.h,
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              '${featuredProduct.price} Birr',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.themeColor,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: CircleAvatar(
                          radius: 23,
                          backgroundColor: AppTheme.themeColor,
                          child: Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  size: 28,
                                  color: Colors.white,
                                )),
                          ),
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
