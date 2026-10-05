import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDetailsSection extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        ((index) => Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              //* value
              Row(
                children: [
                  //* value
                  txt(["1", "5", "2"][index], size: 16.sp, fontWeight: .bold),

                  //* icon
                  Icon(
                    Icons.add_rounded,
                    size: 16.sp,
                    color: cyanColor,
                    shadows: [
                      Shadow(color: cyanColor, blurRadius: 30.r),
                      Shadow(color: cyanColor, blurRadius: 30.r),
                      Shadow(color: cyanColor, blurRadius: 30.r),
                    ],
                  ),
                ],
              ),

              //* label
              txt(["Customers", "Experience", "Work"][index]),
            ],
          ),
        )),
      ),
    );
  }
}
