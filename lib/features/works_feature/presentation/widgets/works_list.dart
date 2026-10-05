import 'package:aminsources_web/features/works_feature/presentation/widgets/work_item.dart';
import 'package:flutter/material.dart';

class WorksList extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
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
}
