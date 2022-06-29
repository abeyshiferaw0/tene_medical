import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/config/theme.dart';

class MapProductItem extends StatelessWidget {
  const MapProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.h,
      margin: EdgeInsets.only(
        left: 4.w,
        top: 4.w,
        bottom: 4.w,
      ),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        elevation: 3,
        child: Row(
          children: [
            Expanded(
              child: Image.network(
                "https://saspharmacies.com/wp-content/uploads/2021/03/149x60-2.png",
              ),
              flex: 4,
            ),
            SizedBox(
              width: 1.5.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Text(
                    "SAS Pharmacies",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "SAS Pharmacy is new branded pharmacy in Addis Ababa. Out of respect for our customers and followers, we transformed the logo to its original primary colors we transformed the logo to its original primary colors",
                    textAlign: TextAlign.start,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "4.8",
                        textAlign: TextAlign.start,
                        maxLines: 3,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 1.h,
                      ),
                      RatingBar(
                        initialRating: 4,
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
                      const Expanded(
                        child: SizedBox(),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                AppTheme.themeColor,
                                AppTheme.themeColorFaded
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0.2.w, horizontal: 0.3.w),
                            child: Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Colors.white,
                              size: 8.w,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1.5.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                ],
              ),
              flex: 6,
            )
          ],
        ),
      ),
    );
  }
}
