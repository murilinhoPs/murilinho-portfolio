import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/model/project_model.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/desktop/project_card_desktop.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/projects_navigation.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/strings.dart';

class ProjectsDesktop extends StatefulWidget {
  const ProjectsDesktop({Key? key}) : super(key: key);

  @override
  _ProjectsDesktopState createState() => _ProjectsDesktopState();
}

class _ProjectsDesktopState extends State<ProjectsDesktop> {
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
              fontSize: 32,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.6,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 64),
              child: ProjectsNavigation(
                selectedFontSize: 20,
                unselectedFontSize: 16,
                currentIndex: (index) => setState(
                  () {
                    currentIndexPage = index;
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 32.0),
            child: AnimatedCrossFade(
              crossFadeState: showAllProjects
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: crossFadeDuration,
              sizeCurve: Curves.bounceOut,
              firstCurve: Curves.bounceIn,
              secondCurve: Curves.bounceInOut,
              firstChild: _buildRecentProjects(),
              secondChild: _buildAllProjects(),
              layoutBuilder:
                  (topChild, topChildKey, bottomChild, bottomChildKey) {
                return Stack(
                  fit: StackFit.loose,
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      key: bottomChildKey,
                      top: 0,
                      child: bottomChild,
                    ),
                    Positioned(
                      key: topChildKey,
                      child: topChild,
                    ),
                  ],
                );
              },
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
        (i) => ProjectCardDesktop(
          imageHeight: 320,
          imageWidth: 520,
          cardWidth: 860,
          cardHeight: 540,
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
    final width = MediaQuery.of(context).size.width;

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 600,
        maxWidth: width,
      ),
      child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          itemCount: projectsTitles.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: width < 1336 ? 2 : 3,
            crossAxisSpacing: 24.0,
            mainAxisSpacing: 12.0,
          ),
          itemBuilder: (BuildContext context, int i) {
            return ProjectCardDesktop(
              imageHeight: 280,
              imageWidth: 460,
              model: ProjectModel(
                imgPath: projectsBanner[i],
                title: projectsTitles[i],
                link: projectsLinks[i],
                techs: projectsTechs[i],
                description: Strings.projectsDescription[i],
                projectMarkdown: projectsMarkdown[i],
              ),
            );
          }),
    );
  }
}
