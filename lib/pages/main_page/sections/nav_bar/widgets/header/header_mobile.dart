import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/assets_path.dart';
import 'package:murilinho_portfolio/strings.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    Key? key,
    this.onMenuTap,
  }) : super(key: key);
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 52.0),
        const CircleAvatar(
          backgroundColor: Colors.grey,
          foregroundImage: AssetImage(Assets.meCartoon),
          minRadius: 24,
        ),
        const SizedBox(
          height: 12.0,
        ),
        const Text(
          Strings.nameNavBar,
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
