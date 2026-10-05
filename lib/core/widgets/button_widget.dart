import 'package:aminsources_web/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final VoidCallback onPressed;
  final Widget child;

  const ButtonWidget({
    super.key,
    this.width,
    this.height,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(15.r);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
            color: cyanColor.withValues(alpha: 0.45),
            blurRadius: 20.r,
            spreadRadius: 1.r,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: borderRadius,
        child: Ink(
          decoration: BoxDecoration(
            color: cyanColor,
            gradient: primaryGradient,
            borderRadius: borderRadius,
          ),
          child: InkWell(
            borderRadius: borderRadius,
            onTap: onPressed,
            child: child,
          ),
        ),
      ),
    );
  }
}
