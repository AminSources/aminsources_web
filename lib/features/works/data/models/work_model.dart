import 'package:aminsources_web/features/works/domain/entities/work_entity.dart';

class WorkModel extends WorkEntity {
  const new({
    required super.name,
    required super.description,
    required super.category,
    required super.usedTechnologies,
    required super.githubUrl,
    required super.imageUrl,
  });

  factory WorkModel.fromJson(Map<String, dynamic> json) {
    return WorkModel(
      name: json['name'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      usedTechnologies: List<String>.from(json['used_technologies'] as List),
      githubUrl: json["github_url"] as String,
      imageUrl: json["image_url"] as String,
    );
  }
}
