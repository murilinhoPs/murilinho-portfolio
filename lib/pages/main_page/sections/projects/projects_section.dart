import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/projects_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: scecondaryBg,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: ScreenTypeLayout(
        desktop: ProjectsDesktop(),
        mobile: ProjectsDesktop(),
      ),
    );
  }
}
