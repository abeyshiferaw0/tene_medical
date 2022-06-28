import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/modules/home/models/health_blog.dart';

class HealthBlogItem extends StatelessWidget {
  const HealthBlogItem(
      {Key? key, required this.healthBlog, required this.onTap})
      : super(key: key);

  final HealthBlog healthBlog;
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    healthBlog.imgUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 1.2.h,
              ),
              Text(
                healthBlog.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                healthBlog.description,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 9.sp,
                  color: Colors.black45,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
