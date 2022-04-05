import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/about/about_section.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/contact/contact_section.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/home/home_section.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/nav_bar/nav_bar.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/projects_section.dart';

class MainPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 68.0,
          right: 0,
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: HomeSection(),
              ),
              ProjectsSection(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: AboutSection(),
              ),
              SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: ContactSection(),
              ),
              SizedBox(height: 36.0),
            ],
          ),
        ),
        NavBar(),
      ],
    );
  }
}
