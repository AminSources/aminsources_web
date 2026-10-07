import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTitleSection extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        txt(
          'Developer',
          size: 30.sp,
          fontFamily: "space grotesk",

          fontWeight: FontWeight.bold,
        ),

        ShaderMask(
          shaderCallback: (bounds) {
            return primaryGradient.createShader(bounds);
          },
          child: txt(
            'Cross-Platform',
            size: 30.sp,
            fontFamily: "space grotesk",

            fontWeight: FontWeight.bold,
          ),
        ),

        txt(
          'Digital Experience',
          size: 30.sp,
          fontFamily: "space grotesk",
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
