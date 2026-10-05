import 'dart:ui';

import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 35.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            width: double.infinity,
            height: 50.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(color: borderColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //* logo
                Row(
                  children: [
                    //* logo icon
                    Icon(
                      LucideIcons.code,
                      color: cyanColor,
                      size: 20.sp,
                      shadows: [
                        BoxShadow(
                          color: cyanColor,
                          blurRadius: 30.r,
                          spreadRadius: 1.r,
                        ),
                        BoxShadow(
                          color: cyanColor,
                          blurRadius: 30.r,
                          spreadRadius: 1.r,
                        ),
                      ],
                    ),

                    SizedBox(width: 10.w),

                    //* logo txt
                    txt(
                      "AminSources",
                      size: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: whiteColor,
                    ),
                  ],
                ),

                //* menu icon
                InkWell(onTap: () {}, child: Icon(LucideIcons.menu)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
