import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/utils/assets_path.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/helpers.dart';
import 'package:murilinho_portfolio/utils/strings.dart';

class AboutSectionDesktop extends StatelessWidget {
  const AboutSectionDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Strings.aboutTitle,
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.6,
          ),
        ),
        SizedBox(height: 24.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.up,
          children: [
            Image.asset(
              Assets.meImgFull,
              height: 360,
            ),
            SizedBox(
              width: 64,
            ),
            Expanded(
              child: _buildDescription(),
            ),
          ],
        ),
        SizedBox(height: 36.0),
        _buildExperiences(),
        SizedBox(height: 36.0),
        MaterialButton(
          hoverColor: primaryColor.withAlpha(150),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(
              color: primaryColor,
              width: 2.0,
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 20.0,
          ),
          onPressed: () => launchURL(resumeLink),
          child: Text(
            Strings.resume,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Divider(
            color: Colors.grey[600],
            thickness: 1.6,
          ),
        ),
      ],
    );
  }

  Widget _buildDescription() {
    final techs = tools
        .map(
          (tool) => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.arrow_right,
                color: primaryColor,
              ),
              Text(
                tool,
                style: TextStyle(
                  fontSize: 14,
                ),
              )
            ],
          ),
        )
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            Strings.aboutMeDescription,
            softWrap: true,
            textAlign: TextAlign.start,
            style: TextStyle(
              height: 1.4,
              letterSpacing: 1.2,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Divider(
            color: Colors.grey[600],
            thickness: 1.0,
            indent: 0,
            endIndent: 20,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              Strings.techsIWorked,
              style: TextStyle(
                color: primaryColor.withOpacity(0.9),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8.0),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              runSpacing: 8,
              spacing: 8,
              children: techs,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildExperiences() {
    final experiences = experiencesAbout
        .map(
          (exp) => Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4.0,
              horizontal: 12.0,
            ),
            child: Text(
              exp,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              maxLines: 1,
            ),
          ),
        )
        .toList();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          Strings.aboutMeExperience,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: primaryColor.withOpacity(0.9),
          ),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: experiences,
          ),
        ),
      ],
    );
  }
}
