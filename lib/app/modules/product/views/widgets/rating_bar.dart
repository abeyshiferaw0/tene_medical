import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class Ratingprogress extends StatelessWidget {
  const Ratingprogress(
      {Key? key,
      required this.percent,
      required this.percentcolor,
      required this.nostarts,
      required this.percentage})
      : super(key: key);
  final double percent;
  final Color percentcolor;
  final String nostarts, percentage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            nostarts,
            style: TextStyle(fontSize: 10.sp, color: Colors.grey[500]),
          ),
          LinearPercentIndicator(
            barRadius: const Radius.circular(4),
            width: 75.w,
            lineHeight: 14.0,
            percent: percent,
            backgroundColor: Colors.grey,
            progressColor: percentcolor,
          ),
          Text(
            percentage,
            style: TextStyle(fontSize: 10.sp, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }
}
