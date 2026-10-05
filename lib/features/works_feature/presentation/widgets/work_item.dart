import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          SizedBox(width: double.infinity, height: 150.h),

          //* divider
          Divider(),

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

                    //* show more button
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 5.h,
                      ),
                      decoration: BoxDecoration(
                        color: cyanColor.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: cyanColor),
                      ),
                      child: Image.asset(
                        "lib/assets/images/github.png",
                        width: 30.w,
                        height: 30.h,
                        color: cyanColor,
                      ),
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
