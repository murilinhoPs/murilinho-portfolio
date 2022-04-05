import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/main_page_desktop.dart';
import 'package:murilinho_portfolio/pages/main_page/main_page_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        breakpoints: ScreenBreakpoints(
          desktop: 800,
          tablet: 620,
          watch: 200,
        ),
        desktop: MainPageDesktop(),
        mobile: MainPageMobile(),
      ),
    );
  }
}
