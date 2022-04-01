import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/custom_icons.dart';
import 'package:murilinho_portfolio/utils/helpers.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key,
    required this.isMobile,
  }) : super(key: key);
  final bool isMobile;

  double get iconSize => isMobile ? 14.0 : 16.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Theme.of(context).dividerColor,
          ),
        ),
      ),
      child: Wrap(
        spacing: 4,
        runSpacing: 12,
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          IconButton(
            onPressed: () => launchURL(linkedinLink),
            icon: Icon(
              CustomIcons.linkedin,
              size: iconSize,
              color: Colors.white60,
            ),
          ),
          IconButton(
            onPressed: () => launchURL(githubLink),
            icon: Icon(
              CustomIcons.github,
              size: iconSize,
              color: Colors.white60,
            ),
          ),
          IconButton(
            onPressed: () => launchURL('mailto:$emailLink?subject=Contact'),
            icon: Icon(
              Icons.mail_outline,
              size: iconSize,
              color: Colors.white60,
            ),
          ),
        ],
      ),
    );
  }
}
