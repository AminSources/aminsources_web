import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/widgets/outline_neon_button.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:aminsources_web/features/main_wrapper_feature/presentation/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Footer extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          //* divider
          Divider(),
          SizedBox(height: 10.h),

          //* title
          LogoWidget(),
          SizedBox(height: 10.h),

          txt(
            "Seamless digital experiences for iOS, Android, web, and desktop—featuring clean code, modern design, and attention to detail.",
            size: 14.sp,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10.h),

          //* social
          Wrap(
            spacing: 10.w,
            runSpacing: 10.h,
            children: List.generate(
              3,
              (index) => OutlineNeonButton(
                width: 40.w,
                height: 40.h,
                iconPath: [
                  "lib/assets/images/github.png",
                  "lib/assets/images/instagram.png",
                  "lib/assets/images/telegram.png",
                ][index],
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(height: 20.h),

          //* quick access title
          txt(
            "Quick Access",
            size: 16.sp,
            fontWeight: FontWeight.bold,
            fontFamily: "space grotesk",
          ),

          //* buttons page
          Wrap(
            spacing: 10.w,
            runSpacing: 10.h,
            children: List.generate(
              4,
              (index) => TextButton(
                onPressed: () {},
                child: txt(
                  ["Home", "About me", "Works", "Contact me"][index],
                  color: cyanColor,
                ),
              ),
            ),
          ),

          Divider(),

          //* copyright
          Center(
            child: txt("© 2026 AminSources. All rights reserved.", size: 12.sp),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
