import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/widgets/label_widget.dart';
import 'package:aminsources_web/core/widgets/page_widget.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      height: MediaQuery.sizeOf(context).height * 0.85,
      child: Column(
        children: [
          SizedBox(height: 40.h),

          //* label
          LabelWidget(label: "Contact me"),
          SizedBox(height: 20.h),

          //* title
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              txt(
                "Let's have a ",
                size: 30.sp,
                fontFamily: "space grotesk",
                fontWeight: FontWeight.bold,
              ),

              ShaderMask(
                shaderCallback: (bounds) =>
                    primaryGradient.createShader(bounds),
                child: txt(
                  "conversation",
                  size: 30.sp,
                  fontFamily: "space grotesk",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),

          //* subtitle
          txt(
            "Have an idea in mind? Let’s bring it to life; I usually respond in less than 24 hours.",
            textAlign: TextAlign.center,
            size: 14.sp,
          ),
          SizedBox(height: 20.h),

          //* contact methods
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) => Container(
              width: double.infinity,
              padding: EdgeInsets.all(15.w),
              margin: EdgeInsets.only(bottom: 10.h),
              decoration: BoxDecoration(
                color: glassLightColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(color: borderColor),
              ),
              child: Row(
                spacing: 15.w,
                children: [
                  //* icon
                  Container(
                    width: 50.w,
                    height: 50.h,
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      color: cyanColor.withValues(alpha: 0.05),
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(color: cyanColor),
                      boxShadow: [
                        BoxShadow(
                          color: cyanColor.withValues(alpha: 0.3),
                          blurRadius: 20.r,
                          spreadRadius: 1.r,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Image.asset(
                        "lib/assets/images/${["gmail", "telegram", "instagram", "github"][index]}.png",
                        color: cyanColor,
                      ),
                    ),
                  ),

                  //* details
                  Column(
                    spacing: 5.h,
                    crossAxisAlignment: .start,
                    children: [
                      //* title
                      txt(
                        ["Email", "Telegram", "Instagram", "Githum"][index],
                        size: 16.sp,
                        fontWeight: .bold,
                      ),
                      txt(
                        [
                          "helloamin.com@gmail.com",
                          "@m_amin_farshbaf",
                          "@m_amin_farshbaf",
                          "Aminsources",
                        ][index],
                        size: 14.sp,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
