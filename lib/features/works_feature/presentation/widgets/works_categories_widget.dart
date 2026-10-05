import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:aminsources_web/features/works_feature/presentation/cubit/works_categoies_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorksCategoriesWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WorksCategoiesCubit(),
      child: BlocBuilder<WorksCategoiesCubit, int>(
        builder: (context, state) {
          return Wrap(
            spacing: 10.w,
            runSpacing: 10.h,
            children: List.generate(4, (index) {
              final isSelected = state == index;

              return Material(
                type: MaterialType.transparency,
                borderRadius: BorderRadius.circular(15.r),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: isSelected ? primaryGradient : null,
                    color: isSelected
                        ? cyanColor
                        : glassLightColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(color: borderColor),
                  ),
                  child: InkWell(
                    onTap: () {
                      //? change category
                      context.read<WorksCategoiesCubit>().changeCategory(index);
                    },
                    borderRadius: BorderRadius.circular(15.r),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 10.h,
                      ),
                      child: txt(
                        ["All", "Mobile", "Desktop", "Web"][index],
                        color: isSelected ? blackColor : whiteColor,
                      ),
                    ),
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
