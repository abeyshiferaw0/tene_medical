import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tene_medical/app/config/theme.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBF5F4),
      body: Column(
        children: [
          ///HEADER SEARCH BAR BUTTON
          buildHeaderSearchBar(),

          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 2.w,
                ),
                child: Column(
                  children: [
                    ///
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: SizedBox(),
                        ),
                        Icon(
                          Icons.drive_file_rename_outline_outlined,
                          color: Colors.black45,
                          size: 8.w,
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 1.h,
                    ),

                    ///
                    CircleAvatar(
                      radius: 20.w,
                      backgroundImage: const NetworkImage(
                        "https://t4.ftcdn.net/jpg/01/87/75/15/360_F_187751553_zqvk7lxEWptGE2T8p98zYPgXrcjqiTxY.jpg",
                      ),
                    ),

                    SizedBox(
                      height: 1.5.h,
                    ),

                    ///
                    Text(
                      "Bekele Girma",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    SizedBox(
                      height: 1.h,
                    ),

                    ///
                    Text(
                      "Ethiopia, Addis Ababa",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    SizedBox(
                      height: 8.h,
                    ),

                    ///PROFILE INFO LIST
                    buildProfileItemRow(
                      title: 'Username',
                      value: 'Bekele girma',
                    ),
                    buildProfileItemRow(
                      title: 'Email',
                      value: 'test@gmail.com',
                    ),
                    buildProfileItemRow(
                      title: 'Phone',
                      value: '+251930325400',
                    ),
                    buildProfileItemRow(
                      title: 'Address',
                      value: 'some place, some place',
                    ),

                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProfileItemRow({required String title, required String value}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.8.h),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Text(
                value,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.black26,
          ),
        ],
      ),
    );
  }

  Material buildHeaderSearchBar() {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          color: Colors.white,
          padding:
              EdgeInsets.only(left: 4.w, right: 4.w, bottom: 3.h, top: 1.h),
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
                size: 6.w,
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
                vertical: 5.w,
                horizontal: 2.w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
