import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/home/home_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: HomeDesktop(),
      mobile: HomeDesktop(),
    );
  }
}
