import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageWidget extends StatelessWidget {
  final Widget child;
  final double? height;

  const PageWidget({super.key, required this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        width: double.infinity,
        height: height ?? MediaQuery.sizeOf(context).height * 0.9,
        child: child,
      ),
    );
  }
}
