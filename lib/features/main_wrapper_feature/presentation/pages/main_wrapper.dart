import 'dart:ui';

import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/features/about_feature/presentation/pages/about_page.dart';
import 'package:aminsources_web/features/contact_feature/presentation/pages/contact_page.dart';
import 'package:aminsources_web/features/home_feature/presentation/pages/home_page.dart';
import 'package:aminsources_web/features/main_wrapper_feature/presentation/pages/footer.dart';
import 'package:aminsources_web/features/main_wrapper_feature/presentation/widgets/app_bar_widget.dart';
import 'package:aminsources_web/features/main_wrapper_feature/presentation/widgets/drawer_widget.dart';
import 'package:aminsources_web/features/works_feature/presentation/pages/works_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),

      body: SizedBox.expand(
        child: Stack(
          children: [
            //* glow
            Positioned(
              left: 110.w,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
                child: CircleAvatar(
                  radius: 130.r,
                  backgroundColor: glowCyanColor,
                ),
              ),
            ),

            //* glow
            Align(
              alignment: Alignment.bottomLeft,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
                child: CircleAvatar(
                  radius: 130.r,
                  backgroundColor: glowCyanLightColor,
                ),
              ),
            ),

            //* widgets layer
            SingleChildScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 85.h),
                  HomePage(),
                  AboutPage(),
                  WorksPage(),
                  ContactPage(),
                  SizedBox(height: 20.h),
                  Footer(),
                ],
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
