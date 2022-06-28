import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/config/theme.dart';
import 'package:tene_medical/app/modules/home/models/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.category, required this.onTap})
      : super(key: key);

  final Category category;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 2.w,
          ),
          width: 10.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppTheme.themeColorFaded,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      category.imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              ConstrainedBox(
                constraints: BoxConstraints.expand(
                  height: 5.h,
                ),
                child: Text(
                  category.categoryName,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
