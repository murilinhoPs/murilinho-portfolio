import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/projects/model/project_model.dart';
import 'package:murilinho_portfolio/route/routes_names.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/widgets/tag_text_widget.dart';

class ProjectCardMobile extends StatelessWidget {
  const ProjectCardMobile({
    Key? key,
    required this.model,
    this.imageHeight,
    this.cardHeight,
    this.imageWidth = 400,
    this.cardWidth = 580,
  }) : super(key: key);
  final ProjectModel model;
  final double cardWidth;
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
        child: new InkWell(
          onTap: () => Navigator.of(context).pushNamed(
            RoutesNames.projectDetails,
            arguments: model.projectObject,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0.0),
            child: Column(
              children: [
                Image.asset(
                  model.imgPath,
                  alignment: Alignment.topCenter,
                  width: imageWidth,
                  height: imageHeight,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 16.0),
                Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 24,
                    letterSpacing: 1.6,
                    color: showDescription ? primaryColor : Colors.white,
                  ),
                ),
                SizedBox(height: 16.0),
                if (showDescription)
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 16.0,
                      top: 12,
                      right: 24.0,
                    ),
                    child: Text(
                      model.description!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
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
