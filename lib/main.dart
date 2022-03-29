import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:murilinho_portfolio/app_widget.dart';

void main() {
  runApp(AppWidget());
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: rootBundle.loadString('assets/projects/project1.md'),
        builder: (context, AsyncSnapshot<String?> snapshot) {
          print(snapshot.error);

          if (snapshot.hasData) {
            return Markdown(
              data: snapshot.data!,
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
