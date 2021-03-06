import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/strings.dart';

class ProjectsNavigation extends StatefulWidget {
  const ProjectsNavigation({
    Key? key,
    required this.currentIndex,
    required this.selectedFontSize,
    required this.unselectedFontSize,
  }) : super(key: key);
  final Function(int) currentIndex;
  final double selectedFontSize;
  final double unselectedFontSize;

  @override
  State<ProjectsNavigation> createState() => _ProjectsNavigationState();
}

class _ProjectsNavigationState extends State<ProjectsNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BottomNavigationBar(
          iconSize: 0.0,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          selectedLabelStyle: TextStyle(
            decoration: TextDecoration.underline,
            decorationThickness: 2.4,
            decorationColor: primaryColor,
          ),
          selectedFontSize: widget.selectedFontSize, //20.0,
          unselectedFontSize: widget.unselectedFontSize, //16.0,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox(),
              label: Strings.recentsProjectsNav,
              tooltip: '',
              backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
              icon: SizedBox(),
              label: Strings.allProjectsNav,
              tooltip: '',
              backgroundColor: Colors.transparent,
            ),
          ],
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          onTap: (index) {
            setState(() => _currentIndex = index);
            widget.currentIndex(index);
          },
        ),
      ],
    );
  }
}
