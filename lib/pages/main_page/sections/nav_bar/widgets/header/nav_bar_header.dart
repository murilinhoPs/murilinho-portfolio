import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/constants.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/nav_bar/widgets/header/header_desktop.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/nav_bar/widgets/header/header_mobile.dart';

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
    return Material(
      color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 4,
            left: 8,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: IconButton(
                onPressed: onChangeDevice,
                color: primaryColor,
                icon: Icon(
                  Icons.notes,
                  size: 28,
                ),
              ),
            ),
          ),
          isMobile ? HeaderMobile() : HeaderDesktop(),
        ],
      ),
    );
  }
}
