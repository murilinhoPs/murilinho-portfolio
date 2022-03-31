import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/helpers.dart';

class SocialIconButtonMobile extends StatelessWidget {
  const SocialIconButtonMobile({
    required this.icon,
    required this.socialLink,
    required this.height,
    this.padding = EdgeInsets.zero,
  });
  final IconData icon;
  final String socialLink;
  final double height;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: IconButton(
        padding: EdgeInsets.zero,
        iconSize: height,
        onPressed: () => launchURL(socialLink),
        hoverColor: primaryColor.withOpacity(0.8),
        splashRadius: 28,
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
