import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/widgets/outline_neon_button.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkItem extends StatelessWidget {
  final String workName;
  final String description;
  final List<String> usedTechnologies;
  final String githubUrl;
  final String imagePath;

  const WorkItem({
    super.key,
    required this.workName,
    required this.description,
    required this.usedTechnologies,
    required this.githubUrl,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: blackColor,
            blurRadius: 10.r,
            spreadRadius: 1.r,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          //* image placeholder
          Container(
            width: double.infinity,
            height: 150.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.r),
                topRight: Radius.circular(15.r),
              ),
            ),
          ),

          //* divider
          Container(
            width: double.infinity,
            height: 1.h,
            color: const Color(0x67666666),
          ),

          //* work details
          Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                //* work name
                txt(
                  workName,
                  size: 20.sp,
                  fontFamily: "space grotesk",
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 10.h),

                //* description
                txt(description, color: whiteColor.withValues(alpha: 0.7)),
                SizedBox(height: 20.h),

                //* used technologies
                Row(
                  spacing: 20.w,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: .end,
                  children: [
                    Expanded(
                      child: Wrap(
                        spacing: 5.w,
                        runSpacing: 5.h,
                        children: List.generate(
                          usedTechnologies.length,
                          (index) => Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 5.h,
                            ),
                            decoration: BoxDecoration(
                              color: cyanColor.withValues(alpha: 0.3),
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: cyanColor),
                            ),
                            child: txt(
                              usedTechnologies[index],
                              color: cyanColor,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //* show github button
                    OutlineNeonButton(
                      iconPath: "lib/assets/images/github.svg",
                      onPressed: () {
                        //? launch github url
                        launchUrl(Uri.parse(githubUrl));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
