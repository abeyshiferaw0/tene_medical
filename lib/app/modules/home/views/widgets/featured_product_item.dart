import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/config/theme.dart';
import 'package:tene_medical/app/modules/home/models/featured_product.dart';

class FeaturedProductItem extends StatelessWidget {
  const FeaturedProductItem(
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
    return Material(
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
                    height: 15.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          featuredProduct.title,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          height: 0.6.h,
                        ),
                        Text(
                          featuredProduct.type,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black45,
                          ),
                        ),
                        SizedBox(
                          height: 1.2.h,
                        ),
                        Row(
                          children: [
                            RatingBar(
                              initialRating: featuredProduct.rating,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 4.w,
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
                              width: 0.5.w,
                            ),
                            Expanded(
                              child: Text(
                                '(${featuredProduct.rattingQuantity}) Rating',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.w,
                        ),
                        Row(
                          children: [
                            Text(
                              '${featuredProduct.priceCut} Birr',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black45,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Text(
                              featuredProduct.pricePercentOff,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 9.sp,
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
                          height: 2.h,
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
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: onAddTap,
                          child: Container(
                            padding: EdgeInsets.all(1.5.w),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  AppTheme.themeColor,
                                  AppTheme.themeColorFaded
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Add".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
