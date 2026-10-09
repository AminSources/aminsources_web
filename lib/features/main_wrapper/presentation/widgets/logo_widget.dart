import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:aminsources_web/features/main_wrapper/presentation/widgets/neon_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //* logo icon
        NeonIcon(imagePath: "lib/assets/images/code.svg"),

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
