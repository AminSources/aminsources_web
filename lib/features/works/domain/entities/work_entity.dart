import 'package:equatable/equatable.dart';

class WorkEntity extends Equatable {
  final String name;
  final String description;
  final String category;
  final List<String> usedTechnologies;
  final String githubUrl;
  final String imageUrl;

  const WorkEntity({
    required this.name,
    required this.description,
    required this.category,
    required this.usedTechnologies,
    required this.githubUrl,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
    name,
    description,
    category,
    usedTechnologies,
    githubUrl,
    imageUrl,
  ];
}
