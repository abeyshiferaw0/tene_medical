import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';

class Recentreview extends StatelessWidget {
  const Recentreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Abebe Lema",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black87,
            ),
          ),
          SizedBox(
            height: 2.w,
          ),
          RatingBar(
            initialRating: 4.1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 7.w,
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
            height: 2.w,
          ),
          Text(
            "Product quality matches the advertisement",
            style: TextStyle(fontSize: 11.sp, color: Colors.grey[800]),
          ),
          SizedBox(
            height: 1.w,
          ),
          Text(
            "10 june 2021",
            style: TextStyle(fontSize: 11.sp, color: Colors.grey[500]),
          ),
          SizedBox(
            height: 2.w,
          ),
          Divider(
            color: Colors.grey[500],
            height: 2.h,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
