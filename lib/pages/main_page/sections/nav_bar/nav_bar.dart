import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/nav_bar/widgets/header/nav_bar_header.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/nav_bar/widgets/social_links.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/strings.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  bool _isMobile = false;

  void setExtended({bool? isMobile}) =>
      setState(() => _isMobile = isMobile ?? !_isMobile);

  void checkDeviceScreen() => setState(
        () => MediaQuery.of(context).size.width < 960
            ? _isMobile = true
            : _isMobile = false,
      );

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) => checkDeviceScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              top: 1,
              bottom: 1,
              child: Container(
                color: Color(0xff181818),
                height: double.infinity,
                width: navBarDesktopMinWidth,
              ),
            ),
            Positioned(
              top: 1,
              child: Container(
                height: 100,
                width: navBarDesktopMinWidth,
                child: Material(
                  color: Colors.black,
                ),
              ),
            ),
            NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              extended: !_isMobile,
              backgroundColor: Colors.transparent,
              minExtendedWidth: navBarDesktopMinWidth,
              labelType: NavigationRailLabelType.none,
              leading: SafeArea(
                child: NavBarHeader(
                  isMobile: _isMobile,
                  onChangeDevice: () => setExtended(),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SocialLinks(
                  isMobile: _isMobile,
                ),
              ),
              groupAlignment: -1,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: Text(Strings.homeNavBar),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.work_outline),
                  selectedIcon: Icon(Icons.work),
                  label: Text(Strings.projectsNavBar),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.person_outlined),
                  selectedIcon: Icon(Icons.person),
                  label: Text(Strings.aboutNavBar),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.contact_page_outlined),
                  selectedIcon: Icon(Icons.contact_page),
                  label: Text(Strings.contactNavBar),
                ),
              ],
            ),
          ],
        ),
        VerticalDivider(thickness: 1, width: 1),
      ],
    );
  }
}
