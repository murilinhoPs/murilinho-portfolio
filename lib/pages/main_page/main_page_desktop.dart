import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/home/home_section.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/nav_bar/nav_bar.dart';

class MainPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        NavBar(),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            children: [
              SizedBox(height: 20.0),
              HomeSection(),
            ],
          ),
        ),
      ],
    );
  }
}
