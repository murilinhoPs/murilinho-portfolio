import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/projects_navigation.dart';
import 'package:murilinho_portfolio/utils/assets_path.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/strings.dart';

class ProjectsDesktop extends StatelessWidget {
  const ProjectsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentIndexPage = 0;

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
                currentIndex: (index) => currentIndexPage = index,
              ),
            ),
          ),
          Column(
            children: [
              _buildProjectCard(),
              _buildProjectCard(),
              SizedBox(
                height: 32,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProjectCard() {
    return Container(
      width: 580,
      child: Card(
        child: new InkWell(
          onTap: () {
            print("navigate to: ${projectsTitles[1]}");
          },
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0.0),
                child: Image.asset(
                  Assets.brackeysJam,
                  width: 400,
                ),
              ),
              Text(
                projectsTitles[1],
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1.2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 28.0,
                ),
                child: Text(
                  Strings.projectsDescription[1],
                  softWrap: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
