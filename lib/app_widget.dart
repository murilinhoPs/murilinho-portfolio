import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/route/router.dart';
import 'package:murilinho_portfolio/route/routes_names.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Murilinho´s Portfolio',
      theme: ThemeData(
        primaryColor: primaryColor,
        primarySwatch: Colors.teal,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesNames.home,
      onGenerateRoute: AppRouter.generateRoutes,
    );
  }
}
