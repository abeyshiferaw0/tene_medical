import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/modules/home/models/main_category.dart';

class MainCategoryItem extends StatelessWidget {
  const MainCategoryItem(
      {Key? key, required this.mainCategory, required this.onTap})
      : super(key: key);

  final MainCategory mainCategory;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(left: 4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  mainCategory.imgUrl,
                  width: 25.w,
                  height: 25.w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Text(
                mainCategory.title,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
