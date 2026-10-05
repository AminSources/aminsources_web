import 'package:aminsources_web/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalImage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 220.w,
        height: 270.h,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: blackColor,
              blurRadius: 10.r,
              spreadRadius: 1.r,
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: Center(
          child: Container(
            width: 200.w,
            height: 250.h,
            decoration: BoxDecoration(
              border: Border.all(color: borderColor),
              borderRadius: BorderRadius.circular(10.r),
              image: const DecorationImage(
                image: AssetImage("lib/assets/images/amin.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
