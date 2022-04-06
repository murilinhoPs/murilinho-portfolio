import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/utils/assets_path.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/helpers.dart';
import 'package:murilinho_portfolio/utils/strings.dart';

class AboutSectionMobile extends StatelessWidget {
  const AboutSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Strings.aboutTitle,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.6,
          ),
        ),
        SizedBox(height: 20.0),
        Image.asset(
          Assets.meImgFull,
          height: 320,
        ),
        SizedBox(
          height: 32,
        ),
        _buildDescription(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Divider(
            color: Colors.grey[600],
            thickness: 1.6,
          ),
        ),
        _buildExperiences(),
        SizedBox(height: 24.0),
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
            horizontal: 46.0,
            vertical: 24.0,
          ),
          onPressed: () => launchURL(resumeLink),
          child: Text(
            Strings.resume,
            style: TextStyle(
              fontSize: 16,
            ),
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
                  fontSize: 12,
                ),
              )
            ],
          ),
        )
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Text(
            Strings.aboutMeDescription,
            softWrap: true,
            textAlign: TextAlign.start,
            style: TextStyle(
              height: 1.4,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Divider(
            color: Colors.grey[600],
            thickness: 1.6,
            indent: 24,
            endIndent: 24,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.techsIWorked,
              style: TextStyle(
                color: primaryColor.withOpacity(0.9),
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
            ),
            child: Text(
              '$exp,',
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              maxLines: 1,
            ),
          ),
        )
        .toList();

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      alignment: WrapAlignment.start,
      runSpacing: 12,
      spacing: 12,
      children: [
        Text(
          Strings.aboutMeExperience,
          style: TextStyle(
            fontSize: 16,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: experiences,
          ),
        ),
      ],
    );
  }
}
