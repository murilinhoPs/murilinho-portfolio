import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/home/home_section.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/nav_bar/nav_bar.dart';

class MainPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: width * 0.16,
          right: 0,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            shrinkWrap: true,
            children: [
              SizedBox(height: 20.0),
              HomeSection(),
            ],
          ),
        ),
        NavBar(),
      ],
    );
  }
}
