import 'package:aminsources_web/core/widgets/txt.dart';
import 'package:aminsources_web/features/works/presentation/bloc/work_bloc.dart';
import 'package:aminsources_web/features/works/presentation/widgets/work_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorksList extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkBloc, WorkState>(
      builder: (context, state) {
        if (state is WorkLoaded) {
          return CircularProgressIndicator();
        }
        if (state is WorkError) {
          return txt(state.message);
        }
        if (state is WorkLoaded) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.data.length,
            itemBuilder: (context, index) {
              return WorkItem(
                workName: ["Hamsafar App", "Portfolio Web"][index],
                description: [
                  "A trip coordination and management application for small group trips",
                  "An responsive personal web with neon-blur effects and modern UI/UX design",
                ][index],
                usedTechnologies: [
                  ["Mobile", "Flutter", "Dart", "Supabase"],
                  ["Web", "Flutter", "Dart"],
                ][index],
                githubUrl: "",
                imagePath: "",
              );
            },
          );
        }

        return SizedBox.shrink();
      },
    );
  }
}
