import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/home/home_section.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/nav_bar/nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
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
      ),
    );
  }
}
