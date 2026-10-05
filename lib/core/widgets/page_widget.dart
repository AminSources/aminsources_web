import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageWidget extends StatelessWidget {
  final Widget child;
  final double? height;
  final bool? isScrollable;

  const PageWidget({
    super.key,
    required this.child,
    this.height,
    this.isScrollable,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        width: double.infinity,
        height: isScrollable == true
            ? null
            : height ?? MediaQuery.sizeOf(context).height * 0.9,
        child: child,
      ),
    );
  }
}
