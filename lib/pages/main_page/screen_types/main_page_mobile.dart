import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/main_section_content_builder.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/nav_bar/nav_bar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainPageMobile extends StatelessWidget {
  final ItemScrollController controller;

  const MainPageMobile({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 68.0,
          right: 0,
          child: ScrollablePositionedList.builder(
            itemCount: 5,
            itemScrollController: controller,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) => MainSectionContentBuilder(
                index: index, spacing: index == 3 ? 4 : 28.0),
          ),
        ),
        NavBar(controller: controller),
      ],
    );
  }
}
