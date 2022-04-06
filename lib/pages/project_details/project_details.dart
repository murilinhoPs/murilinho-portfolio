import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/project_details/project_object.dart';

class ProjectDetailsPage extends StatefulWidget {
  const ProjectDetailsPage({
    Key? key,
    this.project,
  }) : super(key: key);
  final ProjectObject? project;

  @override
  State<ProjectDetailsPage> createState() => _ProjectDetailsPageState();
}

class _ProjectDetailsPageState extends State<ProjectDetailsPage> {
  @override
  void initState() {
    super.initState();

    if (widget.project == null) {
      Navigator.of(context).maybePop();
    }
  }

  String? get title => widget.project?.title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Details: $title'),
      ),
    );
  }
}
