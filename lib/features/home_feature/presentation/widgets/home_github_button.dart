import 'package:aminsources_web/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeGithubButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: borderColor),
        boxShadow: [
          BoxShadow(
            color: cyanColor.withValues(alpha: 0.45),
            blurRadius: 20.r,
            spreadRadius: 1.r,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Image.asset(
            "lib/assets/images/github.png",
            width: 30.w,
            height: 30.h,
            fit: BoxFit.cover,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
