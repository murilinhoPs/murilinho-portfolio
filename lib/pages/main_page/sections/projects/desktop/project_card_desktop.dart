import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/model/project_model.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/helpers.dart';
import 'package:murilinho_portfolio/widgets/tag_text_widget.dart';

class ProjectCardDesktop extends StatelessWidget {
  const ProjectCardDesktop({
    Key? key,
    required this.model,
    required this.fontSize,
    this.imageHeight,
    this.cardHeight,
    this.cardWidth,
    this.imageWidth = 400,
  }) : super(key: key);
  final ProjectModel model;
  final double fontSize;
  final double? cardWidth;
  final double? cardHeight;
  final double imageWidth;
  final double? imageHeight;

  bool get showDescription => model.description != null;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      child: Card(
        elevation: 4.0,
        color: scecondaryBg,
        child: InkWell(
          onTap: () => launchURL(model.link),
          // onTap: () => Navigator.of(context).pushNamed(
          //   RoutesNames.projectDetails,
          //   arguments: model.projectObject,
          // ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0.0),
            child: Column(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage(model.imgPath),
                    alignment: Alignment.topCenter,
                    width: imageWidth,
                    height: imageHeight,
                    fit: BoxFit.contain,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }

                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 28,
                    letterSpacing: 1.6,
                    color: primaryColor,
                  ),
                ),
                SizedBox(height: 16.0),
                if (showDescription)
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 4.0,
                      right: 24.0,
                      left: 12.0,
                    ),
                    child: Text(
                      model.description!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: fontSize,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                SizedBox(height: 32.0),
                TagTextWidget(
                  text: model.techs,
                  backgroundColor: greyBg,
                ),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
