import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

/// Portfolio project synchronized with the Django REST Framework API.
@JsonSerializable(fieldRename: FieldRename.snake)
class Project {
  const Project({
    required this.title,
    required this.description,
    required this.techStack,
    required this.projectURL,
    this.projectImageURL = '',
    this.id,
  });

  factory Project.fromJson(Map<String, dynamic> json)=>_$ProjectFromJson(json);

  @JsonKey(includeToJson: false)
  final String? id;
  final String title;
  final String description;
  final String techStack;
  final String projectURL;
  @JsonKey(defaultValue:'')
  final String projectImageURL;

  factory Project.toJson(Map<String, dynamic> json) => __$ProjectToJson(json);
}