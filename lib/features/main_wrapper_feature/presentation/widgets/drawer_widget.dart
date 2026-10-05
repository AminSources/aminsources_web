import 'dart:ui';

import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/constants/strings.dart';
import 'package:aminsources_web/core/extensions/scroll_extension.dart';
import 'package:aminsources_web/core/keys/navigation_keys.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:aminsources_web/features/main_wrapper_feature/presentation/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

                              Icon(
                                [
                                  LucideIcons.house,
                                  LucideIcons.user_round,
                                  LucideIcons.briefcase,
                                  LucideIcons.phone_call,
                                ][index],
                                size: 18.sp,
                                shadows: [
                                  BoxShadow(
                                    color: cyanColor,
                                    blurRadius: 30.r,
                                    spreadRadius: 1.r,
                                  ),
                                  BoxShadow(
                                    color: cyanColor,
                                    blurRadius: 30.r,
                                    spreadRadius: 1.r,
                                  ),
                                ],
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

                              Stack(
                                children: [
                                  ImageFiltered(
                                    imageFilter: ImageFilter.blur(
                                      sigmaX: 10,
                                      sigmaY: 10,
                                    ),
                                    child: CircleAvatar(
                                      radius: 8.r,
                                      backgroundColor: cyanColor,
                                    ),
                                  ),

                                  SvgPicture.asset(
                                    [
                                      "lib/assets/images/mail.svg",
                                      "lib/assets/images/telegram.svg",
                                      "lib/assets/images/instagram.svg",
                                      "lib/assets/images/github.svg",
                                    ][index],
                                    width: 18.w,
                                    height: 18.h,
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                      cyanColor,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ],
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
