import 'dart:ui';

import 'package:aminsources_web/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NeonIcon extends StatelessWidget {
  final String imagePath;

  const NeonIcon({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: CircleAvatar(radius: 8.r, backgroundColor: cyanColor),
        ),

        SvgPicture.asset(
          imagePath,
          width: 18.w,
          height: 18.h,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(cyanColor, BlendMode.srcIn),
        ),
      ],
    );
  }
}
