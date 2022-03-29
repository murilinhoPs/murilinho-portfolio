import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/assets_path.dart';
import 'package:murilinho_portfolio/strings.dart';

class HeaderDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 32.0),
        const CircleAvatar(
          backgroundColor: Colors.grey,
          foregroundImage: AssetImage(Assets.meCartoon),
          minRadius: 48,
        ),
        const SizedBox(
          height: 12.0,
        ),
        const Text(
          Strings.nameNavBar,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        const Text(
          'Game and Mobile dev',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
      ],
    );
  }
}
