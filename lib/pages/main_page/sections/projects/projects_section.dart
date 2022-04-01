import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/mobile/projects_mobile.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/desktop/projects_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: ScreenTypeLayout(
        desktop: ProjectsDesktop(),
        mobile: ProjectsMobile(),
      ),
    );
  }
}
