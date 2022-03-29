import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/assets_path.dart';
import 'package:murilinho_portfolio/strings.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                Strings.homeSubtitle,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.6,
                ),
              ),
            ),
            Container(
              child: Image.asset(
                Assets.meCartoon,
                height: 160,
              ),
            )
          ],
        )
      ],
    );
  }
}
