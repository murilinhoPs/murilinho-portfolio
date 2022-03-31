import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/helpers.dart';

class SocialIconButtonDesktop extends StatefulWidget {
  const SocialIconButtonDesktop({
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
  State<SocialIconButtonDesktop> createState() =>
      _SocialIconButtonDesktopState();
}

class _SocialIconButtonDesktopState extends State<SocialIconButtonDesktop> {
  Color iconColor = Colors.white;

  void onHover(pointer) => setState(() => iconColor = primaryColor);
  void onExitMouse(pointer) => setState(() => iconColor = Colors.white);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: onHover,
      onExit: onExitMouse,
      cursor: MaterialStateMouseCursor.clickable,
      child: Padding(
        padding: widget.padding,
        child: GestureDetector(
          onTap: () => launchURL(widget.socialLink),
          child: Icon(
            widget.icon,
            size: widget.height,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
