import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/main_section_content_builder.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/nav_bar/nav_bar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainPageDesktop extends StatelessWidget {
  final ItemScrollController controller;
  final ItemPositionsListener scrollListener;

  const MainPageDesktop({
    Key? key,
    required this.controller,
    required this.scrollListener,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        NavBar(
          controller: controller,
          scrollListener: scrollListener,
        ),
        Expanded(
          child: ScrollablePositionedList.builder(
            itemCount: 5,
            itemScrollController: controller,
            itemPositionsListener: scrollListener,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) =>
                MainSectionContentBuilder(index: index, spacing: 28.0),
          ),
        ),
      ],
    );
  }
}
