import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //* logo icon
        Icon(
          LucideIcons.code,
          color: cyanColor,
          size: 20.sp,
          shadows: [
            BoxShadow(color: cyanColor, blurRadius: 30.r, spreadRadius: 1.r),
            BoxShadow(color: cyanColor, blurRadius: 30.r, spreadRadius: 1.r),
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
    );
  }
}
