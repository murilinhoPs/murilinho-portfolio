import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/nav_bar/nav_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavBar(),
          Expanded(
            child: Center(
              child: Text('Main'),
            ),
          ),
        ],
      ),
    );
  }
}
