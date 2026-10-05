import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/keys/navigation_keys.dart';
import 'package:aminsources_web/core/widgets/label_widget.dart';
import 'package:aminsources_web/core/widgets/page_widget.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:aminsources_web/features/works_feature/presentation/widgets/works_categories_widget.dart';
import 'package:aminsources_web/features/works_feature/presentation/widgets/works_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorksPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      isScrollable: true,
      child: Column(
        children: [
          SizedBox(height: 40.h, key: NavigationKeys.worksKey),

          //* label
          LabelWidget(label: "Works"),
          SizedBox(height: 20.h),

          //* title
          Row(
            mainAxisAlignment: .center,
            children: [
              ShaderMask(
                shaderCallback: (bounds) =>
                    primaryGradient.createShader(bounds),
                child: txt(
                  "Selected ",
                  size: 30.sp,
                  fontFamily: "space grotesk",
                  fontWeight: FontWeight.bold,
                ),
              ),

              txt(
                "Projects",
                size: 30.sp,
                fontFamily: "space grotesk",
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(height: 10.h),

          //* subtitle
          txt(
            "Each project is built with one goal: a seamless experience across all devices.",
            size: 14.sp,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.h),

          //* categories
          WorksCategoriesWidget(),

          //* works list
          WorksList(),
        ],
      ),
    );
  }
}
