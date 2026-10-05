import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/widgets/page_widget.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      height: MediaQuery.sizeOf(context).height * 1.1,
      child: Column(
        children: [
          //* label
          Container(
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

                txt("About me", size: 12.sp, color: cyanColor),
              ],
            ),
          ),
          SizedBox(height: 20.h),

          //* title
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              txt(
                "Clean code, Smooth experience, ",
                size: 20.sp,
                fontFamily: "space grotesk",
                fontWeight: FontWeight.bold,
              ),

              ShaderMask(
                shaderCallback: (bounds) {
                  return primaryGradient.createShader(bounds);
                },
                child: txt(
                  "Universal output",
                  size: 20.sp,
                  fontFamily: "space grotesk",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),

          //* subtitle
          txt(
            "For over 5 years, I have been building products that people use every day.",
            size: 14.sp,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.h),

          //* image
          Image.asset(
            "lib/assets/images/about_object.png",
            width: 200.w,
            height: 200.h,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20.h),

          Row(
            children: [
              txt(
                "Hello I'm ",
                size: 20.sp,
                fontFamily: "space grotesk",
                fontWeight: FontWeight.bold,
              ),

              ShaderMask(
                shaderCallback: (bounds) {
                  return primaryGradient.createShader(bounds);
                },
                child: txt(
                  "Amin!",
                  size: 20.sp,
                  fontFamily: "space grotesk",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),

          txt(
            "A cross-platform developer focused on the Flutter ecosystems. I believe that an excellent product should be consistent, fast, and delightful across all platforms.",
            size: 14.sp,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20.h),

          //* details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              2,
              (index) => Column(
                crossAxisAlignment: .start,
                children: [
                  txt(
                    ["Flutter/Dart", "Python"][index],
                    size: 16.sp,
                    fontFamily: "space grotesk",
                    fontWeight: FontWeight.bold,
                  ),

                  txt(
                    ["Advanced | 5 years", "Biginner | 1 year"][index],
                    size: 12.sp,
                    color: cyanColor,
                    shadows: [Shadow(color: cyanColor, blurRadius: 20.r)],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),

          //* skills
          Wrap(
            spacing: 10.w,
            runSpacing: 10.h,
            children: List.generate(
              4,
              (index) => Container(
                width: 160.w,
                height: 140.h,
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  color: glassLightColor.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(color: borderColor),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //* icon
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: cyanColor.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(color: cyanColor),
                      ),
                      child: Center(
                        child: Icon(
                          [
                            LucideIcons.smartphone,
                            LucideIcons.monitor,
                            LucideIcons.globe_code,
                            LucideIcons.paintbrush_vertical,
                          ][index],
                          color: cyanColor,
                          shadows: [
                            Shadow(
                              color: cyanColor.withValues(alpha: 0.5),
                              blurRadius: 20.r,
                              offset: Offset(-5, -5),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),

                    //* title
                    txt(
                      ["Mobile", "Desktop", "Web", "UI/UX"][index],
                      size: 16.sp,
                      fontFamily: "space grotesk",
                      fontWeight: FontWeight.bold,
                    ),

                    //* subtitle
                    txt(
                      [
                        "Android & ios Applications",
                        "Windows & Linux Desktop Applications",
                        "Web Applications",
                        "Modern, minimalist, and user-friendly interfaces",
                      ][index],
                      size: 12.sp,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
