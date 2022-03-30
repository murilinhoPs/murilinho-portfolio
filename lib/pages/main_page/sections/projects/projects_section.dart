import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/constants.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/projects_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: scecondaryBg,
      child: ScreenTypeLayout(
        desktop: ProjectsDesktop(),
        mobile: ProjectsDesktop(),
      ),
    );
  }
}
