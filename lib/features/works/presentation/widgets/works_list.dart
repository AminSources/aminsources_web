import 'package:aminsources_web/core/constants/colors.dart';
import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:aminsources_web/features/works/presentation/bloc/work_bloc.dart';
import 'package:aminsources_web/features/works/presentation/cubit/work_category.dart';
import 'package:aminsources_web/features/works/presentation/cubit/works_categories_cubit.dart';
import 'package:aminsources_web/features/works/presentation/widgets/work_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorksList extends StatefulWidget {
  const new({super.key});

  @override
  State<WorksList> createState() => _WorksListState();
}

class _WorksListState extends State<WorksList> {
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkBloc, WorkState>(
      builder: (context, state) {
        if (state is WorkLoading) {
          return CircularProgressIndicator();
        }
        if (state is WorkError) {
          return txt(state.message);
        }
        if (state is WorkSuccess) {
          final selectedCategory = context.watch<WorksCategoriesCubit>().state;

          final filteredWorks = selectedCategory == WorkCategory.all
              ? state.data
              : state.data
                    .where((work) => work.category == selectedCategory.name)
                    .toList();

          final visibleWorks = showMore
              ? filteredWorks
              : filteredWorks.take(3).toList();

          if (filteredWorks.isEmpty) {
            return SizedBox(
              height: 100.h,
              child: Center(
                child: txt(
                  "Sorry, there are no projects for this platform yet.",
                  color: cyanColor,
                ),
              ),
            );
          }

          return Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: visibleWorks.length,
                itemBuilder: (context, index) {
                  final work = visibleWorks[index];

                  return WorkItem(
                    workName: work.name,
                    description: work.description,
                    usedTechnologies: work.usedTechnologies,
                    githubUrl: work.githubUrl,
                    imagePath: work.imageUrl,
                  );
                },
              ),

              if (filteredWorks.length > 3)
                TextButton(
                  onPressed: () {
                    setState(() {
                      showMore = !showMore;
                    });
                  },
                  child: Text(showMore ? "Show Less" : "Show More"),
                ),
            ],
          );
        }

        return SizedBox.shrink();
      },
    );
  }
}
