import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/about/about_section.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/contact/contact_section.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/home/home_section.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/projects_section.dart';
import 'package:murilinho_portfolio/widgets/made_with_flutter.dart';

class MainSectionContentBuilder extends StatelessWidget {
  final int index;
  final double spacing;
  const MainSectionContentBuilder({
    Key? key,
    required this.index,
    required this.spacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: spacing),
        child: HomeSection(),
      );
    }
    if (index == 1) {
      return ProjectsSection();
    }
    if (index == 2) {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: spacing),
            child: AboutSection(),
          ),
          SizedBox(height: 32),
        ],
      );
    }
    if (index == 3) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: spacing),
        child: ContactSection(),
      );
    }

    return Column(
      children: [
        SizedBox(height: 28.0),
        MadeWithFlutter(),
      ],
    );
  }
}
