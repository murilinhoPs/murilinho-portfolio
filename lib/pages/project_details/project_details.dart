import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/project_details/project_object.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({
    Key? key,
    required this.project,
  }) : super(key: key);
  final ProjectObject project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details: ${project.title}'),
      ),
    );
  }
}
