import 'dart:ui';

import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/features/about_feature/presentation/pages/about_page.dart';
import 'package:aminsources_web/features/home_feature/presentation/pages/home_page.dart';
import 'package:aminsources_web/features/main_wrapper_feature/presentation/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainWrapper extends StatelessWidget {
  const MainWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            //* glow
            Positioned(
              left: 110.w,
              child: CircleAvatar(
                radius: 130.r,
                backgroundColor: glowCyanColor,
              ),
            ),

            //* glow
            Align(
              alignment: Alignment.bottomLeft,
              child: CircleAvatar(
                radius: 80.r,
                backgroundColor: glowCyanLightColor,
              ),
            ),

            //* blur layer
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 300, sigmaY: 300),
                child: const SizedBox.expand(),
              ),
            ),

            //* widgets layer
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.only(top: 85.h), // حفظ فاصله از اپ‌بار
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(), // بهبود تجربه کاربری
                  child: Column(
                    children: [
                      HomePage(),
                      AboutPage(),
                      SizedBox(
                        height: 50.h,
                      ), // فضای خالی در انتها برای دیده شدن کامل آخرین آیتم
                    ],
                  ),
                ),
              ),
            ),

            //* app bar layer
            AppBarWidget(),
          ],
        ),
      ),
    );
  }
}
