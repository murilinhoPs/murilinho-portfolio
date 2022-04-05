import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/about/about_section_desktop.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/about/about_section_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AboutSectionDesktop(),
      mobile: AboutSectionMobile(),
    );
  }
}
