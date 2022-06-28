import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BannerAdWidget extends StatelessWidget {
  const BannerAdWidget({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.w),
      child: Material(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
