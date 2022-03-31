import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/nav_bar/widgets/header/animated_header.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/strings.dart';

class NavBarHeader extends StatelessWidget {
  const NavBarHeader({
    Key? key,
    required this.isMobile,
    this.onChangeDevice,
  }) : super(key: key);
  final bool isMobile;
  final VoidCallback? onChangeDevice;

  @override
  Widget build(BuildContext context) {
    final animation = NavigationRail.extendedAnimation(context);

    return Material(
      color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: animation,
            builder: (context, Widget? child) {
              print(animation.value);

              return Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: lerpDouble(navBarHeaderHeightMobile,
                          navBarHeaderHeightDesktop, animation.value)!,
                      width: navBarDesktopMinWidth,
                    ),
                  ),
                  AnimatedHeader(
                    myName: isMobile
                        ? Strings.nameNavBarMobile
                        : Strings.nameNavBar,
                    topSpacing: lerpDouble(52, 32, animation.value)!,
                    avatarRadius: lerpDouble(24, 48, animation.value)!,
                    nameFontSize: lerpDouble(12, 24, animation.value)!,
                    roleScale: animation.value,
                  ),
                ],
              );
            },
          ),
          Positioned(
            top: 4,
            left: 8,
            child: IconButton(
              onPressed: onChangeDevice,
              color: primaryColor,
              icon: Icon(
                Icons.notes,
                size: 28,
              ),
              splashRadius: 24,
            ),
          ),
        ],
      ),
    );
  }
}
