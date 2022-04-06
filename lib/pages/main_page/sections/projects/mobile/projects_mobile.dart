import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/model/project_model.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/mobile/project_card_mobile.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/projects_navigation.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/strings.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({Key? key}) : super(key: key);

  @override
  _ProjectsMobileState createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  final crossFadeDuration = Duration(milliseconds: 840);
  int currentIndexPage = 0;

  bool get showAllProjects => currentIndexPage == 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, top: 12.0),
      child: Column(
        children: [
          Text(
            Strings.projectsSubtitle,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.6,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 64),
              child: ProjectsNavigation(
                selectedFontSize: 16,
                unselectedFontSize: 14,
                currentIndex: (index) => setState(
                  () {
                    currentIndexPage = index;
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: AnimatedCrossFade(
              crossFadeState: showAllProjects
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: crossFadeDuration,
              firstCurve: Curves.easeInCubic,
              secondCurve: Curves.decelerate,
              firstChild: _buildRecentProjects(),
              secondChild: _buildAllProjects(),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRecentProjects() {
    return Column(
      children: List.generate(
        projectsTitles.length ~/ 2,
        (i) => ProjectCardMobile(
          imageWidth: 460,
          model: ProjectModel(
            imgPath: projectsBanner[i],
            title: projectsTitles[i],
            link: projectsLinks[i],
            techs: projectsTechs[i],
            description: Strings.projectsDescription[i],
            projectMarkdown: projectsMarkdown[i],
          ),
        ),
      ),
    );
  }

  Widget _buildAllProjects() {
    return Column(
      children: List.generate(
        projectsTitles.length,
        (i) => ProjectCardMobile(
          cardWidth: 400,
          imageHeight: 160,
          model: ProjectModel(
            imgPath: projectsBanner[i],
            title: projectsTitles[i],
            link: projectsLinks[i],
            techs: projectsTechs[i],
            projectMarkdown: projectsMarkdown[i],
          ),
        ),
      ),
    );
  }
}
