import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabelWidget extends StatelessWidget {
  final String label;

  const LabelWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 35.h,
      decoration: BoxDecoration(
        color: cyanColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(25.r),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.circle,
            size: 8.sp,
            color: cyanColor,
            shadows: [
              Shadow(color: cyanColor, blurRadius: 20.r),
              Shadow(color: cyanColor, blurRadius: 20.r),
            ],
          ),

          txt(label, size: 12.sp, color: cyanColor),
        ],
      ),
    );
  }
}
