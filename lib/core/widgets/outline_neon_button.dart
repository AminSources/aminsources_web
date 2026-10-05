import 'package:aminsources_web/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OutlineNeonButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String iconPath;
  final VoidCallback onPressed;

  const OutlineNeonButton({
    super.key,
    this.width,
    this.height,
    required this.iconPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 50.w,
      height: height ?? 50.h,
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
        onTap: onPressed,
        child: Center(
          child: SvgPicture.asset(
            iconPath,
            width: (width ?? 50.w) - 25.w,
            height: (height ?? 50.h) - 25.h,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(cyanColor, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
