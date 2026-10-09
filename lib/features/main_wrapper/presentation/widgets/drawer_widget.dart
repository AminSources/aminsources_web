import 'dart:ui';

import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/constants/strings.dart';
import 'package:aminsources_web/core/extensions/scroll_extension.dart';
import 'package:aminsources_web/core/keys/navigation_keys.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:aminsources_web/features/main_wrapper/presentation/widgets/logo_widget.dart';
import 'package:aminsources_web/features/main_wrapper/presentation/widgets/neon_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: 200.w,
          height: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor.withValues(alpha: 0.2),
            border: Border(
              right: BorderSide(color: borderColor, width: 0.5.w),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              bottom: 20.w,
              top: 40.h,
            ),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                //* logo
                LogoWidget(),
                SizedBox(height: 40.h),

                //* quick access title
                Row(
                  spacing: 10.w,
                  children: [
                    txt(
                      "Quick Access",
                      size: 12.sp,
                      fontFamily: "space grotesk",
                      color: whiteColor.withValues(alpha: 0.75),
                    ),

                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 1.h,
                        decoration: BoxDecoration(
                          color: whiteColor.withValues(alpha: 0.75),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),

                //* quick access buttons
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: index == 0 ? 0 : 20.h),
                      child: InkWell(
                        onTap: () {
                          //? scroll page
                          context.scrollToSection(
                            [
                              NavigationKeys.homeKey,
                              NavigationKeys.aboutKey,
                              NavigationKeys.worksKey,
                              NavigationKeys.contactKey,
                            ][index],
                          );

                          //? close drawer
                          Navigator.pop(context);
                        },
                        child: ShaderMask(
                          shaderCallback: (bounds) =>
                              primaryGradient.createShader(bounds),
                          child: Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              txt(
                                ["Home", "About", "Works", "Contact"][index],
                                size: 20.sp,
                                // fontFamily: "space grotesk",
                                fontWeight: FontWeight.bold,
                              ),

                              NeonIcon(
                                imagePath: [
                                  "lib/assets/images/house.svg",
                                  "lib/assets/images/user-round.svg",
                                  "lib/assets/images/briefcase-business.svg",
                                  "lib/assets/images/headset.svg",
                                ][index],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 40.h),

                //* quick contact title
                Row(
                  spacing: 10.w,
                  children: [
                    txt(
                      "Quick Contact",
                      size: 12.sp,
                      fontFamily: "space grotesk",
                      color: whiteColor.withValues(alpha: 0.75),
                    ),

                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 1.h,
                        decoration: BoxDecoration(
                          color: whiteColor.withValues(alpha: 0.75),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),

                //* quick contact buttons
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: index == 0 ? 0 : 20.h),
                      child: InkWell(
                        onTap: () {
                          launchUrl(Uri.parse(socialUrl[index]));
                        },
                        child: ShaderMask(
                          shaderCallback: (bounds) =>
                              primaryGradient.createShader(bounds),
                          child: Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              txt(
                                [
                                  "Email",
                                  "Telegram",
                                  "Instagram",
                                  "Github",
                                ][index],
                                size: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),

                              NeonIcon(
                                imagePath: [
                                  "lib/assets/images/mail.svg",
                                  "lib/assets/images/telegram.svg",
                                  "lib/assets/images/instagram.svg",
                                  "lib/assets/images/github.svg",
                                ][index],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),

                Spacer(),

                txt("AminSources\nMade with 🩵"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
