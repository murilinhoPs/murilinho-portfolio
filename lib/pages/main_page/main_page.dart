import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/screen_types/main_page_desktop.dart';
import 'package:murilinho_portfolio/pages/main_page/screen_types/main_page_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainPage extends StatelessWidget {
  final controller = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: MainPageDesktop(controller: controller),
        mobile: MainPageMobile(controller: controller),
      ),
    );
  }
}
