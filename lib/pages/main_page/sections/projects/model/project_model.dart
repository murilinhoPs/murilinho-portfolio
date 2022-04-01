import 'package:murilinho_portfolio/pages/project_details/project_object.dart';

class ProjectModel {
  ProjectModel({
    required this.imgPath,
    required this.title,
    required this.link,
    required this.projectMarkdown,
    required this.techs,
    this.description,
  }) : projectObject = ProjectObject(
          title: title,
          projectMdPath: projectMarkdown,
        );
  final String imgPath;
  final String title;
  final String link;
  final String projectMarkdown;
  final String techs;
  final ProjectObject projectObject;
  final String? description;
}
