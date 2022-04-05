import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/about/about_section.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/contact/contact_section.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/home/home_section.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/nav_bar/nav_bar.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/projects_section.dart';

class MainPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        NavBar(),
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: HomeSection(),
              ),
              ProjectsSection(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: AboutSection(),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: ContactSection(),
              ),
              SizedBox(height: 36.0),
            ],
          ),
        ),
      ],
    );
  }
}
