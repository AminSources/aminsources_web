import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/extensions/scroll_extension.dart';
import 'package:aminsources_web/core/keys/navigation_keys.dart';
import 'package:aminsources_web/core/widgets/button_widget.dart';
import 'package:aminsources_web/core/widgets/outline_neon_button.dart';
import 'package:aminsources_web/core/widgets/page_widget.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:aminsources_web/features/home_feature/presentation/widgets/personal_image.dart';
import 'package:aminsources_web/features/home_feature/presentation/widgets/home_details_section.dart';
import 'package:aminsources_web/features/home_feature/presentation/widgets/home_title_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      child: Column(
        crossAxisAlignment: .start,
        children: [
          SizedBox(height: 20.h, key: NavigationKeys.homeKey),

          //* personal image
          PersonalImage(),
          SizedBox(height: 20.h),

          //* title
          HomeTitleSection(),
          SizedBox(height: 20.h),

          //* subtitle
          txt(
            "Seamless digital experiences for iOS, Android, web, and desktop—featuring clean code, modern design, and attention to detail.",
            size: 14.sp,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10.h),

          //* details
          HomeDetailsSection(),
          SizedBox(height: 30.h),

          //* buttons
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              //* View Portfolio
              ButtonWidget(
                width: 150.w,
                height: 50.h,
                onPressed: () {
                  //? scroll page
                  context.scrollToSection(NavigationKeys.worksKey);
                },
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    txt("View Portfolio", color: blackColor, fontWeight: .w600),

                    //* icon
                    Icon(Icons.chevron_right_rounded, color: blackColor),
                  ],
                ),
              ),

              //* contact me button
              SizedBox(
                width: 120.w,
                height: 50.h,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      side: BorderSide(color: borderColor),
                    ),
                  ),
                  onPressed: () {
                    //? scroll page
                    context.scrollToSection(NavigationKeys.contactKey);
                  },
                  child: txt("Contact me"),
                ),
              ),

              //* github button
              OutlineNeonButton(
                iconPath: "lib/assets/images/github.svg",
                onPressed: () {
                  launchUrl(Uri.parse("https://github.com/aminsources"));
                },
              ),
            ],
          ),
          SizedBox(height: 20.h),

          //* swipe to scroll down
          Row(
            mainAxisAlignment: .center,
            children: [
              txt(
                "Swipe to scroll down",
                size: 12.sp,
                color: whiteColor.withValues(alpha: 0.75),
              ),

              //* icon
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: whiteColor.withValues(alpha: 0.75),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
