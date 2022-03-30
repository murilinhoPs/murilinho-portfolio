import 'package:flutter/cupertino.dart';
import 'package:murilinho_portfolio/pages/main_page/main_page.dart';
import 'package:murilinho_portfolio/pages/project_details/project_details.dart';
import 'package:murilinho_portfolio/pages/project_details/project_object.dart';
import 'package:murilinho_portfolio/route/routes_names.dart';

class AppRouter {
  static Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.home:
        return CupertinoPageRoute(
          settings: settings,
          builder: (context) => MainPage(),
        );
      case RoutesNames.projectDetails:
        final projectObject = settings.arguments as ProjectObject;

        return CupertinoPageRoute(
          settings: settings,
          builder: (context) => ProjectDetailsPage(
            project: projectObject,
          ),
        );
      default:
        return CupertinoPageRoute(
          settings: settings,
          builder: (context) => MainPage(),
        );
    }
  }
}
